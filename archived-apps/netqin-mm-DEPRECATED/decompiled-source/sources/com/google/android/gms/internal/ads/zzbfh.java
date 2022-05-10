package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfh.class */
public final class zzbfh implements zzahq<zzbdu> {
    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbdu zzbduVar, Map map) {
        zzbdu zzbduVar2 = zzbduVar;
        zzbhd i = zzbduVar2.mo15558i();
        zzbhd zzbhdVar = i;
        if (i == null) {
            try {
                zzbhdVar = new zzbhd(zzbduVar2, Float.parseFloat((String) map.get(VastIconXmlManager.DURATION)), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzbduVar2.mo15586a(zzbhdVar);
            } catch (NullPointerException | NumberFormatException e) {
                zzbbq.m15855b("Unable to parse videoMeta message.", e);
                zzp.m17965g().m16188a(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float parseFloat = Float.parseFloat((String) map.get(VastIconXmlManager.DURATION));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat2 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        if (parseInt < 0 || 3 < parseInt) {
            parseInt = 0;
        }
        String str = (String) map.get("aspectRatio");
        float parseFloat3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzbbq.m15859a(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 140);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(parseFloat2);
            sb.append(" , duration : ");
            sb.append(parseFloat);
            sb.append(" , isMuted : ");
            sb.append(equals);
            sb.append(" , playbackState : ");
            sb.append(parseInt);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            zzbbq.m15858a(sb.toString());
        }
        zzbhdVar.m15538a(parseFloat2, parseFloat, parseInt, equals, parseFloat3);
    }
}
