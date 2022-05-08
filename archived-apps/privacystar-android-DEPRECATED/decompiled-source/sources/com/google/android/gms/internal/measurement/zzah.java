package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzah.class */
public final class zzah extends zzi<zzah> {
    private String zzuw;
    private int zzux;
    private int zzuy;
    private String zzuz;
    private String zzva;
    private boolean zzvb;
    private boolean zzvc;

    public zzah() {
        this(false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzah(boolean r6) {
        /*
            r5 = this;
            java.util.UUID r0 = java.util.UUID.randomUUID()
            r7 = r0
            r0 = r7
            long r0 = r0.getLeastSignificantBits()
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r0 = r0 & r1
            int r0 = (int) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0015
            goto L_0x0031
        L_0x0015:
            r0 = r7
            long r0 = r0.getMostSignificantBits()
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r0 = r0 & r1
            int r0 = (int) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0026
            goto L_0x0031
        L_0x0026:
            java.lang.String r0 = "GAv4"
            java.lang.String r1 = "UUID.randomUUID() returned 0."
            int r0 = android.util.Log.e(r0, r1)
            r0 = 2147483647(0x7fffffff, float:NaN)
            r8 = r0
        L_0x0031:
            r0 = r5
            r1 = 0
            r2 = r8
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzah.<init>(boolean):void");
    }

    @VisibleForTesting
    private zzah(boolean z, int i) {
        Preconditions.checkNotZero(i);
        this.zzux = i;
        this.zzvc = false;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.zzuw);
        hashMap.put("interstitial", Boolean.valueOf(this.zzvb));
        hashMap.put("automatic", Boolean.valueOf(this.zzvc));
        hashMap.put("screenId", Integer.valueOf(this.zzux));
        hashMap.put("referrerScreenId", Integer.valueOf(this.zzuy));
        hashMap.put("referrerScreenName", this.zzuz);
        hashMap.put("referrerUri", this.zzva);
        return zza((Object) hashMap);
    }

    @Override // com.google.android.gms.analytics.zzi
    public final /* synthetic */ void zzb(zzah zzahVar) {
        zzah zzahVar2 = zzahVar;
        if (!TextUtils.isEmpty(this.zzuw)) {
            zzahVar2.zzuw = this.zzuw;
        }
        if (this.zzux != 0) {
            zzahVar2.zzux = this.zzux;
        }
        if (this.zzuy != 0) {
            zzahVar2.zzuy = this.zzuy;
        }
        if (!TextUtils.isEmpty(this.zzuz)) {
            zzahVar2.zzuz = this.zzuz;
        }
        if (!TextUtils.isEmpty(this.zzva)) {
            String str = this.zzva;
            if (TextUtils.isEmpty(str)) {
                zzahVar2.zzva = null;
            } else {
                zzahVar2.zzva = str;
            }
        }
        if (this.zzvb) {
            zzahVar2.zzvb = this.zzvb;
        }
        if (this.zzvc) {
            zzahVar2.zzvc = this.zzvc;
        }
    }

    public final String zzbk() {
        return this.zzuw;
    }

    public final int zzbl() {
        return this.zzux;
    }

    public final String zzbm() {
        return this.zzva;
    }
}
