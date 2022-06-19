package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/p.class */
public final class C0925p {

    /* renamed from: com.google.android.gms.common.internal.p$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/p$a.class */
    public static final class C0926a {

        /* renamed from: a */
        private final List<String> f3557a;

        /* renamed from: b */
        private final Object f3558b;

        private C0926a(Object obj) {
            C0931r.m3308k(obj);
            this.f3558b = obj;
            this.f3557a = new ArrayList();
        }

        /* renamed from: a */
        public final C0926a m3324a(String str, Object obj) {
            List<String> list = this.f3557a;
            C0931r.m3308k(str);
            String str2 = str;
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length());
            sb.append(str2);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f3558b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f3557a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f3557a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static boolean m3327a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m3326b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    /* renamed from: c */
    public static C0926a m3325c(Object obj) {
        return new C0926a(obj);
    }
}
