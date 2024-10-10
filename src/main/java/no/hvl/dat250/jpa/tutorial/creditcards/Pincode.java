package no.hvl.dat250.jpa.tutorial.creditcards;

import jakarta.persistence.*;

import java.util.Objects;

@Entity
public class Pincode {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String code;
    private Integer count;

    public Long getId() {
        return id;
    }

    public String getCode() {
        return code;
    }

    public Integer getCount() {
        return count;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

//    @Override
//    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;
//        Pincode pincode = (Pincode) o;
//        return Objects.equals(id, pincode.id) && Objects.equals(code, pincode.code) && Objects.equals(count, pincode.count);
//    }
//
//    @Override
//    public int hashCode() {
//        return Objects.hash(id, code, count);
//    }

    @Override
    public String toString() {
        return "Pincode{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", count=" + count +
                '}';
    }
}
