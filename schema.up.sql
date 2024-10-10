
    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        bank_id bigint,
        id bigint generated by default as identity,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKe2wqhnxpkjp87b3eyfq6gl39a 
       foreign key (bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        bank_id bigint,
        id bigint generated by default as identity,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKe2wqhnxpkjp87b3eyfq6gl39a 
       foreign key (bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        bank_id bigint,
        id bigint generated by default as identity,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKe2wqhnxpkjp87b3eyfq6gl39a 
       foreign key (bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        bank_id bigint,
        id bigint generated by default as identity,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKe2wqhnxpkjp87b3eyfq6gl39a 
       foreign key (bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        bank_id bigint,
        id bigint generated by default as identity,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKe2wqhnxpkjp87b3eyfq6gl39a 
       foreign key (bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;

    create table Address (
        number integer,
        id bigint generated by default as identity,
        street varchar(255),
        primary key (id)
    );

    create table Address_Customer (
        Address_id bigint not null,
        owners_id bigint not null,
        primary key (Address_id, owners_id)
    );

    create table Bank (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Bank_CreditCard (
        Bank_id bigint not null,
        creditCards_id bigint not null unique,
        primary key (Bank_id, creditCards_id)
    );

    create table CreditCard (
        balance integer,
        creditLimit integer,
        number integer,
        bank_id bigint,
        id bigint generated by default as identity,
        pincode_id bigint,
        primary key (id)
    );

    create table Customer (
        id bigint generated by default as identity,
        name varchar(255),
        primary key (id)
    );

    create table Customer_Address (
        Customer_id bigint not null,
        addresses_id bigint not null,
        primary key (Customer_id, addresses_id)
    );

    create table Customer_CreditCard (
        Customer_id bigint not null,
        creditCards_id bigint not null,
        primary key (Customer_id, creditCards_id)
    );

    create table Pincode (
        count integer,
        id bigint generated by default as identity,
        code varchar(255),
        primary key (id)
    );

    alter table if exists Address_Customer 
       add constraint FK63i2k9l07dovc8lcm1yvb4xqm 
       foreign key (owners_id) 
       references Customer;

    alter table if exists Address_Customer 
       add constraint FKt174op2ao20kqcufuv0jtngp5 
       foreign key (Address_id) 
       references Address;

    alter table if exists Bank_CreditCard 
       add constraint FK2slyi8wckolitg9dskk69si0d 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Bank_CreditCard 
       add constraint FKgahne1o6x3yer0f6xjx5g5nyo 
       foreign key (Bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKe2wqhnxpkjp87b3eyfq6gl39a 
       foreign key (bank_id) 
       references Bank;

    alter table if exists CreditCard 
       add constraint FKfky0y471d7n8cebc1oe28idci 
       foreign key (pincode_id) 
       references Pincode;

    alter table if exists Customer_Address 
       add constraint FK5ov3y8x18tb2tfs01klxn7g7o 
       foreign key (addresses_id) 
       references Address;

    alter table if exists Customer_Address 
       add constraint FKc3xuab6viv9u2bkydqyo63g6e 
       foreign key (Customer_id) 
       references Customer;

    alter table if exists Customer_CreditCard 
       add constraint FKlsjp44vhufgo7x9ua27827f39 
       foreign key (creditCards_id) 
       references CreditCard;

    alter table if exists Customer_CreditCard 
       add constraint FKbcd9tsn3uxf491h4bv3vo023m 
       foreign key (Customer_id) 
       references Customer;
