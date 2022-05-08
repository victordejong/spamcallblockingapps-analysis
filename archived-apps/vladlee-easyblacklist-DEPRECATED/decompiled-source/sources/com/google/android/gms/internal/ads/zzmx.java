package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmx.class */
public final class zzmx {
    public final int viewportHeight;
    public final int viewportWidth;
    public final String zzbdi;
    public final String zzbdj;
    public final boolean zzbdk;
    public final boolean zzbdl;
    public final int zzbdm;
    public final int zzbdn;
    public final int zzbdo;
    public final boolean zzbdp;
    public final boolean zzbdq;
    public final boolean zzbdr;

    public zzmx() {
        this((byte) 0);
    }

    private zzmx(byte b) {
        this.zzbdi = null;
        this.zzbdj = null;
        this.zzbdk = false;
        this.zzbdl = true;
        this.zzbdm = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzbdn = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzbdo = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzbdp = true;
        this.zzbdq = true;
        this.viewportWidth = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.viewportHeight = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzbdr = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmx zzmxVar = (zzmx) obj;
        return this.zzbdl == zzmxVar.zzbdl && this.zzbdm == zzmxVar.zzbdm && this.zzbdn == zzmxVar.zzbdn && this.zzbdp == zzmxVar.zzbdp && this.zzbdq == zzmxVar.zzbdq && this.zzbdr == zzmxVar.zzbdr && this.viewportWidth == zzmxVar.viewportWidth && this.viewportHeight == zzmxVar.viewportHeight && this.zzbdo == zzmxVar.zzbdo && TextUtils.equals(null, null) && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        throw new NullPointerException();
    }
}
