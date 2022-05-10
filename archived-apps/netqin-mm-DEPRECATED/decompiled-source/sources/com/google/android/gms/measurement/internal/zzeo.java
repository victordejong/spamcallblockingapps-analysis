package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeo.class */
public final class zzeo extends AbstractC4747l4 {

    /* renamed from: c */
    public static final AtomicReference<String[]> f29930c = new AtomicReference<>();

    /* renamed from: d */
    public static final AtomicReference<String[]> f29931d = new AtomicReference<>();

    /* renamed from: e */
    public static final AtomicReference<String[]> f29932e = new AtomicReference<>();

    public zzeo(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public static String m9170a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.m17288a(strArr);
        Preconditions.m17288a(strArr2);
        Preconditions.m17288a(atomicReference);
        Preconditions.m17284a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzkv.m8685c(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    String[] strArr4 = strArr3;
                    if (strArr3 == null) {
                        strArr4 = new String[strArr2.length];
                        atomicReference.set(strArr4);
                    }
                    if (strArr4[i] == null) {
                        strArr4[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr4[i];
                }
                return str2;
            }
        }
        return str;
    }

    /* renamed from: a */
    public final String m9173a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!m9166q()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(m9168b(str));
            sb.append("=");
            Object obj = bundle.get(str);
            sb.append(obj instanceof Bundle ? m9169a(new Object[]{obj}) : obj instanceof Object[] ? m9169a((Object[]) obj) : obj instanceof ArrayList ? m9169a(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m9172a(zzaq zzaqVar) {
        String str = null;
        if (zzaqVar == null) {
            return null;
        }
        if (!m9166q()) {
            return zzaqVar.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("origin=");
        sb.append(zzaqVar.f29814c);
        sb.append(",name=");
        sb.append(m9171a(zzaqVar.f29812a));
        sb.append(",params=");
        zzap zzapVar = zzaqVar.f29813b;
        if (zzapVar != null) {
            str = !m9166q() ? zzapVar.toString() : m9173a(zzapVar.zzb());
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: a */
    public final String m9171a(String str) {
        if (str == null) {
            return null;
        }
        return !m9166q() ? str : m9170a(str, zzgv.f30043c, zzgv.f30041a, f29930c);
    }

    /* renamed from: a */
    public final String m9169a(Object[] objArr) {
        if (objArr == null) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String a = obj instanceof Bundle ? m9173a((Bundle) obj) : String.valueOf(obj);
            if (a != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(a);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* renamed from: b */
    public final String m9168b(String str) {
        if (str == null) {
            return null;
        }
        return !m9166q() ? str : m9170a(str, zzgu.f30038b, zzgu.f30037a, f29931d);
    }

    /* renamed from: c */
    public final String m9167c(String str) {
        if (str == null) {
            return null;
        }
        if (!m9166q()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m9170a(str, zzgx.f30046b, zzgx.f30045a, f29932e);
        }
        return "experiment_id(" + str + ")";
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: o */
    public final boolean mo8676o() {
        return false;
    }

    /* renamed from: q */
    public final boolean m9166q() {
        return this.f17262a.m9041v() && this.f17262a.mo8789p().m9163a(3);
    }
}
