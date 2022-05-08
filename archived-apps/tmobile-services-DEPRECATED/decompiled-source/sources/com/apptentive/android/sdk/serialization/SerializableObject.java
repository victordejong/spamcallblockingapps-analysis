package com.apptentive.android.sdk.serialization;

import java.io.DataOutput;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/serialization/SerializableObject.class */
public interface SerializableObject {
    void writeExternal(DataOutput dataOutput) throws IOException;
}
