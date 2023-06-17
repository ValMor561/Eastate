#include <iostream>
#include <conio.h>
#include <stdlib.h>
#include <mysql.h>
#include<stdio.h>

MYSQL mydesc;

 // Выход из программы с выводом сообщения об ошибке.
 void exiterr() {
	 // Вывод сообщения об ошибке.
		 fprintf(stderr, "%s\n", mysql_error(&mydesc));
	 // Выход из программы с кодом ошибки '1'.
		 system("pause");
	 exit(1);
	
}
 // Запрос к серверу и вывод всех данных запроса.
 void output_query_result(const char* query) {
	 unsigned int i = 0;
	 unsigned int j = 0;
	 // Отправить запрос на сервер.
		 if (mysql_query(&mydesc, query))
		 exiterr();
	 MYSQL_RES * res; // Результат запроса.
	 // Получить сведения о результатах запроса.
		 if (!(res = mysql_store_result(&mydesc)))
		 exiterr();
	 if (mysql_num_rows(res)) {
		 MYSQL_FIELD* fields; //Поля результата запроса.
		 unsigned int num_fields; //Количество полей результата 
		
		 // Получить сведения о полях результата запроса.
		 num_fields = mysql_num_fields(res);
		 // Выделить память для результатов расчёта ширины столбцов при 
		 unsigned int* k = (unsigned int*)
		 malloc(num_fields * sizeof(unsigned int));
		 fields = mysql_fetch_fields(res);
		 // Вывод заголовка таблицы
		 for (i = 0; i < num_fields; i++) {
			 printf("+");
			 k[i] = fields[i].max_length >
				fields[i].name_length ? fields[i].max_length :
				fields[i].name_length;
			 for (j = 1; j < k[i] + 3; j++) { printf("-"); }
			
		 }
		 printf("-+\n");
		 // Вывод названий столбцов
			 for (i = 0; i < num_fields; i++) {
				 printf("| %-*s ", (int)k[i], fields[i].name);
			
		 }
		 printf(" |\n");
		 for (i = 0; i < num_fields; i++) {
			 printf("+");
			 for (j = 1; j < k[i] + 3; j++) { printf("-"); }
			
		 }
		 printf("-+\n");
		 MYSQL_ROW row; // Одна строка из результатов запроса.
		 // Построчное чтение результатов.
			 while ((row = mysql_fetch_row(res))) {
			 // Вывод значений столбцов каждой строки.
				 for (i = 0; i < num_fields; i++)
				 printf("| %-*s ", (int)k[i], row[i] ? row[i]
					: "NULL");
			 printf(" |\n");
			
		 }
		 free(k);
		
	    }
		// Очистить результирующий набор.
		 mysql_free_result(res);
	
}

 
	  // Выбор действия.
	  void SELECT_action() {
	  char buffer[1024];
	  int ContractType = 0;
	  char Contract[15];
	  char DateOfContract[15];
	  char DateOfPayment[15];
	  int Cost = 0;
	  int action;
	  int EmployeeID = 0;
	  int CompanyID = 0;
	  int ObjectID = 0;
	  int ClientID = 0;
	  int OwnerID = 0;
	  int DistrictID = 0;
		  fflush(stdin);
	  printf("Выберите действие: \n");
	  printf("\t1. Список всех клиентов; \n");
	  printf("\t2. Создание контракта; \n");
	  printf("\t3. Просмотр списка работников в заданной компании; \n");
	  printf("\t4. Просмотр списка объектов в заданном районе \n");
	  printf("\t5. Список всех контрактов \n");
	  printf(">");
	  scanf("%u", &action);
	 
	  switch (action) {
		  case 1:
			  // Список компьютеров сети.
			output_query_result("SELECT * FROM passportclient ORDER BY surname");
				break;
		  case 5:
			  // Список компьютеров сети.
			  output_query_result("SELECT * FROM contract");
			  break;
		  case 2:
			  // Ввод описания новой уязвимости в перечень.
			printf("Введите ваш id: ");
			scanf("%u", &EmployeeID);
			output_query_result("SELECT * FROM realestateobject");
			printf("Выберете объект: ");
			scanf("%u", &ObjectID);
			output_query_result("SELECT * FROM passportclient ORDER BY surname");
			printf("Введите покупателя: ");
			scanf("%u", &ClientID);
			printf("Введите владельца: ");
			scanf("%u", &OwnerID);
			printf("Введите тип контракта:\n");
			printf("1)Покупка\n");
			printf("2)Аренда\n");
			scanf("%u", &ContractType);
			if (ContractType == 1)
			{
				strcpy(Contract,"purchase");
			}
			else if (ContractType == 1)
			{
				strcpy(Contract,"arend");
			}
			printf("Введите дату контракта: ");
			scanf("%s", DateOfContract);
			printf("Введите дату оплаты: ");
			scanf("%s", DateOfPayment);
			printf("Введите цену: ");
			scanf("%u", &Cost);
			snprintf(buffer, 1023, "INSERT INTO contract (DateOfContract,DateOfPayment,CostOfObject,EmployeeID,ContractType,OwnerPassportNumber,ClientPassportNumber) VALUES ('%s', '%s', %d, %d, '%s', %d, %d)", DateOfContract,DateOfPayment,Cost,EmployeeID,Contract, OwnerID, ClientID);
			  if (mysql_query(&mydesc, buffer))
			  exiterr();
			  break;
		  case 3:
			  printf("Наши районы: ");
			  output_query_result("SELECT * FROM company");
			  printf("Выберете номер района: ");
			  scanf("%u", &CompanyID);
			  snprintf(buffer, 1023, "SELECT * FROM employee WHERE CompanyId = % d", CompanyID);
			  output_query_result(buffer);
			  break;
		  case 4:
			  //Список уязвимостей на заданном компьютере.
			  printf("Список компаний: ");
			  output_query_result("SELECT * FROM district ORDER BY City");
			  printf("Введите номер компании: ");
			  scanf("%u", &DistrictID);
			  snprintf(buffer, 1023, "SELECT * FROM realestateobject WHERE DistrictId = % d", DistrictID);
				  output_query_result(buffer);
			  break;
		 case 6:
			  exit(0);
			  break;
		  default:
			  printf("Введите значение от 1 до 8.\n");
			  break;
			 
	 }
	  printf("\n");
	 
 }
  int main(void)
	  {
	  setlocale(LC_ALL, "Russian");
	  SetConsoleCP(1251);
	  // Инициализация подключения к MySQL.
		  mysql_init(&mydesc);
	  // Подключение к MySQL.
		  if (!(mysql_real_connect(&mydesc, "localhost", "root", "root", "eastate", 3306, NULL, 0)))
		  exiterr();
	  // Установка необходимой кодировки.
		  if (mysql_query(&mydesc, "SET CHARACTER SET cp1251"))
		  exiterr();
	  if (mysql_query(&mydesc, "SET CHARACTER_SET_RESULTS = cp866"))
		  exiterr();
	  SetConsoleCP(866);
	  for (;;) {
		  SELECT_action();
		 
	 }
	  // Завершение работы с MySQL.
		  mysql_close(&mydesc);
	 return 0;
 }