package no.hvl.dat250.jpa.tutorial.creditcards;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
public class CreditCard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Integer number;
    private Integer balance;
    private Integer creditLimit;
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Pincode pincode;
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Bank bank;

    public Bank getBank() {
        return bank;
    }

    public void setBank(Bank bank) {
        this.bank = bank;
    }

    public void setPincode(Pincode pincode) {
        this.pincode = pincode;
    }

    public Integer getNumber() {
        // TODO: implement method!
        return number;
    }

    public Integer getBalance() {
        // TODO: implement method!
        return balance;
    }

    public Integer getCreditLimit() {
        // TODO: implement method!
        return creditLimit;
    }

    public Pincode getPincode() {
        // TODO: implement method!
        return pincode;
    }

    public Bank getOwningBank() {
        // TODO: implement method!
        return bank;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public void setCreditLimit(Integer creditLimit) {
        this.creditLimit = creditLimit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CreditCard that = (CreditCard) o;
        return Objects.equals(id, that.id) && Objects.equals(number, that.number) && Objects.equals(balance, that.balance) && Objects.equals(creditLimit, that.creditLimit) && Objects.equals(pincode, that.pincode) && Objects.equals(bank, that.bank);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, number, balance, creditLimit, pincode, bank);
    }

    @Override
    public String toString() {
        return "CreditCard{" +
                "id=" + id +
                ", number=" + number +
                ", balance=" + balance +
                ", creditLimit=" + creditLimit +
                ", pincode=" + pincode +
                ", bank=" + bank +
                '}';
    }
}

