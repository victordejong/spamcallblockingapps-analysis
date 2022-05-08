package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.os.Build;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzg.class */
public final class zzg {
    private final zzj zzry;
    private final Clock zzrz;
    private boolean zzsa;
    private long zzsb;
    private long zzsc;
    private long zzsd;
    private long zzse;
    private long zzsf;
    private boolean zzsg;
    private final Map<Class<? extends zzi>, zzi> zzsh;
    private final List<zzo> zzsi;

    private zzg(zzg zzgVar) {
        this.zzry = zzgVar.zzry;
        this.zzrz = zzgVar.zzrz;
        this.zzsb = zzgVar.zzsb;
        this.zzsc = zzgVar.zzsc;
        this.zzsd = zzgVar.zzsd;
        this.zzse = zzgVar.zzse;
        this.zzsf = zzgVar.zzsf;
        this.zzsi = new ArrayList(zzgVar.zzsi);
        this.zzsh = new HashMap(zzgVar.zzsh.size());
        for (Map.Entry<Class<? extends zzi>, zzi> entry : zzgVar.zzsh.entrySet()) {
            zzi zzc = zzc(entry.getKey());
            entry.getValue().zzb(zzc);
            this.zzsh.put(entry.getKey(), zzc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzg(zzj zzjVar, Clock clock) {
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotNull(clock);
        this.zzry = zzjVar;
        this.zzrz = clock;
        this.zzse = 1800000L;
        this.zzsf = 3024000000L;
        this.zzsh = new HashMap();
        this.zzsi = new ArrayList();
    }

    @TargetApi(19)
    private static <T extends zzi> T zzc(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            if (e instanceof InstantiationException) {
                throw new IllegalArgumentException("dataType doesn't have default constructor", e);
            } else if (e instanceof IllegalAccessException) {
                throw new IllegalArgumentException("dataType default constructor is not accessible", e);
            } else if (Build.VERSION.SDK_INT < 19 || !(e instanceof ReflectiveOperationException)) {
                throw new RuntimeException(e);
            } else {
                throw new IllegalArgumentException("Linkage exception", e);
            }
        }
    }

    @VisibleForTesting
    public final <T extends zzi> T zza(Class<T> cls) {
        return (T) this.zzsh.get(cls);
    }

    @VisibleForTesting
    public final void zza(long j) {
        this.zzsc = j;
    }

    @VisibleForTesting
    public final void zza(zzi zziVar) {
        Preconditions.checkNotNull(zziVar);
        Class<?> cls = zziVar.getClass();
        if (cls.getSuperclass() != zzi.class) {
            throw new IllegalArgumentException();
        }
        zziVar.zzb(zzb(cls));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zzaa() {
        return this.zzsg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzab() {
        this.zzsg = true;
    }

    @VisibleForTesting
    public final <T extends zzi> T zzb(Class<T> cls) {
        zzi zziVar = this.zzsh.get(cls);
        T t = (T) zziVar;
        if (zziVar == null) {
            t = (T) zzc(cls);
            this.zzsh.put(cls, t);
        }
        return t;
    }

    @VisibleForTesting
    public final zzg zzs() {
        return new zzg(this);
    }

    @VisibleForTesting
    public final Collection<zzi> zzt() {
        return this.zzsh.values();
    }

    public final List<zzo> zzu() {
        return this.zzsi;
    }

    @VisibleForTesting
    public final long zzv() {
        return this.zzsb;
    }

    @VisibleForTesting
    public final void zzw() {
        this.zzry.zzac().zze(this);
    }

    @VisibleForTesting
    public final boolean zzx() {
        return this.zzsa;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzy() {
        this.zzsd = this.zzrz.elapsedRealtime();
        if (this.zzsc != 0) {
            this.zzsb = this.zzsc;
        } else {
            this.zzsb = this.zzrz.currentTimeMillis();
        }
        this.zzsa = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzj zzz() {
        return this.zzry;
    }
}
