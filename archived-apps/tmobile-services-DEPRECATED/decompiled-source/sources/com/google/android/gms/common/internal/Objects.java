package com.google.android.gms.common.internal;

import androidx.annotation.Nullable;
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
        private final List<String> f7513a;

        /* renamed from: b */
        private final Object f7514b;

        private ToStringHelper(Object obj) {
            Preconditions.m14523k(obj);
            this.f7514b = obj;
            this.f7513a = new ArrayList();
        }

        @KeepForSdk
        /* renamed from: a */
        public final ToStringHelper m14534a(String str, @Nullable Object obj) {
            List<String> list = this.f7513a;
            Preconditions.m14523k(str);
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
            sb.append(this.f7514b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f7513a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f7513a.get(i));
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

    @KeepForSdk
    /* renamed from: a */
    public static boolean m14537a(@Nullable Object obj, @Nullable Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    @KeepForSdk
    /* renamed from: b */
    public static int m14536b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @KeepForSdk
    /* renamed from: c */
    public static ToStringHelper m14535c(Object obj) {
        return new ToStringHelper(obj);
    }
}
