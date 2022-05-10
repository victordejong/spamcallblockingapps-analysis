package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.ads.ExtraHints;
import com.google.android.gms.internal.ads.zzdci;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdci.class */
public final class zzdci implements zzdgx<zzdcg> {

    /* renamed from: a */
    public final String f27116a;

    /* renamed from: b */
    public final zzdzb f27117b;

    /* renamed from: c */
    public final zzcku f27118c;

    public zzdci(String str, zzdzb zzdzbVar, zzcku zzckuVar) {
        this.f27116a = str;
        this.f27117b = zzdzbVar;
        this.f27118c = zzckuVar;
    }

    /* renamed from: a */
    public static Bundle m13656a(zzdpa zzdpaVar) {
        Bundle bundle = new Bundle();
        try {
            if (zzdpaVar.m13342n() != null) {
                bundle.putString("sdk_version", zzdpaVar.m13342n().toString());
            }
        } catch (zzdos e) {
        }
        try {
            if (zzdpaVar.m13343m() != null) {
                bundle.putString("adapter_version", zzdpaVar.m13343m().toString());
            }
        } catch (zzdos e2) {
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdcg> mo13576a() {
        if (new BigInteger(this.f27116a).equals(BigInteger.ONE)) {
            if (!zzdwf.m13088b((String) zzwm.m11166e().m16921a(zzabb.f23694J0))) {
                return this.f27117b.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.ss

                    /* renamed from: a */
                    public final zzdci f15320a;

                    {
                        this.f15320a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f15320a.m13655b();
                    }
                });
            }
        }
        return zzdyq.m12988a(new zzdcg(new Bundle()));
    }

    /* renamed from: b */
    public final /* synthetic */ zzdcg m13655b() throws Exception {
        List<String> asList = Arrays.asList(((String) zzwm.m11166e().m16921a(zzabb.f23694J0)).split(ExtraHints.KEYWORD_SEPARATOR));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                bundle.putBundle(str, m13656a(this.f27118c.m14103a(str, new JSONObject())));
            } catch (zzdos e) {
            }
        }
        return new zzdcg(bundle);
    }
}
