package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzig.class */
public final class zzig {
    public static Object zza(Object obj) {
        ObjectInputStream objectInputStream;
        ObjectOutputStream objectOutputStream;
        Throwable th;
        try {
            if (obj == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    try {
                        Object readObject = objectInputStream.readObject();
                        objectOutputStream.close();
                        objectInputStream.close();
                        return readObject;
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    objectInputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                objectInputStream = null;
                objectOutputStream = null;
            }
        } catch (IOException | ClassNotFoundException e) {
            return null;
        }
    }

    public static String zza(String str, String[] strArr, String[] strArr2) {
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) ? true : str == null ? false : str.equals(str2)) {
                return strArr2[i];
            }
        }
        return null;
    }
}
