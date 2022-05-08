package gogolook.callgogolook2.p074ad;

import com.aotter.net.trek.model.ImageSrc;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.p164j.AbstractC6217b;
import p459j.p460a.p568u.C13640c;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010$\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\b0\fH\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/ad/WCAotterTrekConfiguration;", "Lcom/gogolook/adsdk/config/IAotterTrekConfiguration;", "()V", "fetchingBypassMoPub", "", "getFetchingBypassMoPub", "()Z", "hasSupportedAdImageSrc", "Lcom/aotter/net/trek/model/ImageSrc;", "placeName", "", "adImgs", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.WCAotterTrekConfiguration */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/WCAotterTrekConfiguration.class */
public final class WCAotterTrekConfiguration implements AbstractC6217b {
    public static final WCAotterTrekConfiguration INSTANCE = new WCAotterTrekConfiguration();

    @Override // p081h.p160h.p161a.p164j.AbstractC6217b
    /* renamed from: a */
    public ImageSrc mo23556a(String str, Map<String, ? extends ImageSrc> map) {
        C15149k.m377b(str, "placeName");
        C15149k.m377b(map, "adImgs");
        Set<String> b = C15149k.m384a((Object) str, (Object) AotterTrekUtils.PLACE_NAME_CALL_END_FULL) ? AotterTrekUtils.INSTANCE.m28796b() : C15149k.m384a((Object) str, (Object) AotterTrekUtils.PLACE_NAME_CALL_END_BANNER) ? AotterTrekUtils.INSTANCE.m28799a() : C15149k.m384a((Object) str, (Object) AotterTrekUtils.PLACE_NAME_SMS) ? AotterTrekUtils.INSTANCE.m28794c() : null;
        if (b == null) {
            return null;
        }
        for (Map.Entry<String, ? extends ImageSrc> entry : map.entrySet()) {
            if (b.contains(entry.getKey())) {
                return (ImageSrc) entry.getValue();
            }
        }
        return null;
    }

    @Override // p081h.p160h.p161a.p164j.AbstractC6217b
    /* renamed from: a */
    public boolean mo23557a() {
        return C13640c.m3745d().m3753a("aottertrek_fetching_bypass_mopub");
    }
}
