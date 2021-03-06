package com.google.android.gms.internal.measurement;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbx.class */
public final class zzbx {
    private final zzaw zzqx;
    private volatile Boolean zzyk;
    private String zzyl;
    private Set<Integer> zzym;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbx(zzaw zzawVar) {
        Preconditions.checkNotNull(zzawVar);
        this.zzqx = zzawVar;
    }

    public static boolean zzdx() {
        return zzcf.zzyw.get().booleanValue();
    }

    public static int zzdy() {
        return zzcf.zzzt.get().intValue();
    }

    public static long zzdz() {
        return zzcf.zzze.get().longValue();
    }

    public static long zzea() {
        return zzcf.zzzh.get().longValue();
    }

    public static int zzeb() {
        return zzcf.zzzj.get().intValue();
    }

    public static int zzec() {
        return zzcf.zzzk.get().intValue();
    }

    @VisibleForTesting
    public static String zzed() {
        return zzcf.zzzm.get();
    }

    @VisibleForTesting
    public static String zzee() {
        return zzcf.zzzl.get();
    }

    public static String zzef() {
        return zzcf.zzzn.get();
    }

    public static long zzeh() {
        return zzcf.zzaab.get().longValue();
    }

    public final boolean zzdw() {
        if (this.zzyk == null) {
            synchronized (this) {
                if (this.zzyk == null) {
                    ApplicationInfo applicationInfo = this.zzqx.getContext().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.zzyk = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if ((this.zzyk == null || !this.zzyk.booleanValue()) && "com.google.android.gms.analytics".equals(myProcessName)) {
                        this.zzyk = Boolean.TRUE;
                    }
                    if (this.zzyk == null) {
                        this.zzyk = Boolean.TRUE;
                        this.zzqx.zzby().zzu("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.zzyk.booleanValue();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x006a -> B:13:0x0055). Please submit an issue!!! */
    public final Set<Integer> zzeg() {
        String str = zzcf.zzzw.get();
        if (this.zzym == null || this.zzyl == null || !this.zzyl.equals(str)) {
            String[] split = TextUtils.split(str, ",");
            HashSet hashSet = new HashSet();
            for (String str2 : split) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                } catch (NumberFormatException e) {
                }
            }
            this.zzyl = str;
            this.zzym = hashSet;
        }
        return this.zzym;
    }
}
