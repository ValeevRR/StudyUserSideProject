package com.kpfu.studyusersideproject.db;

import javax.persistence.*;

@Entity
@Table(name = "nomenclature")
public class Nomenclature {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    
    @Column(name = "name")
    private String name;
    
    @Column(name = "id_cdb")
    private long id_cdb;
    
    @Column(name = "about")
    private String about;

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId_cdb() {
        return id_cdb;
    }

    public void setId_cdb(long id_cdb) {
        this.id_cdb = id_cdb;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }
}
