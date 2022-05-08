package com.asus.msazure;

import com.android.contacts.activities.ContactDetailCallogActivity;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/asus/msazure/UserMarkedInAzure.class */
public class UserMarkedInAzure {
    @SerializedName("id")
    private String mId;
    @SerializedName("key")
    private String mKey;
    @SerializedName(ContactDetailCallogActivity.EXTRA_NAME)
    private String mName;
    @SerializedName("type")
    private int mType;
    @SerializedName("weight")
    private int mWeight;

    public UserMarkedInAzure(String str, String str2) {
        setKey(str);
        String[] split = str2.split("\t");
        setName(split[0]);
        setType(Integer.valueOf(split[1]).intValue());
        setWeight(Integer.valueOf(split[2]).intValue());
    }

    public UserMarkedInAzure(String str, String str2, int i, int i2) {
        setKey(str);
        setName(str2);
        setType(i);
        setWeight(i2);
    }

    public String getId() {
        return this.mId;
    }

    public String getKey() {
        return this.mKey;
    }

    public String getName() {
        return this.mName;
    }

    public int getType() {
        return this.mType;
    }

    public int getWeight() {
        return this.mWeight;
    }

    public final void setId(String str) {
        this.mId = str;
    }

    public final void setKey(String str) {
        this.mKey = str;
    }

    public final void setName(String str) {
        this.mName = str;
    }

    public final void setType(int i) {
        this.mType = i;
    }

    public final void setWeight(int i) {
        this.mWeight = i;
    }
}
