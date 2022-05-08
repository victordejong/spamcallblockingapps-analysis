package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.tagmanager.DataLayer;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzg.class */
public final class zzg implements DataLayer.zzb {
    private final Context zzri;

    public zzg(Context context) {
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzb
    public final void zzf(Map<String, Object> map) {
        String queryParameter;
        Object obj = map.get("gtm.url");
        Object obj2 = obj;
        if (obj == null) {
            Object obj3 = map.get("gtm");
            obj2 = obj;
            if (obj3 != null) {
                obj2 = obj;
                if (obj3 instanceof Map) {
                    obj2 = ((Map) obj3).get("url");
                }
            }
        }
        if (obj2 != null && (obj2 instanceof String) && (queryParameter = Uri.parse((String) obj2).getQueryParameter("referrer")) != null) {
            zzcw.zzh(this.zzri, queryParameter);
        }
    }
}
