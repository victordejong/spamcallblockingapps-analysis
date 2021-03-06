package com.google.android.gms.tagmanager;

import androidx.work.PeriodicWorkRequest;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdg.class */
final class zzdg implements zzej {
    private long zzabe;
    private final Clock zzrz;
    private final String zzul;
    private final Object zzabf = new Object();
    private final int zzabc = 5;
    private double zzabd = Math.min(1, 5);
    private final long zzabb = PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS;
    private final long zzbdb = HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS;

    public zzdg(int i, int i2, long j, long j2, String str, Clock clock) {
        this.zzul = str;
        this.zzrz = clock;
    }

    @Override // com.google.android.gms.tagmanager.zzej
    public final boolean zzew() {
        synchronized (this.zzabf) {
            long currentTimeMillis = this.zzrz.currentTimeMillis();
            if (currentTimeMillis - this.zzabe < this.zzbdb) {
                String str = this.zzul;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Excessive ");
                sb.append(str);
                sb.append(" detected; call ignored.");
                zzdi.zzab(sb.toString());
                return false;
            }
            if (this.zzabd < this.zzabc) {
                double d = (currentTimeMillis - this.zzabe) / this.zzabb;
                if (d > 0.0d) {
                    this.zzabd = Math.min(this.zzabc, this.zzabd + d);
                }
            }
            this.zzabe = currentTimeMillis;
            if (this.zzabd >= 1.0d) {
                this.zzabd -= 1.0d;
                return true;
            }
            String str2 = this.zzul;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 34);
            sb2.append("Excessive ");
            sb2.append(str2);
            sb2.append(" detected; call ignored.");
            zzdi.zzab(sb2.toString());
            return false;
        }
    }
}
