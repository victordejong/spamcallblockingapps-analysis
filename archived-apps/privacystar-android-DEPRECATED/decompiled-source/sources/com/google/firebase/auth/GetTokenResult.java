package com.google.firebase.auth;

import android.support.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.annotations.PublicApi;
import java.util.Map;
@PublicApi
/* loaded from: classes-dex2jar.jar:com/google/firebase/auth/GetTokenResult.class */
public class GetTokenResult {
    private String zza;
    private Map<String, Object> zzb;

    @KeepForSdk
    public GetTokenResult(String str, Map<String, Object> map) {
        this.zza = str;
        this.zzb = map;
    }

    private long zza(String str) {
        Integer num = (Integer) this.zzb.get(str);
        if (num == null) {
            return 0L;
        }
        return num.longValue();
    }

    @PublicApi
    public long getAuthTimestamp() {
        return zza("auth_time");
    }

    @PublicApi
    public Map<String, Object> getClaims() {
        return this.zzb;
    }

    @PublicApi
    public long getExpirationTimestamp() {
        return zza("exp");
    }

    @PublicApi
    public long getIssuedAtTimestamp() {
        return zza("iat");
    }

    @Nullable
    @PublicApi
    public String getSignInProvider() {
        Map map = (Map) this.zzb.get("firebase");
        if (map != null) {
            return (String) map.get("sign_in_provider");
        }
        return null;
    }

    @Nullable
    @PublicApi
    public String getToken() {
        return this.zza;
    }
}
