package com.privacystar.core.data.model;

import io.realm.AbstractC1912x6f796d23;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/CategoryQuestionnaire.class */
public class CategoryQuestionnaire extends RealmObject implements AbstractC1912x6f796d23 {
    private String categorySelected;
    @PrimaryKey
    private String phoneNumber;

    public CategoryQuestionnaire() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public String getCategorySelected() {
        return realmGet$categorySelected();
    }

    public String getPhoneNumber() {
        return realmGet$phoneNumber();
    }

    @Override // io.realm.AbstractC1912x6f796d23
    public String realmGet$categorySelected() {
        return this.categorySelected;
    }

    @Override // io.realm.AbstractC1912x6f796d23
    public String realmGet$phoneNumber() {
        return this.phoneNumber;
    }

    @Override // io.realm.AbstractC1912x6f796d23
    public void realmSet$categorySelected(String str) {
        this.categorySelected = str;
    }

    @Override // io.realm.AbstractC1912x6f796d23
    public void realmSet$phoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setCategorySelected(String str) {
        realmSet$categorySelected(str);
    }

    public void setPhoneNumber(String str) {
        realmSet$phoneNumber(str);
    }
}
