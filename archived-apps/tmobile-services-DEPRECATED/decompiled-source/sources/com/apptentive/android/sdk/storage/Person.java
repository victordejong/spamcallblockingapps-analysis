package com.apptentive.android.sdk.storage;

import androidx.annotation.Nullable;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/Person.class */
public class Person implements Saveable, DataChangedListener {
    private static final long serialVersionUID = 1;
    private String birthday;
    private String city;
    private String country;
    private CustomData customData = new CustomData();
    private String email;
    private String facebookId;

    /* renamed from: id */
    private String f6463id;
    private transient DataChangedListener listener;
    private String mParticleId;
    private String name;
    private transient PersonDataChangedListener personDataChangedListener;
    private String phoneNumber;
    private String street;
    private String zip;

    public Person clone() {
        Person person = new Person();
        person.f6463id = this.f6463id;
        person.email = this.email;
        person.name = this.name;
        person.facebookId = this.facebookId;
        person.phoneNumber = this.phoneNumber;
        person.street = this.street;
        person.city = this.city;
        person.zip = this.zip;
        person.country = this.country;
        person.birthday = this.birthday;
        CustomData customData = this.customData;
        if (customData != null) {
            person.customData.putAll(customData);
        }
        person.listener = this.listener;
        return person;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getCity() {
        return this.city;
    }

    public String getCountry() {
        return this.country;
    }

    public CustomData getCustomData() {
        return this.customData;
    }

    public String getEmail() {
        return this.email;
    }

    public String getFacebookId() {
        return this.facebookId;
    }

    public String getId() {
        return this.f6463id;
    }

    @Nullable
    public String getMParticleId() {
        return this.mParticleId;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getStreet() {
        return this.street;
    }

    public String getZip() {
        return this.zip;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        PersonDataChangedListener personDataChangedListener = this.personDataChangedListener;
        if (personDataChangedListener != null) {
            personDataChangedListener.onPersonDataChanged();
        }
        DataChangedListener dataChangedListener = this.listener;
        if (dataChangedListener != null) {
            dataChangedListener.onDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.DataChangedListener
    public void onDataChanged() {
        notifyDataChanged();
    }

    public void setBirthday(String str) {
        if (!StringUtils.equal(this.birthday, str)) {
            this.birthday = str;
            notifyDataChanged();
        }
    }

    public void setCity(String str) {
        if (!StringUtils.equal(this.city, str)) {
            this.city = str;
            notifyDataChanged();
        }
    }

    public void setCountry(String str) {
        if (!StringUtils.equal(this.country, str)) {
            this.country = str;
            notifyDataChanged();
        }
    }

    public void setCustomData(CustomData customData) {
        this.customData = customData;
        customData.setDataChangedListener(this);
        notifyDataChanged();
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
        this.customData.setDataChangedListener(this);
    }

    public void setEmail(String str) {
        if (!StringUtils.equal(this.email, str)) {
            this.email = str;
            notifyDataChanged();
        }
    }

    public void setFacebookId(String str) {
        if (!StringUtils.equal(this.facebookId, str)) {
            this.facebookId = str;
            notifyDataChanged();
        }
    }

    public void setId(String str) {
        if (!StringUtils.equal(this.f6463id, str)) {
            this.f6463id = str;
            notifyDataChanged();
        }
    }

    public void setMParticleId(String str) {
        if (!StringUtils.equal(this.mParticleId, str)) {
            this.mParticleId = str;
            notifyDataChanged();
        }
    }

    public void setName(String str) {
        if (!StringUtils.equal(this.name, str)) {
            this.name = str;
            notifyDataChanged();
        }
    }

    public void setPersonDataChangedListener(PersonDataChangedListener personDataChangedListener) {
        this.personDataChangedListener = personDataChangedListener;
    }

    public void setPhoneNumber(String str) {
        if (!StringUtils.equal(this.phoneNumber, str)) {
            this.phoneNumber = str;
            notifyDataChanged();
        }
    }

    public void setStreet(String str) {
        if (!StringUtils.equal(this.street, str)) {
            this.street = str;
            notifyDataChanged();
        }
    }

    public void setZip(String str) {
        if (!StringUtils.equal(this.zip, str)) {
            this.zip = str;
            notifyDataChanged();
        }
    }
}
