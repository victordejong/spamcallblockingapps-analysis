package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.zzqe;
import java.lang.reflect.Type;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.vk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/vk.class */
public final class C1233vk {
    /* renamed from: a */
    public static Object m2390a(String str, Type type) throws zzqe {
        if (type == String.class) {
            try {
                hm hmVar = new hm();
                hmVar.c(str);
                if (hmVar.a()) {
                    return hmVar.b();
                }
                String valueOf = String.valueOf(str);
                throw new zzqe(valueOf.length() != 0 ? "No error message: ".concat(valueOf) : new String("No error message: "));
            } catch (Exception e) {
                String valueOf2 = String.valueOf(e.getMessage());
                throw new zzqe(valueOf2.length() != 0 ? "Json conversion failed! ".concat(valueOf2) : new String("Json conversion failed! "), e);
            }
        } else if (type == Void.class) {
            return null;
        } else {
            try {
                AbstractC1256xk abstractC1256xk = (AbstractC1256xk) ((Class) type).getConstructor(new Class[0]).newInstance(new Object[0]);
                try {
                    abstractC1256xk.m2324g(str);
                    return abstractC1256xk;
                } catch (Exception e2) {
                    String valueOf3 = String.valueOf(e2.getMessage());
                    throw new zzqe(valueOf3.length() != 0 ? "Json conversion failed! ".concat(valueOf3) : new String("Json conversion failed! "), e2);
                }
            } catch (Exception e3) {
                String valueOf4 = String.valueOf(type);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf4).length() + 38);
                sb.append("Instantiation of JsonResponse failed! ");
                sb.append(valueOf4);
                throw new zzqe(sb.toString(), e3);
            }
        }
    }
}
