package com.google.android.gms.internal.ads;

import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.y00;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvv.class */
public final class zzdvv {

    /* renamed from: a */
    public final String f27901a;

    /* renamed from: b */
    public final y00 f27902b;

    /* renamed from: c */
    public y00 f27903c;

    public zzdvv(String str) {
        y00 y00Var = new y00();
        this.f27902b = y00Var;
        this.f27903c = y00Var;
        zzdwd.m13096a(str);
        this.f27901a = str;
    }

    /* renamed from: a */
    public final zzdvv m13102a(Object obj) {
        y00 y00Var = new y00();
        this.f27903c.f16083b = y00Var;
        this.f27903c = y00Var;
        y00Var.f16082a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f27901a);
        sb.append('{');
        y00 y00Var = this.f27902b.f16083b;
        String str = "";
        while (y00Var != null) {
            Object obj = y00Var.f16082a;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            }
            y00Var = y00Var.f16083b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
