package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclk.class */
public abstract class zzclk<AdT> implements zzcio<AdT> {
    /* renamed from: a */
    private static Bundle m3740a(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    /* renamed from: a */
    protected abstract zzdhe<AdT> mo3739a(zzczu zzczuVar, Bundle bundle);

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return !TextUtils.isEmpty(zzczlVar.zzglr.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<AdT> zzb(zzczt zzcztVar, zzczl zzczlVar) {
        String optString = zzczlVar.zzglr.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzczu zzczuVar = zzcztVar.zzgmh.zzfgl;
        zzczw zzgk = new zzczw().zzg(zzczuVar.zzgml).zzd(zzczuVar.zzblm).zzc(zzczuVar.zzgmj).zzgk(zzczuVar.zzgmm).zzc(zzczuVar.zzgmk).zzb(zzczuVar.zzgmn).zzc(zzczuVar.zzgmo).zzb(zzczuVar.zzddz).zzb(zzczuVar.zzgmp).zzb(zzczuVar.zzgmq).zzgk(optString);
        Bundle a = m3740a(zzczuVar.zzgml.zzccf);
        Bundle a2 = m3740a(a.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        a2.putInt("gw", 1);
        String optString2 = zzczlVar.zzglr.optString("mad_hac", null);
        if (optString2 != null) {
            a2.putString("mad_hac", optString2);
        }
        String optString3 = zzczlVar.zzglr.optString("adJson", null);
        if (optString3 != null) {
            a2.putString("_ad", optString3);
        }
        a2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzczlVar.zzglu.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzczlVar.zzglu.optString(next, null);
            if (next != null) {
                a2.putString(next, optString4);
            }
        }
        a.putBundle("com.google.ads.mediation.admob.AdMobAdapter", a2);
        zzczu zzaos = zzgk.zzg(new zzug(zzczuVar.zzgml.versionCode, zzczuVar.zzgml.zzcby, a2, zzczuVar.zzgml.zzcbz, zzczuVar.zzgml.zzcca, zzczuVar.zzgml.zzccb, zzczuVar.zzgml.zzabo, zzczuVar.zzgml.zzbkh, zzczuVar.zzgml.zzccc, zzczuVar.zzgml.zzccd, zzczuVar.zzgml.zzmi, zzczuVar.zzgml.zzcce, a, zzczuVar.zzgml.zzccg, zzczuVar.zzgml.zzcch, zzczuVar.zzgml.zzcci, zzczuVar.zzgml.zzccj, zzczuVar.zzgml.zzcck, zzczuVar.zzgml.zzccm, zzczuVar.zzgml.zzabp, zzczuVar.zzgml.zzabq, zzczuVar.zzgml.zzccl)).zzaos();
        Bundle bundle = new Bundle();
        zzczn zzcznVar = zzcztVar.zzgmi.zzgmf;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzcznVar.zzdbt));
        bundle2.putInt("refresh_interval", zzcznVar.zzgmb);
        bundle2.putString("gws_query_id", zzcznVar.zzbzo);
        bundle.putBundle("parent_common_config", bundle2);
        String str = zzcztVar.zzgmh.zzfgl.zzgmm;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", str);
        bundle3.putString("allocation_id", zzczlVar.zzdcm);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzczlVar.zzdbq));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzczlVar.zzdbr));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzczlVar.zzdkm));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzczlVar.zzglm));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzczlVar.zzdkz));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzczlVar.zzdla));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzczlVar.zzgll));
        bundle3.putString("transaction_id", zzczlVar.zzdcx);
        bundle3.putString("valid_from_timestamp", zzczlVar.zzdcy);
        bundle3.putBoolean("is_closable_area_disabled", zzczlVar.zzblf);
        if (zzczlVar.zzdky != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzczlVar.zzdky.zzdno);
            bundle4.putString("rb_type", zzczlVar.zzdky.type);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return mo3739a(zzaos, bundle);
    }
}
