package com.facebook.share.p046d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.C2283m;
import com.facebook.internal.AbstractServiceConnectionC2385b0;
import com.facebook.internal.C2371a;
import com.facebook.internal.C2372a0;
import com.facebook.internal.C2388c;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2434j0;
import com.facebook.internal.C2473q;
import com.facebook.internal.C2486r;
import com.facebook.internal.C2503y;
import com.facebook.share.internal.LikeContent;
import com.facebook.share.widget.LikeView;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.AbstractC6118d;
import p081h.p154f.AbstractC6128h;
import p081h.p154f.C6131k;
import p081h.p154f.C6134m;
import p081h.p154f.C6135n;
import p081h.p154f.C6145r;
import p081h.p154f.C6148s;
import p081h.p154f.EnumC6149t;
import p081h.p154f.EnumC6151v;
@Deprecated
/* renamed from: com.facebook.share.d.d */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/d.class */
public class C2577d {

    /* renamed from: o */
    public static final String f3431o = "d";

    /* renamed from: p */
    public static C2473q f3432p;

    /* renamed from: q */
    public static final ConcurrentHashMap<String, C2577d> f3433q = new ConcurrentHashMap<>();

    /* renamed from: r */
    public static C2434j0 f3434r = new C2434j0(1);

    /* renamed from: s */
    public static C2434j0 f3435s = new C2434j0(1);

    /* renamed from: t */
    public static Handler f3436t;

    /* renamed from: u */
    public static String f3437u;

    /* renamed from: v */
    public static boolean f3438v;

    /* renamed from: w */
    public static volatile int f3439w;

    /* renamed from: a */
    public String f3440a;

    /* renamed from: b */
    public LikeView.EnumC2719g f3441b;

    /* renamed from: c */
    public boolean f3442c;

    /* renamed from: d */
    public String f3443d;

    /* renamed from: e */
    public String f3444e;

    /* renamed from: f */
    public String f3445f;

    /* renamed from: g */
    public String f3446g;

    /* renamed from: h */
    public String f3447h;

    /* renamed from: i */
    public String f3448i;

    /* renamed from: j */
    public boolean f3449j;

    /* renamed from: k */
    public boolean f3450k;

    /* renamed from: l */
    public boolean f3451l;

    /* renamed from: m */
    public Bundle f3452m;

    /* renamed from: n */
    public C2283m f3453n;

    /* renamed from: com.facebook.share.d.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$a.class */
    public class C2578a implements AbstractServiceConnectionC2385b0.AbstractC2387b {
        public C2578a() {
        }

        @Override // com.facebook.internal.AbstractServiceConnectionC2385b0.AbstractC2387b
        /* renamed from: a */
        public void mo34193a(Bundle bundle) {
            if (bundle != null && bundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED")) {
                C2577d.this.m34243a(bundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED"), bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") ? bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") : C2577d.this.f3443d, bundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") ? bundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") : C2577d.this.f3444e, bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") ? bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") : C2577d.this.f3445f, bundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") ? bundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") : C2577d.this.f3446g, bundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN") ? bundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN") : C2577d.this.f3447h);
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$a0 */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$a0.class */
    public static class RunnableC2579a0 implements Runnable {

        /* renamed from: a */
        public String f3455a;

        /* renamed from: b */
        public String f3456b;

        public RunnableC2579a0(String str, String str2) {
            this.f3455a = str;
            this.f3456b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2577d.m34232b(this.f3455a, this.f3456b);
        }
    }

    /* renamed from: com.facebook.share.d.d$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$b.class */
    public class C2580b implements C6145r.AbstractC6146a {

        /* renamed from: a */
        public final /* synthetic */ C2598q f3457a;

        /* renamed from: b */
        public final /* synthetic */ C2600s f3458b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC2606y f3459c;

        public C2580b(C2598q qVar, C2600s sVar, AbstractC2606y yVar) {
            this.f3457a = qVar;
            this.f3458b = sVar;
            this.f3459c = yVar;
        }

        @Override // p081h.p154f.C6145r.AbstractC6146a
        /* renamed from: a */
        public void mo23707a(C6145r rVar) {
            C2577d.this.f3448i = this.f3457a.f3495e;
            if (C2408g0.m34816d(C2577d.this.f3448i)) {
                C2577d.this.f3448i = this.f3458b.f3501e;
                C2577d.this.f3449j = this.f3458b.f3502f;
            }
            if (C2408g0.m34816d(C2577d.this.f3448i)) {
                C2503y.m34556a(EnumC6151v.DEVELOPER_ERRORS, C2577d.f3431o, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", C2577d.this.f3440a);
                C2577d.this.m34249a("get_verified_id", this.f3458b.getError() != null ? this.f3458b.getError() : this.f3457a.getError());
            }
            AbstractC2606y yVar = this.f3459c;
            if (yVar != null) {
                yVar.onComplete();
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$c.class */
    public static /* synthetic */ class C2581c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3461a = new int[LikeView.EnumC2719g.values().length];

        static {
            try {
                f3461a[LikeView.EnumC2719g.PAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$d.class */
    public static final class C2582d implements AbstractC2596o {

        /* renamed from: a */
        public final /* synthetic */ int f3462a;

        /* renamed from: b */
        public final /* synthetic */ int f3463b;

        /* renamed from: c */
        public final /* synthetic */ Intent f3464c;

        public C2582d(int i, int i2, Intent intent) {
            this.f3462a = i;
            this.f3463b = i2;
            this.f3464c = intent;
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2596o
        /* renamed from: a */
        public void mo33776a(C2577d dVar, C6131k kVar) {
            if (kVar == null) {
                dVar.m34265a(this.f3462a, this.f3463b, this.f3464c);
            } else {
                C2408g0.m34853a(C2577d.f3431o, (Exception) kVar);
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$e.class */
    public static final class RunnableC2583e implements Runnable {
        public RunnableC2583e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2577d.this.m34208h();
        }
    }

    /* renamed from: com.facebook.share.d.d$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$f.class */
    public static final class C2584f implements C2398d.AbstractC2399a {
        @Override // com.facebook.internal.C2398d.AbstractC2399a
        /* renamed from: a */
        public boolean mo34031a(int i, Intent intent) {
            return C2577d.m34241b(C2398d.EnumC2400b.Like.m34900a(), i, intent);
        }
    }

    /* renamed from: com.facebook.share.d.d$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$g.class */
    public static final class RunnableC2585g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2596o f3466a;

        /* renamed from: b */
        public final /* synthetic */ C2577d f3467b;

        /* renamed from: c */
        public final /* synthetic */ C6131k f3468c;

        public RunnableC2585g(AbstractC2596o oVar, C2577d dVar, C6131k kVar) {
            this.f3466a = oVar;
            this.f3467b = dVar;
            this.f3468c = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3466a.mo33776a(this.f3467b, this.f3468c);
        }
    }

    /* renamed from: com.facebook.share.d.d$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$h.class */
    public static final class C2586h extends AbstractC6118d {
        @Override // p081h.p154f.AbstractC6118d
        /* renamed from: a */
        public void mo23796a(AccessToken accessToken, AccessToken accessToken2) {
            Context e = C6135n.m23746e();
            if (accessToken2 == null) {
                int unused = C2577d.f3439w = (C2577d.f3439w + 1) % 1000;
                e.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", C2577d.f3439w).apply();
                C2577d.f3433q.clear();
                C2577d.f3432p.m34629a();
            }
            C2577d.m34219d((C2577d) null, "com.facebook.sdk.LikeActionController.DID_RESET");
        }
    }

    /* renamed from: com.facebook.share.d.d$i */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$i.class */
    public class C2587i extends AbstractC2626p {

        /* renamed from: a */
        public final /* synthetic */ Bundle f3469a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2587i(AbstractC6128h hVar, Bundle bundle) {
            super(hVar);
            this.f3469a = bundle;
        }

        @Override // com.facebook.share.p046d.AbstractC2626p
        /* renamed from: a */
        public void mo34034a(C2371a aVar) {
            mo34032a(aVar, new C6134m());
        }

        @Override // com.facebook.share.p046d.AbstractC2626p
        /* renamed from: a */
        public void mo34033a(C2371a aVar, Bundle bundle) {
            if (bundle != null && bundle.containsKey("object_is_liked")) {
                boolean z = bundle.getBoolean("object_is_liked");
                String str = C2577d.this.f3443d;
                String str2 = C2577d.this.f3444e;
                if (bundle.containsKey("like_count_string")) {
                    str = bundle.getString("like_count_string");
                    str2 = str;
                }
                String str3 = C2577d.this.f3445f;
                String str4 = C2577d.this.f3446g;
                if (bundle.containsKey("social_sentence")) {
                    str3 = bundle.getString("social_sentence");
                    str4 = str3;
                }
                String string = bundle.containsKey("object_is_liked") ? bundle.getString("unlike_token") : C2577d.this.f3447h;
                Bundle bundle2 = this.f3469a;
                Bundle bundle3 = bundle2;
                if (bundle2 == null) {
                    bundle3 = new Bundle();
                }
                bundle3.putString("call_id", aVar.m34982a().toString());
                C2577d.this.m34230c().m35293b("fb_like_control_dialog_did_succeed", bundle3);
                C2577d.this.m34243a(z, str, str2, str3, str4, string);
            }
        }

        @Override // com.facebook.share.p046d.AbstractC2626p
        /* renamed from: a */
        public void mo34032a(C2371a aVar, C6131k kVar) {
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Like Dialog failed with error : %s", kVar);
            Bundle bundle = this.f3469a;
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("call_id", aVar.m34982a().toString());
            C2577d.this.m34250a("present_dialog", bundle2);
            C2577d.m34226c(C2577d.this, "com.facebook.sdk.LikeActionController.DID_ERROR", C2372a0.m34962a(kVar));
        }
    }

    /* renamed from: com.facebook.share.d.d$j */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$j.class */
    public class C2588j implements AbstractC2606y {

        /* renamed from: a */
        public final /* synthetic */ Bundle f3471a;

        /* renamed from: com.facebook.share.d.d$j$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$j$a.class */
        public class C2589a implements C6145r.AbstractC6146a {

            /* renamed from: a */
            public final /* synthetic */ C2604w f3473a;

            public C2589a(C2604w wVar) {
                this.f3473a = wVar;
            }

            @Override // p081h.p154f.C6145r.AbstractC6146a
            /* renamed from: a */
            public void mo23707a(C6145r rVar) {
                C2577d.this.f3451l = false;
                if (this.f3473a.getError() != null) {
                    C2577d.this.m34245a(false);
                    return;
                }
                C2577d.this.f3447h = C2408g0.m34852a(this.f3473a.f3509e, (String) null);
                C2577d.this.f3450k = true;
                C2577d.this.m34230c().m35299a("fb_like_control_did_like", (Double) null, C2588j.this.f3471a);
                C2588j jVar = C2588j.this;
                C2577d.this.m34239b(jVar.f3471a);
            }
        }

        public C2588j(Bundle bundle) {
            this.f3471a = bundle;
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2606y
        public void onComplete() {
            if (C2408g0.m34816d(C2577d.this.f3448i)) {
                Bundle bundle = new Bundle();
                bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
                C2577d.m34226c(C2577d.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
                return;
            }
            C6145r rVar = new C6145r();
            C2577d dVar = C2577d.this;
            C2604w wVar = new C2604w(dVar.f3448i, C2577d.this.f3441b);
            wVar.mo34187a(rVar);
            rVar.m23719a(new C2589a(wVar));
            rVar.m23715q();
        }
    }

    /* renamed from: com.facebook.share.d.d$k */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$k.class */
    public class C2590k implements C6145r.AbstractC6146a {

        /* renamed from: a */
        public final /* synthetic */ C2605x f3475a;

        /* renamed from: b */
        public final /* synthetic */ Bundle f3476b;

        public C2590k(C2605x xVar, Bundle bundle) {
            this.f3475a = xVar;
            this.f3476b = bundle;
        }

        @Override // p081h.p154f.C6145r.AbstractC6146a
        /* renamed from: a */
        public void mo23707a(C6145r rVar) {
            C2577d.this.f3451l = false;
            if (this.f3475a.getError() != null) {
                C2577d.this.m34245a(true);
                return;
            }
            C2577d.this.f3447h = null;
            C2577d.this.f3450k = false;
            C2577d.this.m34230c().m35299a("fb_like_control_did_unlike", (Double) null, this.f3476b);
            C2577d.this.m34239b(this.f3476b);
        }
    }

    /* renamed from: com.facebook.share.d.d$l */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$l.class */
    public class C2591l implements AbstractC2606y {

        /* renamed from: com.facebook.share.d.d$l$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$l$a.class */
        public class C2592a implements C6145r.AbstractC6146a {

            /* renamed from: a */
            public final /* synthetic */ AbstractC2602u f3479a;

            /* renamed from: b */
            public final /* synthetic */ C2597p f3480b;

            public C2592a(AbstractC2602u uVar, C2597p pVar) {
                this.f3479a = uVar;
                this.f3480b = pVar;
            }

            @Override // p081h.p154f.C6145r.AbstractC6146a
            /* renamed from: a */
            public void mo23707a(C6145r rVar) {
                if (this.f3479a.getError() == null && this.f3480b.getError() == null) {
                    C2577d dVar = C2577d.this;
                    boolean a = this.f3479a.mo34191a();
                    C2597p pVar = this.f3480b;
                    dVar.m34243a(a, pVar.f3490e, pVar.f3491f, pVar.f3492g, pVar.f3493h, this.f3479a.mo34190b());
                    return;
                }
                C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Unable to refresh like state for id: '%s'", C2577d.this.f3440a);
            }
        }

        public C2591l() {
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2606y
        public void onComplete() {
            AbstractC2602u uVar;
            if (C2581c.f3461a[C2577d.this.f3441b.ordinal()] != 1) {
                C2577d dVar = C2577d.this;
                uVar = new C2599r(dVar.f3448i, C2577d.this.f3441b);
            } else {
                C2577d dVar2 = C2577d.this;
                uVar = new C2601t(dVar2.f3448i);
            }
            C2577d dVar3 = C2577d.this;
            C2597p pVar = new C2597p(dVar3.f3448i, C2577d.this.f3441b);
            C6145r rVar = new C6145r();
            uVar.mo34187a(rVar);
            pVar.mo34187a(rVar);
            rVar.m23719a(new C2592a(uVar, pVar));
            rVar.m23715q();
        }
    }

    /* renamed from: com.facebook.share.d.d$m */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$m.class */
    public abstract class AbstractC2593m implements AbstractC2607z {

        /* renamed from: a */
        public GraphRequest f3482a;

        /* renamed from: b */
        public String f3483b;

        /* renamed from: c */
        public LikeView.EnumC2719g f3484c;

        /* renamed from: d */
        public FacebookRequestError f3485d;

        /* renamed from: com.facebook.share.d.d$m$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$m$a.class */
        public class C2594a implements GraphRequest.AbstractC2230f {
            public C2594a() {
            }

            @Override // com.facebook.GraphRequest.AbstractC2230f
            /* renamed from: a */
            public void mo23821a(C6148s sVar) {
                AbstractC2593m.this.f3485d = sVar.m23705a();
                AbstractC2593m mVar = AbstractC2593m.this;
                FacebookRequestError facebookRequestError = mVar.f3485d;
                if (facebookRequestError != null) {
                    mVar.mo34189a(facebookRequestError);
                } else {
                    mVar.mo34188a(sVar);
                }
            }
        }

        public AbstractC2593m(C2577d dVar, String str, LikeView.EnumC2719g gVar) {
            this.f3483b = str;
            this.f3484c = gVar;
        }

        /* renamed from: a */
        public abstract void mo34189a(FacebookRequestError facebookRequestError);

        /* renamed from: a */
        public void m34192a(GraphRequest graphRequest) {
            this.f3482a = graphRequest;
            graphRequest.m35450a(C6135n.m23735p());
            graphRequest.m35459a((GraphRequest.AbstractC2230f) new C2594a());
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2607z
        /* renamed from: a */
        public void mo34187a(C6145r rVar) {
            rVar.add(this.f3482a);
        }

        /* renamed from: a */
        public abstract void mo34188a(C6148s sVar);

        @Override // com.facebook.share.p046d.C2577d.AbstractC2607z
        public FacebookRequestError getError() {
            return this.f3485d;
        }
    }

    /* renamed from: com.facebook.share.d.d$n */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$n.class */
    public static class RunnableC2595n implements Runnable {

        /* renamed from: a */
        public String f3487a;

        /* renamed from: b */
        public LikeView.EnumC2719g f3488b;

        /* renamed from: c */
        public AbstractC2596o f3489c;

        public RunnableC2595n(String str, LikeView.EnumC2719g gVar, AbstractC2596o oVar) {
            this.f3487a = str;
            this.f3488b = gVar;
            this.f3489c = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2577d.m34233b(this.f3487a, this.f3488b, this.f3489c);
        }
    }

    @Deprecated
    /* renamed from: com.facebook.share.d.d$o */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$o.class */
    public interface AbstractC2596o {
        /* renamed from: a */
        void mo33776a(C2577d dVar, C6131k kVar);
    }

    /* renamed from: com.facebook.share.d.d$p */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$p.class */
    public class C2597p extends AbstractC2593m {

        /* renamed from: e */
        public String f3490e;

        /* renamed from: f */
        public String f3491f;

        /* renamed from: g */
        public String f3492g;

        /* renamed from: h */
        public String f3493h;

        public C2597p(String str, LikeView.EnumC2719g gVar) {
            super(C2577d.this, str, gVar);
            this.f3490e = C2577d.this.f3443d;
            this.f3491f = C2577d.this.f3444e;
            this.f3492g = C2577d.this.f3445f;
            this.f3493h = C2577d.this.f3446g;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            bundle.putString("locale", Locale.getDefault().toString());
            m34192a(new GraphRequest(AccessToken.m35507B(), str, bundle, EnumC6149t.GET));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error fetching engagement for object '%s' with type '%s' : %s", this.f3483b, this.f3484c, facebookRequestError);
            C2577d.this.m34249a("get_engagement", facebookRequestError);
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
            JSONObject c = C2408g0.m34820c(sVar.m23698b(), "engagement");
            if (c != null) {
                this.f3490e = c.optString("count_string_with_like", this.f3490e);
                this.f3491f = c.optString("count_string_without_like", this.f3491f);
                this.f3492g = c.optString("social_sentence_with_like", this.f3492g);
                this.f3493h = c.optString("social_sentence_without_like", this.f3493h);
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$q */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$q.class */
    public class C2598q extends AbstractC2593m {

        /* renamed from: e */
        public String f3495e;

        public C2598q(C2577d dVar, String str, LikeView.EnumC2719g gVar) {
            super(dVar, str, gVar);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "og_object.fields(id)");
            bundle.putString("ids", str);
            m34192a(new GraphRequest(AccessToken.m35507B(), "", bundle, EnumC6149t.GET));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.m35473b().contains("og_object")) {
                this.f3485d = null;
            } else {
                C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error getting the FB id for object '%s' with type '%s' : %s", this.f3483b, this.f3484c, facebookRequestError);
            }
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
            JSONObject optJSONObject;
            JSONObject c = C2408g0.m34820c(sVar.m23698b(), this.f3483b);
            if (c != null && (optJSONObject = c.optJSONObject("og_object")) != null) {
                this.f3495e = optJSONObject.optString("id");
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$r */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$r.class */
    public class C2599r extends AbstractC2593m implements AbstractC2602u {

        /* renamed from: e */
        public boolean f3496e;

        /* renamed from: f */
        public String f3497f;

        /* renamed from: g */
        public final String f3498g;

        /* renamed from: h */
        public final LikeView.EnumC2719g f3499h;

        public C2599r(String str, LikeView.EnumC2719g gVar) {
            super(C2577d.this, str, gVar);
            this.f3496e = C2577d.this.f3442c;
            this.f3498g = str;
            this.f3499h = gVar;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id,application");
            bundle.putString("object", this.f3498g);
            m34192a(new GraphRequest(AccessToken.m35507B(), "me/og.likes", bundle, EnumC6149t.GET));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error fetching like status for object '%s' with type '%s' : %s", this.f3498g, this.f3499h, facebookRequestError);
            C2577d.this.m34249a("get_og_object_like", facebookRequestError);
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
            JSONArray b = C2408g0.m34827b(sVar.m23698b(), "data");
            if (b != null) {
                for (int i = 0; i < b.length(); i++) {
                    JSONObject optJSONObject = b.optJSONObject(i);
                    if (optJSONObject != null) {
                        this.f3496e = true;
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject(MimeTypes.BASE_TYPE_APPLICATION);
                        AccessToken B = AccessToken.m35507B();
                        if (optJSONObject2 != null && AccessToken.m35506C() && C2408g0.m34858a(B.m35505a(), optJSONObject2.optString("id"))) {
                            this.f3497f = optJSONObject.optString("id");
                        }
                    }
                }
            }
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2602u
        /* renamed from: a */
        public boolean mo34191a() {
            return this.f3496e;
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2602u
        /* renamed from: b */
        public String mo34190b() {
            return this.f3497f;
        }
    }

    /* renamed from: com.facebook.share.d.d$s */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$s.class */
    public class C2600s extends AbstractC2593m {

        /* renamed from: e */
        public String f3501e;

        /* renamed from: f */
        public boolean f3502f;

        public C2600s(C2577d dVar, String str, LikeView.EnumC2719g gVar) {
            super(dVar, str, gVar);
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            bundle.putString("ids", str);
            m34192a(new GraphRequest(AccessToken.m35507B(), "", bundle, EnumC6149t.GET));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error getting the FB id for object '%s' with type '%s' : %s", this.f3483b, this.f3484c, facebookRequestError);
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
            JSONObject c = C2408g0.m34820c(sVar.m23698b(), this.f3483b);
            if (c != null) {
                this.f3501e = c.optString("id");
                this.f3502f = !C2408g0.m34816d(this.f3501e);
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$t */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$t.class */
    public class C2601t extends AbstractC2593m implements AbstractC2602u {

        /* renamed from: e */
        public boolean f3503e;

        /* renamed from: f */
        public String f3504f;

        public C2601t(String str) {
            super(C2577d.this, str, LikeView.EnumC2719g.PAGE);
            this.f3503e = C2577d.this.f3442c;
            this.f3504f = str;
            Bundle bundle = new Bundle();
            bundle.putString("fields", "id");
            AccessToken B = AccessToken.m35507B();
            m34192a(new GraphRequest(B, "me/likes/" + str, bundle, EnumC6149t.GET));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error fetching like status for page id '%s': %s", this.f3504f, facebookRequestError);
            C2577d.this.m34249a("get_page_like", facebookRequestError);
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
            JSONArray b = C2408g0.m34827b(sVar.m23698b(), "data");
            if (b != null && b.length() > 0) {
                this.f3503e = true;
            }
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2602u
        /* renamed from: a */
        public boolean mo34191a() {
            return this.f3503e;
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2602u
        /* renamed from: b */
        public String mo34190b() {
            return null;
        }
    }

    /* renamed from: com.facebook.share.d.d$u */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$u.class */
    public interface AbstractC2602u extends AbstractC2607z {
        /* renamed from: a */
        boolean mo34191a();

        /* renamed from: b */
        String mo34190b();
    }

    /* renamed from: com.facebook.share.d.d$v */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$v.class */
    public static class RunnableC2603v implements Runnable {

        /* renamed from: c */
        public static ArrayList<String> f3506c = new ArrayList<>();

        /* renamed from: a */
        public String f3507a;

        /* renamed from: b */
        public boolean f3508b;

        public RunnableC2603v(String str, boolean z) {
            this.f3507a = str;
            this.f3508b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = this.f3507a;
            if (str != null) {
                f3506c.remove(str);
                f3506c.add(0, this.f3507a);
            }
            if (this.f3508b && f3506c.size() >= 128) {
                while (64 < f3506c.size()) {
                    ArrayList<String> arrayList = f3506c;
                    C2577d.f3433q.remove(arrayList.remove(arrayList.size() - 1));
                }
            }
        }
    }

    /* renamed from: com.facebook.share.d.d$w */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$w.class */
    public class C2604w extends AbstractC2593m {

        /* renamed from: e */
        public String f3509e;

        public C2604w(String str, LikeView.EnumC2719g gVar) {
            super(C2577d.this, str, gVar);
            Bundle bundle = new Bundle();
            bundle.putString("object", str);
            m34192a(new GraphRequest(AccessToken.m35507B(), "me/og.likes", bundle, EnumC6149t.POST));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.m35475a() == 3501) {
                this.f3485d = null;
                return;
            }
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error liking object '%s' with type '%s' : %s", this.f3483b, this.f3484c, facebookRequestError);
            C2577d.this.m34249a("publish_like", facebookRequestError);
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
            this.f3509e = C2408g0.m34838a(sVar.m23698b(), "id");
        }
    }

    /* renamed from: com.facebook.share.d.d$x */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$x.class */
    public class C2605x extends AbstractC2593m {

        /* renamed from: e */
        public String f3511e;

        public C2605x(String str) {
            super(C2577d.this, null, null);
            this.f3511e = str;
            m34192a(new GraphRequest(AccessToken.m35507B(), str, null, EnumC6149t.DELETE));
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34189a(FacebookRequestError facebookRequestError) {
            C2503y.m34556a(EnumC6151v.REQUESTS, C2577d.f3431o, "Error unliking object with unlike token '%s' : %s", this.f3511e, facebookRequestError);
            C2577d.this.m34249a("publish_unlike", facebookRequestError);
        }

        @Override // com.facebook.share.p046d.C2577d.AbstractC2593m
        /* renamed from: a */
        public void mo34188a(C6148s sVar) {
        }
    }

    /* renamed from: com.facebook.share.d.d$y */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$y.class */
    public interface AbstractC2606y {
        void onComplete();
    }

    /* renamed from: com.facebook.share.d.d$z */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/d$z.class */
    public interface AbstractC2607z {
        /* renamed from: a */
        void mo34187a(C6145r rVar);

        FacebookRequestError getError();
    }

    public C2577d(String str, LikeView.EnumC2719g gVar) {
        this.f3440a = str;
        this.f3441b = gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.share.p046d.C2577d m34251a(java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r4
            java.lang.String r0 = m34224c(r0)     // Catch: all -> 0x005b, IOException -> 0x0062
            r4 = r0
            com.facebook.internal.q r0 = com.facebook.share.p046d.C2577d.f3432p     // Catch: all -> 0x005b, IOException -> 0x0062
            r1 = r4
            java.io.InputStream r0 = r0.m34626a(r1)     // Catch: all -> 0x005b, IOException -> 0x0062
            r8 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0048
            r0 = r8
            r9 = r0
            r0 = r8
            java.lang.String r0 = com.facebook.internal.C2408g0.m34861a(r0)     // Catch: IOException -> 0x0041, all -> 0x0085
            r10 = r0
            r0 = r7
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            boolean r0 = com.facebook.internal.C2408g0.m34816d(r0)     // Catch: IOException -> 0x0041, all -> 0x0085
            if (r0 != 0) goto L_0x0048
            r0 = r8
            r9 = r0
            r0 = r10
            com.facebook.share.d.d r0 = m34234b(r0)     // Catch: IOException -> 0x0041, all -> 0x0085
            r4 = r0
            goto L_0x0048
        L_0x0041:
            r7 = move-exception
            r0 = r8
            r4 = r0
            goto L_0x0065
        L_0x0048:
            r0 = r4
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0082
            r0 = r4
            r9 = r0
        L_0x0053:
            r0 = r8
            com.facebook.internal.C2408g0.m34863a(r0)
            goto L_0x0082
        L_0x005b:
            r4 = move-exception
            r0 = 0
            r9 = r0
            goto L_0x0086
        L_0x0062:
            r7 = move-exception
            r0 = 0
            r4 = r0
        L_0x0065:
            r0 = r4
            r9 = r0
            java.lang.String r0 = com.facebook.share.p046d.C2577d.f3431o     // Catch: all -> 0x0085
            java.lang.String r1 = "Unable to deserialize controller from disk"
            r2 = r7
            int r0 = android.util.Log.e(r0, r1, r2)     // Catch: all -> 0x0085
            r0 = r6
            r9 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0082
            r0 = r5
            r9 = r0
            r0 = r4
            r8 = r0
            goto L_0x0053
        L_0x0082:
            r0 = r9
            return r0
        L_0x0085:
            r4 = move-exception
        L_0x0086:
            r0 = r9
            if (r0 == 0) goto L_0x0090
            r0 = r9
            com.facebook.internal.C2408g0.m34863a(r0)
        L_0x0090:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.share.p046d.C2577d.m34251a(java.lang.String):com.facebook.share.d.d");
    }

    /* renamed from: a */
    public static void m34262a(AbstractC2596o oVar, C2577d dVar, C6131k kVar) {
        if (oVar != null) {
            f3436t.post(new RunnableC2585g(oVar, dVar, kVar));
        }
    }

    /* renamed from: a */
    public static void m34257a(C2577d dVar, LikeView.EnumC2719g gVar, AbstractC2596o oVar) {
        C6131k kVar;
        LikeView.EnumC2719g a = C2633s.m34051a(gVar, dVar.f3441b);
        if (a == null) {
            kVar = new C6131k("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", dVar.f3440a, dVar.f3441b.toString(), gVar.toString());
            dVar = null;
        } else {
            dVar.f3441b = a;
            kVar = null;
        }
        m34262a(oVar, dVar, kVar);
    }

    /* renamed from: a */
    public static void m34248a(String str, C2577d dVar) {
        String c = m34224c(str);
        f3434r.m34731a(new RunnableC2603v(c, true));
        f3433q.put(c, dVar);
    }

    /* renamed from: b */
    public static C2577d m34234b(String str) {
        JSONObject jSONObject;
        C2577d dVar = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            Log.e(f3431o, "Unable to deserialize controller from JSON", e);
        }
        if (jSONObject.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
            return null;
        }
        dVar = new C2577d(jSONObject.getString("object_id"), LikeView.EnumC2719g.m33774a(jSONObject.optInt("object_type", LikeView.EnumC2719g.UNKNOWN.m33775a())));
        dVar.f3443d = jSONObject.optString("like_count_string_with_like", null);
        dVar.f3444e = jSONObject.optString("like_count_string_without_like", null);
        dVar.f3445f = jSONObject.optString("social_sentence_with_like", null);
        dVar.f3446g = jSONObject.optString("social_sentence_without_like", null);
        dVar.f3442c = jSONObject.optBoolean("is_object_liked");
        dVar.f3447h = jSONObject.optString("unlike_token", null);
        JSONObject optJSONObject = jSONObject.optJSONObject("facebook_dialog_analytics_bundle");
        if (optJSONObject != null) {
            dVar.f3452m = C2388c.m34909a(optJSONObject);
        }
        return dVar;
    }

    /* renamed from: b */
    public static void m34233b(String str, LikeView.EnumC2719g gVar, AbstractC2596o oVar) {
        C2577d d = m34217d(str);
        if (d != null) {
            m34257a(d, gVar, oVar);
            return;
        }
        C2577d a = m34251a(str);
        C2577d dVar = a;
        if (a == null) {
            dVar = new C2577d(str, gVar);
            m34199l(dVar);
        }
        m34248a(str, dVar);
        f3436t.post(new RunnableC2583e());
        m34262a(oVar, dVar, (C6131k) null);
    }

    /* renamed from: b */
    public static void m34232b(String str, String str2) {
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        OutputStream outputStream3 = null;
        try {
            try {
                outputStream = f3432p.m34620b(str);
                outputStream3 = outputStream;
                outputStream2 = outputStream;
                outputStream.write(str2.getBytes());
                if (outputStream == null) {
                    return;
                }
            } catch (IOException e) {
                outputStream3 = outputStream2;
                Log.e(f3431o, "Unable to serialize controller to disk", e);
                if (outputStream2 != null) {
                    outputStream = outputStream2;
                } else {
                    return;
                }
            }
            C2408g0.m34863a(outputStream);
        } catch (Throwable th) {
            if (outputStream3 != null) {
                C2408g0.m34863a(outputStream3);
            }
            throw th;
        }
    }

    @Deprecated
    /* renamed from: b */
    public static boolean m34241b(int i, int i2, Intent intent) {
        if (C2408g0.m34816d(f3437u)) {
            f3437u = C6135n.m23746e().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
        }
        if (C2408g0.m34816d(f3437u)) {
            return false;
        }
        m34223c(f3437u, LikeView.EnumC2719g.UNKNOWN, new C2582d(i, i2, intent));
        return true;
    }

    /* renamed from: c */
    public static String m34224c(String str) {
        String v = AccessToken.m35506C() ? AccessToken.m35507B().m35491v() : null;
        String str2 = v;
        if (v != null) {
            str2 = C2408g0.m34812e(v);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", str, C2408g0.m34852a(str2, ""), Integer.valueOf(f3439w));
    }

    /* renamed from: c */
    public static void m34226c(C2577d dVar, String str, Bundle bundle) {
        Intent intent = new Intent(str);
        Bundle bundle2 = bundle;
        if (dVar != null) {
            bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", dVar.m34216e());
        }
        if (bundle2 != null) {
            intent.putExtras(bundle2);
        }
        LocalBroadcastManager.getInstance(C6135n.m23746e()).sendBroadcast(intent);
    }

    @Deprecated
    /* renamed from: c */
    public static void m34223c(String str, LikeView.EnumC2719g gVar, AbstractC2596o oVar) {
        if (!f3438v) {
            m34195o();
        }
        C2577d d = m34217d(str);
        if (d != null) {
            m34257a(d, gVar, oVar);
        } else {
            f3435s.m34731a(new RunnableC2595n(str, gVar, oVar));
        }
    }

    /* renamed from: d */
    public static C2577d m34217d(String str) {
        String c = m34224c(str);
        C2577d dVar = f3433q.get(c);
        if (dVar != null) {
            f3434r.m34731a(new RunnableC2603v(c, false));
        }
        return dVar;
    }

    /* renamed from: d */
    public static void m34219d(C2577d dVar, String str) {
        m34226c(dVar, str, (Bundle) null);
    }

    /* renamed from: e */
    public static void m34213e(String str) {
        f3437u = str;
        C6135n.m23746e().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", f3437u).apply();
    }

    /* renamed from: l */
    public static void m34199l(C2577d dVar) {
        String m = m34197m(dVar);
        String c = m34224c(dVar.f3440a);
        if (!C2408g0.m34816d(m) && !C2408g0.m34816d(c)) {
            f3435s.m34731a(new RunnableC2579a0(c, m));
        }
    }

    /* renamed from: m */
    public static String m34197m(C2577d dVar) {
        JSONObject a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
            jSONObject.put("object_id", dVar.f3440a);
            jSONObject.put("object_type", dVar.f3441b.m33775a());
            jSONObject.put("like_count_string_with_like", dVar.f3443d);
            jSONObject.put("like_count_string_without_like", dVar.f3444e);
            jSONObject.put("social_sentence_with_like", dVar.f3445f);
            jSONObject.put("social_sentence_without_like", dVar.f3446g);
            jSONObject.put("is_object_liked", dVar.f3442c);
            jSONObject.put("unlike_token", dVar.f3447h);
            if (!(dVar.f3452m == null || (a = C2388c.m34910a(dVar.f3452m)) == null)) {
                jSONObject.put("facebook_dialog_analytics_bundle", a);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            Log.e(f3431o, "Unable to serialize controller to JSON", e);
            return null;
        }
    }

    /* renamed from: o */
    public static void m34195o() {
        synchronized (C2577d.class) {
            try {
                if (!f3438v) {
                    f3436t = new Handler(Looper.getMainLooper());
                    f3439w = C6135n.m23746e().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
                    f3432p = new C2473q(f3431o, new C2473q.C2482g());
                    m34194p();
                    C2398d.m34901b(C2398d.EnumC2400b.Like.m34900a(), new C2584f());
                    f3438v = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: p */
    public static void m34194p() {
        new C2586h();
    }

    /* renamed from: a */
    public final AbstractC2626p m34263a(Bundle bundle) {
        return new C2587i(null, bundle);
    }

    /* renamed from: a */
    public final void m34265a(int i, int i2, Intent intent) {
        C2633s.m34062a(i, i2, intent, m34263a(this.f3452m));
        m34242b();
    }

    /* renamed from: a */
    public final void m34264a(Activity activity, C2486r rVar, Bundle bundle) {
        String str;
        if (C2613h.m34174g()) {
            str = "fb_like_control_did_present_dialog";
        } else if (C2613h.m34173h()) {
            str = "fb_like_control_did_present_fallback_dialog";
        } else {
            m34250a("present_dialog", bundle);
            C2408g0.m34821c(f3431o, "Cannot show the Like Dialog on this device.");
            m34219d((C2577d) null, "com.facebook.sdk.LikeActionController.UPDATED");
            str = null;
        }
        if (str != null) {
            LikeView.EnumC2719g gVar = this.f3441b;
            String gVar2 = gVar != null ? gVar.toString() : LikeView.EnumC2719g.UNKNOWN.toString();
            LikeContent.C2671b bVar = new LikeContent.C2671b();
            bVar.m33952a(this.f3440a);
            bVar.m33950b(gVar2);
            LikeContent a = bVar.m33954a();
            if (rVar != null) {
                new C2613h(rVar).mo34178a(a);
            } else {
                new C2613h(activity).mo34178a(a);
            }
            m34215e(bundle);
            m34230c().m35293b("fb_like_control_did_present_dialog", bundle);
        }
    }

    /* renamed from: a */
    public final void m34261a(AbstractC2606y yVar) {
        if (C2408g0.m34816d(this.f3448i)) {
            C2598q qVar = new C2598q(this, this.f3440a, this.f3441b);
            C2600s sVar = new C2600s(this, this.f3440a, this.f3441b);
            C6145r rVar = new C6145r();
            qVar.mo34187a(rVar);
            sVar.mo34187a(rVar);
            rVar.m23719a(new C2580b(qVar, sVar, yVar));
            rVar.m23715q();
        } else if (yVar != null) {
            yVar.onComplete();
        }
    }

    /* renamed from: a */
    public final void m34250a(String str, Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString("object_id", this.f3440a);
        bundle2.putString("object_type", this.f3441b.toString());
        bundle2.putString("current_action", str);
        m34230c().m35299a("fb_like_control_error", (Double) null, bundle2);
    }

    /* renamed from: a */
    public final void m34249a(String str, FacebookRequestError facebookRequestError) {
        JSONObject r;
        Bundle bundle = new Bundle();
        if (!(facebookRequestError == null || (r = facebookRequestError.m35470r()) == null)) {
            bundle.putString("error", r.toString());
        }
        m34250a(str, bundle);
    }

    /* renamed from: a */
    public final void m34245a(boolean z) {
        m34231b(z);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
        m34226c(this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
    }

    /* renamed from: a */
    public final void m34243a(boolean z, String str, String str2, String str3, String str4, String str5) {
        String a = C2408g0.m34852a(str, (String) null);
        String a2 = C2408g0.m34852a(str2, (String) null);
        String a3 = C2408g0.m34852a(str3, (String) null);
        String a4 = C2408g0.m34852a(str4, (String) null);
        String a5 = C2408g0.m34852a(str5, (String) null);
        if (z != this.f3442c || !C2408g0.m34858a(a, this.f3443d) || !C2408g0.m34858a(a2, this.f3444e) || !C2408g0.m34858a(a3, this.f3445f) || !C2408g0.m34858a(a4, this.f3446g) || !C2408g0.m34858a(a5, this.f3447h)) {
            this.f3442c = z;
            this.f3443d = a;
            this.f3444e = a2;
            this.f3445f = a3;
            this.f3446g = a4;
            this.f3447h = a5;
            m34199l(this);
            m34219d(this, "com.facebook.sdk.LikeActionController.UPDATED");
        }
    }

    /* renamed from: a */
    public final boolean m34267a() {
        AccessToken B = AccessToken.m35507B();
        return !this.f3449j && this.f3448i != null && AccessToken.m35506C() && B.m35493t() != null && B.m35493t().contains("publish_actions");
    }

    /* renamed from: a */
    public final boolean m34244a(boolean z, Bundle bundle) {
        boolean z2;
        if (m34267a()) {
            if (z) {
                m34229c(bundle);
                z2 = true;
            } else if (!C2408g0.m34816d(this.f3447h)) {
                m34221d(bundle);
                z2 = true;
            }
            return z2;
        }
        z2 = false;
        return z2;
    }

    /* renamed from: b */
    public final void m34242b() {
        this.f3452m = null;
        m34213e((String) null);
    }

    @Deprecated
    /* renamed from: b */
    public void m34240b(Activity activity, C2486r rVar, Bundle bundle) {
        boolean z = !this.f3442c;
        if (m34267a()) {
            m34231b(z);
            if (this.f3451l) {
                m34230c().m35293b("fb_like_control_did_undo_quickly", bundle);
            } else if (!m34244a(z, bundle)) {
                m34231b(!z);
                m34264a(activity, rVar, bundle);
            }
        } else {
            m34264a(activity, rVar, bundle);
        }
    }

    /* renamed from: b */
    public final void m34239b(Bundle bundle) {
        boolean z = this.f3442c;
        if (z != this.f3450k && !m34244a(z, bundle)) {
            m34245a(!this.f3442c);
        }
    }

    /* renamed from: b */
    public final void m34231b(boolean z) {
        m34243a(z, this.f3443d, this.f3444e, this.f3445f, this.f3446g, this.f3447h);
    }

    /* renamed from: c */
    public final C2283m m34230c() {
        if (this.f3453n == null) {
            this.f3453n = new C2283m(C6135n.m23746e());
        }
        return this.f3453n;
    }

    /* renamed from: c */
    public final void m34229c(Bundle bundle) {
        this.f3451l = true;
        m34261a(new C2588j(bundle));
    }

    @Deprecated
    /* renamed from: d */
    public String m34222d() {
        return this.f3442c ? this.f3443d : this.f3444e;
    }

    /* renamed from: d */
    public final void m34221d(Bundle bundle) {
        this.f3451l = true;
        C6145r rVar = new C6145r();
        C2605x xVar = new C2605x(this.f3447h);
        xVar.mo34187a(rVar);
        rVar.m23719a(new C2590k(xVar, bundle));
        rVar.m23715q();
    }

    @Deprecated
    /* renamed from: e */
    public String m34216e() {
        return this.f3440a;
    }

    /* renamed from: e */
    public final void m34215e(Bundle bundle) {
        m34213e(this.f3440a);
        this.f3452m = bundle;
        m34199l(this);
    }

    @Deprecated
    /* renamed from: f */
    public String m34212f() {
        return this.f3442c ? this.f3445f : this.f3446g;
    }

    @Deprecated
    /* renamed from: g */
    public boolean m34210g() {
        return this.f3442c;
    }

    /* renamed from: h */
    public final void m34208h() {
        if (!AccessToken.m35506C()) {
            m34206i();
        } else {
            m34261a(new C2591l());
        }
    }

    /* renamed from: i */
    public final void m34206i() {
        C2618j jVar = new C2618j(C6135n.m23746e(), C6135n.m23745f(), this.f3440a);
        if (jVar.m34911c()) {
            jVar.m34913a(new C2578a());
        }
    }

    @Deprecated
    /* renamed from: j */
    public boolean m34204j() {
        return false;
    }
}
