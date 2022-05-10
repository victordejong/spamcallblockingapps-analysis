package p131c.p396i.p397a.p406i.p411f.p413i;

import android.app.Activity;
import com.etap.EtapBuild;
import com.etap.EtapInterstitial;
import com.etap.IAdListener;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.p406i.p411f.AbstractC6582c;
import p131c.p396i.p397a.p417j.C6617d;
/* renamed from: c.i.a.i.f.i.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/i/b.class */
public class C6600b extends AbstractC6582c<EtapInterstitial> {

    /* renamed from: e */
    public boolean f20405e;

    /* renamed from: f */
    public IAdListener f20406f = new C6601a(this);

    /* renamed from: g */
    public C6490b.C6494d f20407g = new C6602b();

    /* renamed from: c.i.a.i.f.i.b$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/i/b$a.class */
    public class C6601a implements IAdListener {
        public C6601a(C6600b bVar) {
        }
    }

    /* renamed from: c.i.a.i.f.i.b$b */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/i/b$b.class */
    public class C6602b extends C6490b.C6494d {
        public C6602b() {
        }

        @Override // p131c.p396i.p397a.C6490b.C6494d, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            if (C6600b.this.f20405e && activity.toString().equals(C6490b.m20687l())) {
                C6489a.m20718b().unregisterActivityLifecycleCallbacks(C6600b.this.f20407g);
                C6600b.this.f20406f.onAdClosed();
            }
        }
    }

    public C6600b(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20386a(EtapInterstitial etapInterstitial) {
        etapInterstitial.setAdListener(this.f20406f);
        ((EtapBuild) C6617d.m20353a(C6617d.m20354a(etapInterstitial, "c"), EtapBuild.class)).mAdListener = this.f20406f;
        etapInterstitial.show();
        return true;
    }
}
