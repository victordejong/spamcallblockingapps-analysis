package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Objects.class */
public final class Objects {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Objects$ToStringHelper.class */
    public static final class ToStringHelper {

        /* renamed from: a */
        public final List<String> f23453a;

        /* renamed from: b */
        public final Object f23454b;

        public ToStringHelper(Object obj) {
            Preconditions.m17288a(obj);
            this.f23454b = obj;
            this.f23453a = new ArrayList();
        }

        @KeepForSdk
        /* renamed from: a */
        public final ToStringHelper m17293a(String str, Object obj) {
            List<String> list = this.f23453a;
            Preconditions.m17288a(str);
            String str2 = str;
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length());
            sb.append(str2);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @KeepForSdk
        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f23454b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f23453a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f23453a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public Objects() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    /* renamed from: a */
    public static int m17294a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @KeepForSdk
    /* renamed from: a */
    public static ToStringHelper m17296a(Object obj) {
        return new ToStringHelper(obj);
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17295a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
