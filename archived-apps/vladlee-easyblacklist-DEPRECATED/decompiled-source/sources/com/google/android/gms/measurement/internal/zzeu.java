package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeu.class */
public final class zzeu extends AbstractC2764er {

    /* renamed from: a */
    private static final AtomicReference<String[]> f17136a = new AtomicReference<>();

    /* renamed from: b */
    private static final AtomicReference<String[]> f17137b = new AtomicReference<>();

    /* renamed from: c */
    private static final AtomicReference<String[]> f17138c = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeu(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    private final String m1868a(zzam zzamVar) {
        if (zzamVar == null) {
            return null;
        }
        return !m1863c() ? zzamVar.toString() : m1870a(zzamVar.zzb());
    }

    /* renamed from: a */
    private static String m1865a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzkm.m1609c(str, strArr[i])) {
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

    /* renamed from: c */
    private final boolean m1863c() {
        zzu();
        return this.f16804x.zzl() && this.f16804x.zzr().m1861a(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final String m1870a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!m1863c()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            sb.append(sb.length() != 0 ? ", " : "Bundle[{");
            sb.append(m1864b(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final String m1869a(zzak zzakVar) {
        if (zzakVar == null) {
            return null;
        }
        if (!m1863c()) {
            return zzakVar.toString();
        }
        return "Event{appId='" + zzakVar.f17100a + "', name='" + m1866a(zzakVar.f17101b) + "', params=" + m1868a(zzakVar.f17104e) + "}";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final String m1867a(zzan zzanVar) {
        if (zzanVar == null) {
            return null;
        }
        if (!m1863c()) {
            return zzanVar.toString();
        }
        return "origin=" + zzanVar.zzc + ",name=" + m1866a(zzanVar.zza) + ",params=" + m1868a(zzanVar.zzb);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final String m1866a(String str) {
        if (str == null) {
            return null;
        }
        return !m1863c() ? str : m1865a(str, zzgv.zzb, zzgv.zza, f17136a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2764er
    /* renamed from: a */
    protected final boolean mo1646a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final String m1864b(String str) {
        if (str == null) {
            return null;
        }
        return !m1863c() ? str : m1865a(str, zzgy.zzb, zzgy.zza, f17137b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final String m1862c(String str) {
        if (str == null) {
            return null;
        }
        if (!m1863c()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return m1865a(str, zzgx.zzb, zzgx.zza, f17138c);
        }
        return "experiment_id(" + str + ")";
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
