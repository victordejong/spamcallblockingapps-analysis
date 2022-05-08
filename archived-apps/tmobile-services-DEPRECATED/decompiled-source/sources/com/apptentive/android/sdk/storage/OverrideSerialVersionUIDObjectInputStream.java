package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/OverrideSerialVersionUIDObjectInputStream.class */
class OverrideSerialVersionUIDObjectInputStream extends ObjectInputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public OverrideSerialVersionUIDObjectInputStream(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    @Override // java.io.ObjectInputStream
    protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
        ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
        try {
            ObjectStreamClass lookup = ObjectStreamClass.lookup(Class.forName(readClassDescriptor.getName()));
            if (lookup != null) {
                long serialVersionUID = lookup.getSerialVersionUID();
                long serialVersionUID2 = readClassDescriptor.getSerialVersionUID();
                if (serialVersionUID2 != serialVersionUID) {
                    ApptentiveLog.m15635w(ApptentiveLogTag.UTIL, "Overriding serialized '%s' version mismatch:\n\tlocal serialVersionUID = %s\n\tstream serialVersionUID = %s", readClassDescriptor.getName(), Long.valueOf(serialVersionUID), Long.valueOf(serialVersionUID2));
                    return lookup;
                }
            }
            return readClassDescriptor;
        } catch (ClassNotFoundException e) {
            ApptentiveLog.m15635w(ApptentiveLogTag.UTIL, "No local class for: %s ", readClassDescriptor.getName());
            return readClassDescriptor;
        }
    }
}
