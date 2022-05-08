package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/MutablePair.class */
public class MutablePair<T> {
    @Nullable

    /* renamed from: a */
    T f6087a;
    @Nullable

    /* renamed from: b */
    T f6088b;

    /* renamed from: a */
    private static boolean m16076a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public void m16075b(T t, T t2) {
        this.f6087a = t;
        this.f6088b = t2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        boolean z = false;
        if (m16076a(pair.f3206a, this.f6087a)) {
            z = false;
            if (m16076a(pair.f3207b, this.f6088b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        T t = this.f6087a;
        int i = 0;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.f6088b;
        if (t2 != null) {
            i = t2.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f6087a) + " " + String.valueOf(this.f6088b) + "}";
    }
}
