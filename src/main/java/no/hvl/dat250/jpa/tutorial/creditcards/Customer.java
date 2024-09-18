package no.hvl.dat250.jpa.tutorial.creditcards;

import java.util.Set;
import java.util.Objects;

import jakarta.persistence.*;

@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
    private Set<Address> addresses;
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
    private Set<CreditCard> creditCards;

    public String getName() {
        // TODO: implement method!
        return name;
    }

    public Set<Address> getAddresses() {
        // TODO: implement method!
        return addresses;
    }

    public Set<CreditCard> getCreditCards() {
        // TODO: implement method!
        return creditCards;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddresses(Set<Address> addresses) {
        this.addresses = addresses;
    }

    public void setCreditCards(Set<CreditCard> creditCards) {
        this.creditCards = creditCards;
    }

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Customer customer = (Customer) o;
//        return Objects.equals(id, customer.id) && Objects.equals(name, customer.name) && Objects.equals(addresses, customer.addresses) && Objects.equals(creditCards, customer.creditCards);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(id, name, addresses, creditCards);
//    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", name='" + name + "'" +
                '}';
    }
}
