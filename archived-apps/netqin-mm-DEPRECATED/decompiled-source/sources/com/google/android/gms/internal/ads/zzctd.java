package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctd.class */
public final class zzctd {

    /* renamed from: c */
    public zzdnv f26501c = null;

    /* renamed from: b */
    public final Map<String, zzvr> f26500b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    public final List<zzvr> f26499a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final List<zzvr> m13868a() {
        return this.f26499a;
    }

    /* renamed from: a */
    public final void m13867a(zzdnv zzdnvVar) {
        String str = zzdnvVar.f27606v;
        if (!this.f26500b.containsKey(str)) {
            Bundle bundle = new Bundle();
            Iterator<String> keys = zzdnvVar.f27605u.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    bundle.putString(next, zzdnvVar.f27605u.getString(next));
                } catch (JSONException e) {
                }
            }
            zzvr zzvrVar = new zzvr(zzdnvVar.f27557D, 0L, null, bundle);
            this.f26499a.add(zzvrVar);
            this.f26500b.put(str, zzvrVar);
        }
    }

    /* renamed from: a */
    public final void m13866a(zzdnv zzdnvVar, long j, zzva zzvaVar) {
        String str = zzdnvVar.f27606v;
        if (this.f26500b.containsKey(str)) {
            if (this.f26501c == null) {
                this.f26501c = zzdnvVar;
            }
            zzvr zzvrVar = this.f26500b.get(str);
            zzvrVar.f29054b = j;
            zzvrVar.f29055c = zzvaVar;
        }
    }

    /* renamed from: b */
    public final zzbty m13865b() {
        return new zzbty(this.f26501c, "", this);
    }
}
