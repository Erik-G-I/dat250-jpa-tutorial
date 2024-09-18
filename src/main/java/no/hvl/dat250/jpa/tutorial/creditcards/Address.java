package no.hvl.dat250.jpa.tutorial.creditcards;

import java.util.Collection;
import java.util.Objects;
import java.util.Set;

import jakarta.persistence.*;

@Entity
public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String street;
    private Integer number;
    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST})
    private Set<Customer> owners;

    public String getStreet() {
        // TODO: implement method!
        return street;
    }

    public Integer getNumber() {
        // TODO: implement method!
        return number;
    }

    public Collection<Customer> getOwners() {
        // TODO: implement method!
        return owners;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public void setOwners(Set<Customer> owners) {
        this.owners = owners;
    }

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Address address = (Address) o;
//        return Objects.equals(id, address.id) && Objects.equals(street, address.street) && Objects.equals(number, address.number) && Objects.equals(owners, address.owners);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(id, street, number, owners);
//    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", street='" + street + '\'' +
                ", number=" + number +
                '}';
    }
}
