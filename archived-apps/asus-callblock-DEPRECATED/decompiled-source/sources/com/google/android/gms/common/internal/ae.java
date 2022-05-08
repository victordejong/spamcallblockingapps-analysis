package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ae.class */
public final class ae {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ae$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f4002a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f4003b;

        private a(Object obj) {
            this.f4003b = b.a(obj);
            this.f4002a = new ArrayList();
        }

        /* synthetic */ a(Object obj, byte b2) {
            this(obj);
        }

        public final a a(String str, Object obj) {
            List<String> list = this.f4002a;
            String str2 = (String) b.a(str);
            String valueOf = String.valueOf(String.valueOf(obj));
            list.add(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length()).append(str2).append("=").append(valueOf).toString());
            return this;
        }

        public final String toString() {
            StringBuilder append = new StringBuilder(100).append(this.f4003b.getClass().getSimpleName()).append('{');
            int size = this.f4002a.size();
            for (int i = 0; i < size; i++) {
                append.append(this.f4002a.get(i));
                if (i < size - 1) {
                    append.append(", ");
                }
            }
            return append.append('}').toString();
        }
    }

    public static a a(Object obj) {
        return new a(obj, (byte) 0);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
