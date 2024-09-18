package no.hvl.dat250.jpa.tutorial.creditcards.driver;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import no.hvl.dat250.jpa.tutorial.creditcards.*;
import org.hibernate.collection.spi.PersistentBag;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;

public class CreditCardsMain {

  static final String PERSISTENCE_UNIT_NAME = "jpa-tutorial";

  public static void main(String[] args) {
    try (EntityManagerFactory factory = Persistence.createEntityManagerFactory(
        PERSISTENCE_UNIT_NAME); EntityManager em = factory.createEntityManager()) {
      em.getTransaction().begin();
      createObjects(em);
      em.getTransaction().commit();
    }
  }

  private static void createObjects(EntityManager em) {
    // TODO: Create object world as shown in the README.md.
    Pincode pincode = new Pincode();
    em.persist(pincode);
    pincode.setCode("123");
    pincode.setCount(1);

    CreditCard creditCard1 = new CreditCard();
    em.persist(creditCard1);
    creditCard1.setNumber(12345);
    creditCard1.setCreditLimit(-10000);
    creditCard1.setBalance(-5000);
    creditCard1.setPincode(pincode);

    CreditCard creditCard2 = new CreditCard();
    em.persist(creditCard2);
    creditCard2.setNumber(123);
    creditCard2.setCreditLimit(2000);
    creditCard2.setBalance(1);
    creditCard2.setPincode(pincode);

    Collection<CreditCard> creditCards = new HashSet<>();
    creditCards.add(creditCard1);
    creditCards.add(creditCard2);


    Bank bank = new Bank();
    em.persist(bank);
    bank.setName("Pengebank");

    creditCard1.setBank(bank);
    creditCard2.setBank(bank);
    bank.setCreditCards(creditCards);

    Address address = new Address();
    em.persist(address);
    address.setNumber(28);
    address.setStreet("Inndalsveien");


    Collection<Address> addresses = new HashSet<>();
    addresses.add(address);

    Customer customer = new Customer();
    em.persist(customer);
    customer.setName("Max Mustermann");
    customer.setCreditCards(creditCards);
    customer.setAddresses(addresses);

    Collection<Customer> customers = new HashSet<>();
    customers.add(customer);
    address.setOwners(customers);

  }
}
