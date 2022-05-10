package p131c.p396i.p397a.p406i.p411f.p412h;

import android.os.SystemClock;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p406i.p411f.AbstractC6586e;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.i.f.h.d */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/d.class */
public class C6594d extends AbstractC6586e<AppOpenAd> {

    /* renamed from: e */
    public FullScreenContentCallback f20401e = new C6595a();

    /* renamed from: c.i.a.i.f.h.d$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/d$a.class */
    public class C6595a extends FullScreenContentCallback {
        public C6595a() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        /* renamed from: a */
        public void mo18120a() {
            if (C6594d.this.f20386c != null) {
                C6594d.this.f20386c.mo3231b(C6594d.this.f20385b, 0);
            }
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        /* renamed from: a */
        public void mo18119a(AdError adError) {
            if (C6594d.this.f20386c != null) {
                C6594d.this.f20386c.mo3294c(C6594d.this.f20385b, 0);
            }
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        /* renamed from: b */
        public void mo18118b() {
            if (C6594d.this.f20385b != null) {
                C6618e a = C6618e.m20334a();
                a.m20331a("key_place_frequency_" + C6594d.this.f20385b.getPlaceId(), SystemClock.elapsedRealtime());
                if (C6594d.this.f20386c != null) {
                    C6594d.this.f20386c.mo3230d(C6594d.this.f20385b, 0);
                }
                C6594d.this.mo20446a();
            }
        }
    }

    public C6594d(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20439a(AppOpenAd appOpenAd) {
        appOpenAd.mo11468a(C6489a.m20721a(), this.f20401e);
        return true;
    }
}
