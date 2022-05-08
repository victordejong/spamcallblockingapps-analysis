package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzew.class */
public final class zzew extends AbstractC2764er {

    /* renamed from: c */
    private String f17141c;

    /* renamed from: a */
    private char f17139a = (char) 0;

    /* renamed from: b */
    private long f17140b = -1;

    /* renamed from: d */
    private final zzey f17142d = new zzey(this, 6, false, false);

    /* renamed from: e */
    private final zzey f17143e = new zzey(this, 6, true, false);

    /* renamed from: f */
    private final zzey f17144f = new zzey(this, 6, false, true);

    /* renamed from: g */
    private final zzey f17145g = new zzey(this, 5, false, false);

    /* renamed from: h */
    private final zzey f17146h = new zzey(this, 5, true, false);

    /* renamed from: i */
    private final zzey f17147i = new zzey(this, 5, false, true);

    /* renamed from: j */
    private final zzey f17148j = new zzey(this, 4, false, false);

    /* renamed from: k */
    private final zzey f17149k = new zzey(this, 3, false, false);

    /* renamed from: l */
    private final zzey f17150l = new zzey(this, 2, false, false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzew(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static Object m1855a(String str) {
        if (str == null) {
            return null;
        }
        return new C2728di(str);
    }

    /* renamed from: a */
    private static String m1854a(boolean z, Object obj) {
        String str;
        String className;
        String str2 = "";
        if (obj == null) {
            return "";
        }
        Object obj2 = obj;
        if (obj instanceof Integer) {
            obj2 = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj2 instanceof Long) {
            if (!z) {
                return String.valueOf(obj2);
            }
            Long l = (Long) obj2;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj2);
            }
            if (String.valueOf(obj2).charAt(0) == '-') {
                str2 = "-";
            }
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (obj2 instanceof Boolean) {
            return String.valueOf(obj2);
        } else {
            if (obj2 instanceof Throwable) {
                Throwable th = (Throwable) obj2;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String b = m1851b(zzga.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && m1851b(className).equals(b)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i++;
                }
                return sb2.toString();
            } else if (!(obj2 instanceof C2728di)) {
                return z ? "-" : String.valueOf(obj2);
            } else {
                str = ((C2728di) obj2).f16658a;
                return str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m1853a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String a = m1854a(z, obj);
        String a2 = m1854a(z, obj2);
        String a3 = m1854a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str3)) {
            sb.append(str3);
            str2 = ": ";
        }
        String str4 = str2;
        if (!TextUtils.isEmpty(a)) {
            sb.append(str2);
            sb.append(a);
            str4 = ", ";
        }
        String str5 = str4;
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str4);
            sb.append(a2);
            str5 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str5);
            sb.append(a3);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static String m1851b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: c */
    private final String m1850c() {
        String str;
        String str2;
        synchronized (this) {
            if (this.f17141c == null) {
                if (this.f16804x.zzs() != null) {
                    str2 = this.f16804x.zzs();
                } else {
                    zzt().zzu();
                    str2 = "FA";
                }
                this.f17141c = str2;
            }
            str = this.f17141c;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1860a(int i, String str) {
        Log.println(i, m1850c(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1859a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        String str2;
        if (!z && m1861a(i)) {
            m1860a(i, m1853a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            Preconditions.checkNotNull(str);
            zzft b = this.f16804x.m1807b();
            if (b == null) {
                str2 = "Scheduler not set. Not logging error/warn";
            } else if (!b.m2057k()) {
                str2 = "Scheduler not initialized. Not logging error/warn";
            } else {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                int i3 = i2;
                if (i2 >= 9) {
                    i3 = 8;
                }
                b.zza(new RunnableC2727dh(this, i3, str, obj, obj2, obj3));
                return;
            }
            m1860a(6, str2);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2764er
    /* renamed from: a */
    protected final boolean mo1646a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m1861a(int i) {
        return Log.isLoggable(m1850c(), i);
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

    public final zzey zzf() {
        return this.f17142d;
    }

    public final zzey zzg() {
        return this.f17143e;
    }

    public final zzey zzh() {
        return this.f17144f;
    }

    public final zzey zzi() {
        return this.f17145g;
    }

    public final zzey zzj() {
        return this.f17146h;
    }

    public final zzey zzk() {
        return this.f17147i;
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

    public final zzey zzv() {
        return this.f17148j;
    }

    public final zzey zzw() {
        return this.f17149k;
    }

    public final zzey zzx() {
        return this.f17150l;
    }

    public final String zzy() {
        Pair<String, Long> zza = zzs().f16678b.zza();
        if (zza == null || zza == C2734do.f16675a) {
            return null;
        }
        String valueOf = String.valueOf(zza.second);
        String str = (String) zza.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }
}
