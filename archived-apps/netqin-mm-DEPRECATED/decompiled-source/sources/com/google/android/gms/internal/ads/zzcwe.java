package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwe.class */
public abstract class zzcwe<AdT> implements zzcta<AdT> {
    /* renamed from: a */
    public static Bundle m13824a(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    /* renamed from: a */
    public abstract zzdzc<AdT> mo13823a(zzdok zzdokVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        return !TextUtils.isEmpty(zzdnvVar.f27605u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<AdT> mo13769b(zzdog zzdogVar, zzdnv zzdnvVar) {
        String optString = zzdnvVar.f27605u.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzdok zzdokVar = zzdogVar.f27633a.f27632a;
        zzdom zzdomVar = new zzdom();
        zzdomVar.m13435a(zzdokVar);
        zzdomVar.m13429a(optString);
        Bundle a = m13824a(zzdokVar.f27642d.f29013m);
        Bundle a2 = m13824a(a.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        a2.putInt("gw", 1);
        String optString2 = zzdnvVar.f27605u.optString("mad_hac", null);
        if (optString2 != null) {
            a2.putString("mad_hac", optString2);
        }
        String optString3 = zzdnvVar.f27605u.optString("adJson", null);
        if (optString3 != null) {
            a2.putString("_ad", optString3);
        }
        a2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzdnvVar.f27556C.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzdnvVar.f27556C.optString(next, null);
            if (next != null) {
                a2.putString(next, optString4);
            }
        }
        a.putBundle("com.google.ads.mediation.admob.AdMobAdapter", a2);
        zzvg zzvgVar = zzdokVar.f27642d;
        zzdomVar.m13433a(new zzvg(zzvgVar.f29001a, zzvgVar.f29002b, a2, zzvgVar.f29004d, zzvgVar.f29005e, zzvgVar.f29006f, zzvgVar.f29007g, zzvgVar.f29008h, zzvgVar.f29009i, zzvgVar.f29010j, zzvgVar.f29011k, zzvgVar.f29012l, a, zzvgVar.f29014n, zzvgVar.f29015o, zzvgVar.f29016p, zzvgVar.f29017q, zzvgVar.f29018r, zzvgVar.f29019s, zzvgVar.f29020t, zzvgVar.f29021u, zzvgVar.f29022v));
        zzdok d = zzdomVar.m13420d();
        Bundle bundle = new Bundle();
        zzdnw zzdnwVar = zzdogVar.f27634b.f27630b;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzdnwVar.f27611a));
        bundle2.putInt("refresh_interval", zzdnwVar.f27613c);
        bundle2.putString("gws_query_id", zzdnwVar.f27612b);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzdogVar.f27633a.f27632a.f27644f;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzdnvVar.f27606v);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzdnvVar.f27584c));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzdnvVar.f27586d));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzdnvVar.f27599o));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzdnvVar.f27597m));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzdnvVar.f27591g));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzdnvVar.f27592h));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzdnvVar.f27593i));
        bundle3.putString(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, zzdnvVar.f27594j);
        bundle3.putString("valid_from_timestamp", zzdnvVar.f27595k);
        bundle3.putBoolean("is_closable_area_disabled", zzdnvVar.f27564K);
        if (zzdnvVar.f27596l != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzdnvVar.f27596l.f24529b);
            bundle4.putString("rb_type", zzdnvVar.f27596l.f24528a);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return mo13823a(d, bundle);
    }
}
