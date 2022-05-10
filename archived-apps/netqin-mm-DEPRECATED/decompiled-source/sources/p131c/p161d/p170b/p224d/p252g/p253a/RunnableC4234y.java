package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.internal.ads.zzagq;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzxc;
/* renamed from: c.d.b.d.g.a.y */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y.class */
public final class RunnableC4234y implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ PublisherAdView f16078a;

    /* renamed from: b */
    public final /* synthetic */ zzxc f16079b;

    /* renamed from: c */
    public final /* synthetic */ zzagq f16080c;

    public RunnableC4234y(zzagq zzagqVar, PublisherAdView publisherAdView, zzxc zzxcVar) {
        this.f16080c = zzagqVar;
        this.f16078a = publisherAdView;
        this.f16079b = zzxcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener;
        if (this.f16078a.m18073a(this.f16079b)) {
            onPublisherAdViewLoadedListener = this.f16080c.f24086a;
            onPublisherAdViewLoadedListener.m18039a(this.f16078a);
            return;
        }
        zzbbq.m15852d("Could not bind.");
    }
}
