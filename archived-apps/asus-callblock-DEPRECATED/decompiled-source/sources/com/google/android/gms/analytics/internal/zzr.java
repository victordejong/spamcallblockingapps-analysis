package com.google.android.gms.analytics.internal;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.google.android.gms.common.a.l;
import com.google.android.gms.common.internal.b;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzr.class */
public class zzr {

    /* renamed from: a  reason: collision with root package name */
    private final zzf f3880a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Boolean f3881b;
    private String c;
    private Set<Integer> d;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzr(zzf zzfVar) {
        b.a(zzfVar);
        this.f3880a = zzfVar;
    }

    public boolean zzmW() {
        return false;
    }

    public boolean zzmX() {
        if (this.f3881b == null) {
            synchronized (this) {
                if (this.f3881b == null) {
                    ApplicationInfo applicationInfo = this.f3880a.getContext().getApplicationInfo();
                    String a2 = l.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f3881b = Boolean.valueOf(str != null && str.equals(a2));
                    }
                    if ((this.f3881b == null || !this.f3881b.booleanValue()) && "com.google.android.gms.analytics".equals(a2)) {
                        this.f3881b = Boolean.TRUE;
                    }
                    if (this.f3881b == null) {
                        this.f3881b = Boolean.TRUE;
                        this.f3880a.zzlR().zzbK("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f3881b.booleanValue();
    }

    public boolean zzmY() {
        return zzy.zzXE.get().booleanValue();
    }

    public int zzmZ() {
        return zzy.zzXX.get().intValue();
    }

    public int zznA() {
        return zzy.zzYi.get().intValue();
    }

    public long zznB() {
        return zzy.zzYj.get().longValue();
    }

    public long zznC() {
        return zzy.zzYs.get().longValue();
    }

    public int zzna() {
        return zzy.zzYb.get().intValue();
    }

    public int zznb() {
        return zzy.zzYc.get().intValue();
    }

    public int zznc() {
        return zzy.zzYd.get().intValue();
    }

    public long zznd() {
        return zzy.zzXM.get().longValue();
    }

    public long zzne() {
        return zzy.zzXL.get().longValue();
    }

    public long zznf() {
        return zzy.zzXP.get().longValue();
    }

    public long zzng() {
        return zzy.zzXQ.get().longValue();
    }

    public int zznh() {
        return zzy.zzXR.get().intValue();
    }

    public int zzni() {
        return zzy.zzXS.get().intValue();
    }

    public long zznj() {
        return zzy.zzYf.get().intValue();
    }

    public String zznk() {
        return zzy.zzXU.get();
    }

    public String zznl() {
        return zzy.zzXT.get();
    }

    public String zznm() {
        return zzy.zzXV.get();
    }

    public String zznn() {
        return zzy.zzXW.get();
    }

    public zzm zzno() {
        return zzm.zzbP(zzy.zzXY.get());
    }

    public zzo zznp() {
        return zzo.zzbQ(zzy.zzXZ.get());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x006a -> B:13:0x0055). Please submit an issue!!! */
    public Set<Integer> zznq() {
        String str = zzy.zzYe.get();
        if (this.d == null || this.c == null || !this.c.equals(str)) {
            String[] split = TextUtils.split(str, ",");
            HashSet hashSet = new HashSet();
            for (String str2 : split) {
                try {
                    hashSet.add(Integer.valueOf(Integer.parseInt(str2)));
                } catch (NumberFormatException e) {
                }
            }
            this.c = str;
            this.d = hashSet;
        }
        return this.d;
    }

    public long zznr() {
        return zzy.zzYn.get().longValue();
    }

    public long zzns() {
        return zzy.zzYo.get().longValue();
    }

    public long zznt() {
        return zzy.zzYr.get().longValue();
    }

    public int zznu() {
        return zzy.zzXI.get().intValue();
    }

    public int zznv() {
        return zzy.zzXK.get().intValue();
    }

    public String zznw() {
        return "google_analytics_v4.db";
    }

    public String zznx() {
        return "google_analytics2_v4.db";
    }

    public long zzny() {
        return 86400000L;
    }

    public int zznz() {
        return zzy.zzYh.get().intValue();
    }
}
