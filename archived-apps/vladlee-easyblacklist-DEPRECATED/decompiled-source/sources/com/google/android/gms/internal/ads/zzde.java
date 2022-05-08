package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzbm;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzde.class */
public class zzde {

    /* renamed from: b */
    protected volatile Boolean f14236b;

    /* renamed from: c */
    private zzei f14237c;

    /* renamed from: d */
    private static final ConditionVariable f14234d = new ConditionVariable();

    /* renamed from: a */
    protected static volatile zzsr f14233a = null;

    /* renamed from: e */
    private static volatile Random f14235e = null;

    public zzde(zzei zzeiVar) {
        this.f14237c = zzeiVar;
        zzeiVar.zzbx().execute(new acq(this));
    }

    /* renamed from: b */
    private static Random m3603b() {
        if (f14235e == null) {
            synchronized (zzde.class) {
                try {
                    if (f14235e == null) {
                        f14235e = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f14235e;
    }

    public static int zzbr() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : m3603b().nextInt();
        } catch (RuntimeException e) {
            return m3603b().nextInt();
        }
    }

    public final void zza(int i, int i2, long j) {
        zza(i, i2, j, null, null);
    }

    public final void zza(int i, int i2, long j, String str) {
        zza(i, -1, j, str, null);
    }

    public final void zza(int i, int i2, long j, String str, Exception exc) {
        try {
            f14234d.block();
            if (this.f14236b.booleanValue() && f14233a != null) {
                zzbm.zza.C3489zza zzc = zzbm.zza.zzs().zzi(this.f14237c.f14727a.getPackageName()).zzc(j);
                if (str != null) {
                    zzc.zzl(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    zzdpt.zza(exc, new PrintWriter(stringWriter));
                    zzc.zzj(stringWriter.toString()).zzk(exc.getClass().getName());
                }
                zzsv zzf = f14233a.zzf(((zzbm.zza) ((zzdrt) zzc.zzbaf())).toByteArray());
                zzf.zzbr(i);
                if (i2 != -1) {
                    zzf.zzbq(i2);
                }
                zzf.zzdn();
            }
        } catch (Exception e) {
        }
    }
}
