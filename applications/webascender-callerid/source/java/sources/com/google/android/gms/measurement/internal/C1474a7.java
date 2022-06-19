package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.internal.C0933s;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* renamed from: com.google.android.gms.measurement.internal.a7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a7.class */
public final class C1474a7 {
    @Deprecated
    /* renamed from: a */
    public static String m1705a(Context context, String str) {
        try {
            return new C0933s(context).m3302a("google_app_id");
        } catch (Resources.NotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m1704b(Context context, String str, String str2) {
        C0931r.m3308k(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = C1535k4.m1573a(context);
        }
        return C1535k4.m1572b("google_app_id", resources, str2);
    }

    /* renamed from: c */
    public static Object m1703c(Object obj) {
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

    /* renamed from: d */
    public static String m1702d(String str, String[] strArr, String[] strArr2) {
        C0931r.m3308k(strArr);
        C0931r.m3308k(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }
}
