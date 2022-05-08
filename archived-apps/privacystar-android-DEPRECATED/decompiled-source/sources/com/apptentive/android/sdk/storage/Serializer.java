package com.apptentive.android.sdk.storage;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/Serializer.class */
public interface Serializer {
    Object deserialize() throws SerializerException;

    void serialize(Object obj) throws SerializerException;
}
