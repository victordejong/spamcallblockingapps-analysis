package p131c.p161d.p282e.p315q.p318p0;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import com.google.firebase.inappmessaging.display.FiamListener;
import com.google.firebase.inappmessaging.display.internal.FiamAnimator;
import com.google.firebase.inappmessaging.model.MessageType;
import com.squareup.picasso.Callback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p031d.p032b.C0760b;
import p131c.p161d.p282e.p315q.C5841r;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5547a;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5551d;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5554f;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5559h;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5566m;
import p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c;
import p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b.C5608e;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5848c;
import p131c.p161d.p282e.p315q.p333r0.C5855f;
import p131c.p161d.p282e.p315q.p333r0.C5858g;
import p131c.p161d.p282e.p315q.p333r0.C5860h;
import p131c.p161d.p282e.p315q.p333r0.C5864j;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b.class */
public class C5526b extends C5559h {

    /* renamed from: a */
    public final C5841r f18473a;

    /* renamed from: b */
    public final Map<String, AbstractC9866a<C5560i>> f18474b;

    /* renamed from: c */
    public final C5551d f18475c;

    /* renamed from: d */
    public final C5566m f18476d;

    /* renamed from: e */
    public final C5566m f18477e;

    /* renamed from: f */
    public final C5554f f18478f;

    /* renamed from: g */
    public final C5547a f18479g;

    /* renamed from: h */
    public final Application f18480h;

    /* renamed from: i */
    public final FiamAnimator f18481i;

    /* renamed from: j */
    public FiamListener f18482j;

    /* renamed from: k */
    public AbstractC5863i f18483k;

    /* renamed from: l */
    public FirebaseInAppMessagingDisplayCallbacks f18484l;

    /* renamed from: m */
    public String f18485m;

    /* renamed from: c.d.e.q.p0.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$a.class */
    public class RunnableC5527a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Activity f18486a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC5579c f18487b;

        public RunnableC5527a(Activity activity, AbstractC5579c cVar) {
            this.f18486a = activity;
            this.f18487b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5526b.this.m23627a(this.f18486a, this.f18487b);
        }
    }

    /* renamed from: c.d.e.q.p0.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$b.class */
    public class View$OnClickListenerC5528b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f18489a;

        public View$OnClickListenerC5528b(Activity activity) {
            this.f18489a = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C5526b.this.f18484l != null) {
                C5526b.this.f18484l.mo7320a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.CLICK);
            }
            C5526b.this.m23614b(this.f18489a);
        }
    }

    /* renamed from: c.d.e.q.p0.b$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$c.class */
    public class View$OnClickListenerC5529c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C5842a f18491a;

        /* renamed from: b */
        public final /* synthetic */ Activity f18492b;

        public View$OnClickListenerC5529c(C5842a aVar, Activity activity) {
            this.f18491a = aVar;
            this.f18492b = activity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C5526b.this.f18484l != null) {
                C5562j.m23510d("Calling callback for click action");
                C5526b.this.f18484l.mo7321a(this.f18491a);
            }
            C5526b.this.m23628a(this.f18492b, Uri.parse(this.f18491a.m22914a()));
            C5526b.this.m23615b();
            C5526b.this.m23609c(this.f18492b);
            C5526b.this.f18483k = null;
            C5526b.this.f18484l = null;
        }
    }

    /* renamed from: c.d.e.q.p0.b$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$d.class */
    public class C5530d implements Callback {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5579c f18494a;

        /* renamed from: b */
        public final /* synthetic */ Activity f18495b;

        /* renamed from: c */
        public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f18496c;

        /* renamed from: c.d.e.q.p0.b$d$a */
        /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$d$a.class */
        public class View$OnTouchListenerC5531a implements View.OnTouchListener {
            public View$OnTouchListenerC5531a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 4) {
                    return false;
                }
                if (C5526b.this.f18484l != null) {
                    C5526b.this.f18484l.mo7320a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.UNKNOWN_DISMISS_TYPE);
                }
                C5530d dVar = C5530d.this;
                C5526b.this.m23614b(dVar.f18495b);
                return true;
            }
        }

        /* renamed from: c.d.e.q.p0.b$d$b */
        /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$d$b.class */
        public class C5532b implements C5566m.AbstractC5568b {
            public C5532b() {
            }

            @Override // p131c.p161d.p282e.p315q.p318p0.p321j.C5566m.AbstractC5568b
            public void onFinish() {
                if (C5526b.this.f18483k != null && C5526b.this.f18484l != null) {
                    C5562j.m23510d("Impression timer onFinish for: " + C5526b.this.f18483k.m22863a().m22891a());
                    C5526b.this.f18484l.mo7322a();
                }
            }
        }

        /* renamed from: c.d.e.q.p0.b$d$c */
        /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$d$c.class */
        public class C5533c implements C5566m.AbstractC5568b {
            public C5533c() {
            }

            @Override // p131c.p161d.p282e.p315q.p318p0.p321j.C5566m.AbstractC5568b
            public void onFinish() {
                if (!(C5526b.this.f18483k == null || C5526b.this.f18484l == null)) {
                    C5526b.this.f18484l.mo7320a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.AUTO);
                }
                C5530d dVar = C5530d.this;
                C5526b.this.m23614b(dVar.f18495b);
            }
        }

        /* renamed from: c.d.e.q.p0.b$d$d */
        /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$d$d.class */
        public class RunnableC5534d implements Runnable {
            public RunnableC5534d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C5554f fVar = C5526b.this.f18478f;
                C5530d dVar = C5530d.this;
                fVar.m23564a(dVar.f18494a, dVar.f18495b);
                if (C5530d.this.f18494a.mo23460b().m23556a().booleanValue()) {
                    C5526b.this.f18481i.m7311a(C5526b.this.f18480h, C5530d.this.f18494a.mo23457f(), FiamAnimator.Position.TOP);
                }
            }
        }

        public C5530d(AbstractC5579c cVar, Activity activity, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            this.f18494a = cVar;
            this.f18495b = activity;
            this.f18496c = onGlobalLayoutListener;
        }

        @Override // com.squareup.picasso.Callback
        public void onError(Exception exc) {
            C5562j.m23511c("Image download failure ");
            if (this.f18496c != null) {
                this.f18494a.mo23458e().getViewTreeObserver().removeGlobalOnLayoutListener(this.f18496c);
            }
            C5526b.this.m23630a();
            C5526b.this.f18483k = null;
            C5526b.this.f18484l = null;
        }

        @Override // com.squareup.picasso.Callback
        public void onSuccess() {
            if (!this.f18494a.mo23460b().m23548c().booleanValue()) {
                this.f18494a.mo23457f().setOnTouchListener(new View$OnTouchListenerC5531a());
            }
            C5526b.this.f18476d.m23505a(new C5532b(), 5000L, 1000L);
            if (this.f18494a.mo23460b().m23552b().booleanValue()) {
                C5526b.this.f18477e.m23505a(new C5533c(), 20000L, 1000L);
            }
            this.f18495b.runOnUiThread(new RunnableC5534d());
        }
    }

    /* renamed from: c.d.e.q.p0.b$e */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/b$e.class */
    public static /* synthetic */ class C5535e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18502a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MessageType.values().length];
            f18502a = iArr;
            try {
                iArr[MessageType.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18502a[MessageType.MODAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18502a[MessageType.IMAGE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18502a[MessageType.CARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C5526b(C5841r rVar, Map<String, AbstractC9866a<C5560i>> map, C5551d dVar, C5566m mVar, C5566m mVar2, C5554f fVar, Application application, C5547a aVar, FiamAnimator fiamAnimator) {
        this.f18473a = rVar;
        this.f18474b = map;
        this.f18475c = dVar;
        this.f18476d = mVar;
        this.f18477e = mVar2;
        this.f18478f = fVar;
        this.f18480h = application;
        this.f18479g = aVar;
        this.f18481i = fiamAnimator;
    }

    /* renamed from: a */
    public static int m23625a(Application application) {
        return application.getResources().getConfiguration().orientation;
    }

    /* renamed from: a */
    public static /* synthetic */ void m23620a(C5526b bVar, Activity activity, AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks firebaseInAppMessagingDisplayCallbacks) {
        if (bVar.f18483k != null || bVar.f18473a.m22921a()) {
            C5562j.m23515a("Active FIAM exists. Skipping trigger");
            return;
        }
        bVar.f18483k = iVar;
        bVar.f18484l = firebaseInAppMessagingDisplayCallbacks;
        bVar.m23606d(activity);
    }

    /* renamed from: a */
    public final List<C5842a> m23616a(AbstractC5863i iVar) {
        ArrayList arrayList = new ArrayList();
        int i = C5535e.f18502a[iVar.m22862c().ordinal()];
        if (i == 1) {
            arrayList.add(((C5848c) iVar).m22908d());
        } else if (i == 2) {
            arrayList.add(((C5864j) iVar).m22860d());
        } else if (i == 3) {
            arrayList.add(((C5860h) iVar).m22868d());
        } else if (i != 4) {
            arrayList.add(C5842a.m22912c().m22911a());
        } else {
            C5855f fVar = (C5855f) iVar;
            arrayList.add(fVar.m22884h());
            arrayList.add(fVar.m22883i());
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m23630a() {
        this.f18476d.m23506a();
        this.f18477e.m23506a();
    }

    /* renamed from: a */
    public final void m23629a(Activity activity) {
        String str = this.f18485m;
        if (str == null || !str.equals(activity.getLocalClassName())) {
            C5562j.m23510d("Binding to activity: " + activity.getLocalClassName());
            this.f18473a.m22918a(C5525a.m23631a(this, activity));
            this.f18485m = activity.getLocalClassName();
        }
        if (this.f18483k != null) {
            m23606d(activity);
        }
    }

    /* renamed from: a */
    public final void m23628a(Activity activity, Uri uri) {
        if (m23604e(activity)) {
            C0760b a = new C0760b.C0761a().m36132a();
            Intent intent = a.f3620a;
            intent.addFlags(1073741824);
            intent.addFlags(268435456);
            a.m36133a(activity, uri);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", uri);
        ResolveInfo resolveActivity = activity.getPackageManager().resolveActivity(intent2, 0);
        intent2.addFlags(1073741824);
        intent2.addFlags(268435456);
        if (resolveActivity != null) {
            activity.startActivity(intent2);
        } else {
            C5562j.m23511c("Device cannot resolve intent for: android.intent.action.VIEW");
        }
    }

    /* renamed from: a */
    public final void m23627a(Activity activity, AbstractC5579c cVar) {
        View.OnClickListener onClickListener;
        View$OnClickListenerC5528b bVar = new View$OnClickListenerC5528b(activity);
        HashMap hashMap = new HashMap();
        for (C5842a aVar : m23616a(this.f18483k)) {
            if (aVar == null || TextUtils.isEmpty(aVar.m22914a())) {
                C5562j.m23510d("No action url found for action. Treating as dismiss.");
                onClickListener = bVar;
            } else {
                onClickListener = new View$OnClickListenerC5529c(aVar, activity);
            }
            hashMap.put(aVar, onClickListener);
        }
        ViewTreeObserver.OnGlobalLayoutListener a = cVar.mo23461a(hashMap, bVar);
        if (a != null) {
            cVar.mo23458e().getViewTreeObserver().addOnGlobalLayoutListener(a);
        }
        m23626a(activity, cVar, m23611b(this.f18483k), new C5530d(cVar, activity, a));
    }

    /* renamed from: a */
    public final void m23626a(Activity activity, AbstractC5579c cVar, C5858g gVar, Callback callback) {
        if (m23617a(gVar)) {
            C5551d.C5552a a = this.f18475c.m23574a(gVar.m22872a());
            a.m23571a(activity.getClass());
            a.m23573a(C5538e.image_placeholder);
            a.m23572a(cVar.mo23458e(), callback);
            return;
        }
        callback.onSuccess();
    }

    /* renamed from: a */
    public final boolean m23617a(C5858g gVar) {
        return gVar != null && !TextUtils.isEmpty(gVar.m22872a());
    }

    /* renamed from: b */
    public final C5858g m23611b(AbstractC5863i iVar) {
        if (iVar.m22862c() != MessageType.CARD) {
            return iVar.mo22861b();
        }
        C5855f fVar = (C5855f) iVar;
        C5858g g = fVar.m22885g();
        C5858g f = fVar.m22886f();
        if (m23625a(this.f18480h) == 1) {
            if (m23617a(g)) {
                f = g;
            }
            return f;
        }
        if (m23617a(f)) {
            g = f;
        }
        return g;
    }

    /* renamed from: b */
    public final void m23615b() {
        FiamListener fiamListener = this.f18482j;
        if (fiamListener != null) {
            fiamListener.onFiamClick();
        }
    }

    /* renamed from: b */
    public final void m23614b(Activity activity) {
        C5562j.m23515a("Dismissing fiam");
        m23610c();
        m23609c(activity);
        this.f18483k = null;
        this.f18484l = null;
    }

    /* renamed from: c */
    public final void m23610c() {
        FiamListener fiamListener = this.f18482j;
        if (fiamListener != null) {
            fiamListener.onFiamDismiss();
        }
    }

    /* renamed from: c */
    public final void m23609c(Activity activity) {
        if (this.f18478f.m23568a()) {
            this.f18478f.m23567a(activity);
            m23630a();
        }
    }

    /* renamed from: d */
    public final void m23607d() {
        FiamListener fiamListener = this.f18482j;
        if (fiamListener != null) {
            fiamListener.onFiamTrigger();
        }
    }

    /* renamed from: d */
    public final void m23606d(Activity activity) {
        AbstractC5579c cVar;
        if (this.f18483k == null || this.f18473a.m22921a()) {
            C5562j.m23511c("No active message found to render");
        } else if (this.f18483k.m22862c().equals(MessageType.UNSUPPORTED)) {
            C5562j.m23511c("The message being triggered is not supported by this version of the sdk.");
        } else {
            m23607d();
            C5560i iVar = this.f18474b.get(C5608e.m23424a(this.f18483k.m22862c(), m23625a(this.f18480h))).get();
            int i = C5535e.f18502a[this.f18483k.m22862c().ordinal()];
            if (i == 1) {
                cVar = this.f18479g.m23584a(iVar, this.f18483k);
            } else if (i == 2) {
                cVar = this.f18479g.m23581d(iVar, this.f18483k);
            } else if (i == 3) {
                cVar = this.f18479g.m23582c(iVar, this.f18483k);
            } else if (i != 4) {
                C5562j.m23511c("No bindings found for this message type");
                return;
            } else {
                cVar = this.f18479g.m23583b(iVar, this.f18483k);
            }
            activity.findViewById(16908290).post(new RunnableC5527a(activity, cVar));
        }
    }

    /* renamed from: e */
    public final boolean m23604e(Activity activity) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        intent.setPackage("com.android.chrome");
        return !activity.getPackageManager().queryIntentServices(intent, 0).isEmpty();
    }

    /* renamed from: f */
    public final void m23602f(Activity activity) {
        String str = this.f18485m;
        if (str != null && str.equals(activity.getLocalClassName())) {
            C5562j.m23510d("Unbinding from activity: " + activity.getLocalClassName());
            this.f18473a.m22916b();
            this.f18475c.m23575a(activity.getClass());
            m23609c(activity);
            this.f18485m = null;
        }
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.C5559h, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        m23602f(activity);
        this.f18473a.m22915c();
        super.onActivityPaused(activity);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.C5559h, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        super.onActivityResumed(activity);
        m23629a(activity);
    }
}
