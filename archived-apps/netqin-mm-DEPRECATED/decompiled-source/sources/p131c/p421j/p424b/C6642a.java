package p131c.p421j.p424b;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.Collections;
import java.util.List;
/* renamed from: c.j.b.a */
/* loaded from: classes2-dex2jar.jar:c/j/b/a.class */
public class C6642a extends AdLoader {

    /* renamed from: m */
    public boolean f20513m = false;

    /* renamed from: n */
    public boolean f20514n = false;

    public C6642a(String str, AdFormat adFormat, String str2, Context context, AdLoader.Listener listener) {
        super(str, adFormat, str2, context, listener);
    }

    /* renamed from: a */
    public String m20216a() {
        AdResponse adResponse = this.f34977g;
        if (adResponse != null) {
            return adResponse.getClickTrackingUrl();
        }
        return null;
    }

    /* renamed from: a */
    public void m20215a(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f34977g != null && !this.f20514n) {
            this.f20514n = true;
            TrackingRequest.makeTrackingHttpRequest(m20216a(), context);
        }
    }

    /* renamed from: b */
    public List<String> m20214b() {
        AdResponse adResponse = this.f34977g;
        return adResponse != null ? adResponse.getImpressionTrackingUrls() : Collections.emptyList();
    }

    /* renamed from: b */
    public void m20213b(Context context) {
        Preconditions.checkNotNull(context);
        if (this.f34977g != null && !this.f20513m) {
            this.f20513m = true;
            TrackingRequest.makeTrackingHttpRequest(m20214b(), context);
            new SingleImpression(this.f34977g.getAdUnitId(), this.f34977g.getImpressionData()).sendImpression();
        }
    }

    /* renamed from: c */
    public AdResponse m20212c() {
        return this.f34977g;
    }
}
