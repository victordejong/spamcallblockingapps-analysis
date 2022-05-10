package p573f.p577r;

import com.mopub.nativeads.MoPubNativeAdPositioning;
/* renamed from: f.r.e0 */
/* loaded from: classes2-dex2jar.jar:f/r/e0.class */
public class C9962e0 extends C9960d0 {
    /* renamed from: a */
    public static final int m1730a(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? i + (i / 3) : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }
}
