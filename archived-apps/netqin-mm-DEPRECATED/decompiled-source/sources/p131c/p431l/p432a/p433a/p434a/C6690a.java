package p131c.p431l.p432a.p433a.p434a;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.netqin.p525cm.main.p529ui.NqApplication;
import java.util.Date;
import p131c.p431l.p432a.p468n.C6854m;
/* renamed from: c.l.a.a.a.a */
/* loaded from: classes-dex2jar.jar:c/l/a/a/a/a.class */
public class C6690a {

    /* renamed from: f */
    public static final String f20651f = (String) C6854m.m19558a("AdmobOpenAds", "ca-app-pub-7839839351978639/8882078790");

    /* renamed from: b */
    public AppOpenAd.AppOpenAdLoadCallback f20653b;

    /* renamed from: c */
    public final NqApplication f20654c;

    /* renamed from: d */
    public boolean f20655d;

    /* renamed from: a */
    public AppOpenAd f20652a = null;

    /* renamed from: e */
    public long f20656e = 0;

    /* renamed from: c.l.a.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/a/a$a.class */
    public class C6691a extends AppOpenAd.AppOpenAdLoadCallback {
        public C6691a() {
        }

        @Override // com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdLoadCallback
        /* renamed from: a */
        public void mo5286a(LoadAdError loadAdError) {
            String str = "onAppOpenAdFailedToLoad_" + loadAdError.toString();
        }

        @Override // com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdLoadCallback
        /* renamed from: a */
        public void mo5285a(AppOpenAd appOpenAd) {
            C6690a.this.f20652a = appOpenAd;
            C6690a.this.f20656e = new Date().getTime();
        }
    }

    /* renamed from: c.l.a.a.a.a$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/a/a$b.class */
    public class C6692b extends FullScreenContentCallback {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6693c f20658a;

        public C6692b(AbstractC6693c cVar) {
            this.f20658a = cVar;
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        /* renamed from: a */
        public void mo18120a() {
            C6690a.this.f20652a = null;
            C6690a.this.f20655d = false;
            AbstractC6693c cVar = this.f20658a;
            if (cVar != null) {
                cVar.onClose();
            }
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        /* renamed from: a */
        public void mo18119a(AdError adError) {
            AbstractC6693c cVar = this.f20658a;
            if (cVar != null) {
                cVar.mo3295a();
            }
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        /* renamed from: b */
        public void mo18118b() {
            C6690a.this.f20655d = true;
        }
    }

    /* renamed from: c.l.a.a.a.a$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/a/a$c.class */
    public interface AbstractC6693c {
        /* renamed from: a */
        void mo3295a();

        void onClose();
    }

    public C6690a(NqApplication nqApplication) {
        this.f20654c = nqApplication;
    }

    /* renamed from: a */
    public void m20046a() {
        if (!m20039c()) {
            this.f20653b = new C6691a();
            AppOpenAd.m18082a(this.f20654c, f20651f, m20040b(), 1, this.f20653b);
        }
    }

    /* renamed from: a */
    public void m20044a(Activity activity, AbstractC6693c cVar) {
        if (this.f20655d || !m20039c()) {
            Log.d("AppOpenManager", "Can not show ad.");
            if (cVar != null) {
                cVar.mo3295a();
                return;
            }
            return;
        }
        Log.d("AppOpenManager", "Will show ad.");
        this.f20652a.mo11468a(activity, new C6692b(cVar));
    }

    /* renamed from: a */
    public final boolean m20045a(long j) {
        return new Date().getTime() - this.f20656e < j * 3600000;
    }

    /* renamed from: b */
    public final AdRequest m20040b() {
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.m18139b("EC890C61E109DCEF900545EE21ACAF8D");
        return builder.m18147a();
    }

    /* renamed from: c */
    public boolean m20039c() {
        return this.f20652a != null && m20045a(4L);
    }
}
