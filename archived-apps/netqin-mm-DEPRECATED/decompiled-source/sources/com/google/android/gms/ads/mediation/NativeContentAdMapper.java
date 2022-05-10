package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeContentAdMapper.class */
public class NativeContentAdMapper extends NativeAdMapper {

    /* renamed from: h */
    public String f22874h;

    /* renamed from: i */
    public List<NativeAd.Image> f22875i;

    /* renamed from: j */
    public String f22876j;

    /* renamed from: k */
    public NativeAd.Image f22877k;

    /* renamed from: l */
    public String f22878l;

    /* renamed from: m */
    public String f22879m;

    /* renamed from: a */
    public final String m17930a() {
        return this.f22879m;
    }

    /* renamed from: a */
    public final void m17929a(NativeAd.Image image) {
        this.f22877k = image;
    }

    /* renamed from: a */
    public final void m17928a(String str) {
        this.f22879m = str;
    }

    /* renamed from: b */
    public final NativeAd.Image m17927b() {
        return this.f22877k;
    }

    public final String getBody() {
        return this.f22876j;
    }

    public final String getCallToAction() {
        return this.f22878l;
    }

    public final String getHeadline() {
        return this.f22874h;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f22875i;
    }

    public final void setBody(String str) {
        this.f22876j = str;
    }

    public final void setCallToAction(String str) {
        this.f22878l = str;
    }

    public final void setHeadline(String str) {
        this.f22874h = str;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f22875i = list;
    }
}
