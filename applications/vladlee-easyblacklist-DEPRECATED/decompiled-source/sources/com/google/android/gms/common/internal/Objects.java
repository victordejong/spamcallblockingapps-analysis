package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Objects.class */
public final class Objects {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Objects$ToStringHelper.class */
    public static final class ToStringHelper {

        /* renamed from: a */
        private final List<String> f6795a;

        /* renamed from: b */
        private final Object f6796b;

        private ToStringHelper(Object obj) {
            this.f6796b = Preconditions.checkNotNull(obj);
            this.f6795a = new ArrayList();
        }

        /* synthetic */ ToStringHelper(Object obj, byte b) {
            this(obj);
        }

        public final ToStringHelper add(String str, Object obj) {
            List<String> list = this.f6795a;
            String str2 = (String) Preconditions.checkNotNull(str);
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
            sb.append(this.f6796b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f6795a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f6795a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private Objects() {
        throw new AssertionError("Uninstantiable");
    }

    public static boolean equal(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj, (byte) 0);
    }
}
