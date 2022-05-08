package p459j.p460a.p582w0;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.StringRes;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.WebActivity;
import java.util.Arrays;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p596x.C14374h;
import p459j.p460a.p613z0.DialogC14597a;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001:\u0001*B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\fH\u0007J\b\u0010\u000f\u001a\u00020\fH\u0002J\b\u0010\u0010\u001a\u00020\fH\u0007J\b\u0010\u0011\u001a\u00020\fH\u0007J\b\u0010\u0012\u001a\u00020\fH\u0007J/\u0010\u0013\u001a\u00020\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u00042\u0016\u0010\u0016\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0017\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u0014H\u0007J\b\u0010\u001a\u001a\u00020\u0014H\u0007J\b\u0010\u001b\u001a\u00020\fH\u0007J\b\u0010\u001c\u001a\u00020\fH\u0007J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0013\u0010!\u001a\u0004\u0018\u00010\bH\u0082@ø\u0001��¢\u0006\u0002\u0010\"J\b\u0010#\u001a\u00020\u001eH\u0007J\u0010\u0010$\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010%\u001a\u00020\u001eH\u0007J\b\u0010&\u001a\u00020\fH\u0007J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8BX\u0082\u000e¢\u0006\b\n��\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, m815d2 = {"Lgogolook/callgogolook2/util/PrivacyConsentUtils;", "", "()V", "NOT_ALLOW_VERSION", "", "PCP_START_VERSION", "VERSION", "pcpVersionConfig", "Lgogolook/callgogolook2/util/PrivacyConsentUtils$PcpVersionConfig;", "getPcpVersionConfig", "()Lgogolook/callgogolook2/util/PrivacyConsentUtils$PcpVersionConfig;", "approved", "", "version", "canRequestPrivacyConsent", "canSkipRemindPrivacyPolicy", "canUploadAppList", "canUploadContact", "canUploadNotification", "getPrivacyConsentContent", "", "resId", "formatArgs", "", "(I[Ljava/lang/Object;)Ljava/lang/String;", "getPrivacyPolicyUrl", "getTermsOfServiceUrl", "hasPrivacyConsent", "needOnBoardingPrivacyConsent", "onAppVersionUpgrade", "", "preVersion", "", "parseRemoteConfig", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refreshConfig", "reminded", "setHasPrivacyConsent", "shouldRemindPrivacyPolicy", "showRemindDialog", "context", "Landroid/content/Context;", "PcpVersionConfig", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.d3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/d3.class */
public final class C13963d3 {

    /* renamed from: a */
    public static C13964a f31358a;

    /* renamed from: b */
    public static final C13963d3 f31359b = new C13963d3();

    /* renamed from: j.a.w0.d3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$a.class */
    public static final class C13964a {

        /* renamed from: a */
        public final int f31360a = 66010000;

        /* renamed from: b */
        public final int f31361b = 66010000;
        @AbstractC10120c("upload_notification")

        /* renamed from: c */
        public int f31362c = -1;
        @AbstractC10120c("skip_remind_tos_pp")

        /* renamed from: d */
        public int f31363d = 66010000;

        /* renamed from: a */
        public final int m2957a() {
            return this.f31363d;
        }

        /* renamed from: b */
        public final int m2956b() {
            return this.f31360a;
        }

        /* renamed from: c */
        public final int m2955c() {
            return this.f31361b;
        }

        /* renamed from: d */
        public final int m2954d() {
            return this.f31362c;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/firebase/FirebaseRemoteConfigExtKt$getConfig$2", m472f = "FirebaseRemoteConfigExt.kt", m471l = {11}, m470m = "invokeSuspend")
    /* renamed from: j.a.w0.d3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$b.class */
    public static final class C13965b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C13964a>, Object> {

        /* renamed from: a */
        public CoroutineScope f31364a;

        /* renamed from: b */
        public int f31365b;

        /* renamed from: c */
        public final /* synthetic */ String f31366c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13965b(String str, AbstractC15044d dVar) {
            super(2, dVar);
            this.f31366c = str;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13965b bVar = new C13965b(this.f31366c, dVar);
            bVar.f31364a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C13964a> dVar) {
            return ((C13965b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            C15064c.m478a();
            if (this.f31365b != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else if (!(obj instanceof C14979k.C14981b)) {
                try {
                    String d = C13640c.m3745d().m3744d(this.f31366c);
                    obj2 = null;
                    if (d != null) {
                        obj2 = new C10099e().m13388a().m30982a(d, (Class<Object>) C13964a.class);
                    }
                } catch (C10108n e) {
                    obj2 = null;
                }
                return obj2;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/util/PrivacyConsentUtils$pcpVersionConfig$1", m472f = "PrivacyConsentUtils.kt", m471l = {45, 45}, m470m = "invokeSuspend")
    /* renamed from: j.a.w0.d3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$c.class */
    public static final class C13966c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31367a;

        /* renamed from: b */
        public Object f31368b;

        /* renamed from: c */
        public int f31369c;

        public C13966c(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13966c cVar = new C13966c(dVar);
            cVar.f31367a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13966c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            C13963d3 d3Var;
            Object a = C15064c.m478a();
            int i = this.f31369c;
            if (i != 0) {
                if (i == 1) {
                    d3Var = (C13963d3) this.f31368b;
                    if (!(obj instanceof C14979k.C14981b)) {
                        obj2 = obj;
                    } else {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13963d3 d3Var2 = C13963d3.f31359b;
                this.f31368b = d3Var2;
                this.f31369c = 1;
                obj2 = d3Var2.m2972a(this);
                if (obj2 == a) {
                    return a;
                }
                d3Var = d3Var2;
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C13963d3.f31358a = (C13964a) obj2;
            return C14989s.f33022a;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/util/PrivacyConsentUtils$refreshConfig$1", m472f = "PrivacyConsentUtils.kt", m471l = {107, 108}, m470m = "invokeSuspend")
    /* renamed from: j.a.w0.d3$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$d.class */
    public static final class C13967d extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f31370a;

        /* renamed from: b */
        public int f31371b;

        public C13967d(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13967d dVar2 = new C13967d(dVar);
            dVar2.f31370a = (CoroutineScope) obj;
            return dVar2;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13967d) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f31371b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                C13963d3 d3Var = C13963d3.f31359b;
                this.f31371b = 1;
                Object a2 = d3Var.m2972a(this);
                obj = a2;
                if (a2 == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C13964a aVar = (C13964a) obj;
            if (aVar != null) {
                C13963d3 d3Var2 = C13963d3.f31359b;
                C13963d3.f31358a = aVar;
            }
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.w0.d3$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$e.class */
    public static final class C13968e extends AbstractC15150l implements AbstractC15122p<String, String, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ Context f31372a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13968e(Context context, Application application, C13972i iVar) {
            super(2);
            this.f31372a = context;
        }

        /* renamed from: a */
        public final void m2953a(String str, String str2) {
            C15149k.m377b(str, "text");
            C15149k.m377b(str2, "url");
            C14374h.f32191b.m1467a(1);
            Context context = this.f31372a;
            Intent a = WebActivity.m28889a(context, true, str, null, str2, 0);
            C15149k.m383a((Object) a, "WebActivity.createIntent…                        )");
            C14191v.m2257a(context, a, null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public /* bridge */ /* synthetic */ C14989s invoke(String str, String str2) {
            m2953a(str, str2);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.w0.d3$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$f.class */
    public static final class DialogInterface$OnDismissListenerC13969f implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31373a;

        /* renamed from: b */
        public final /* synthetic */ Application f31374b;

        /* renamed from: c */
        public final /* synthetic */ C13972i f31375c;

        public DialogInterface$OnDismissListenerC13969f(Context context, Application application, C13972i iVar) {
            this.f31373a = context;
            this.f31374b = application;
            this.f31375c = iVar;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            C14374h.f32191b.m1468a();
            if (this.f31373a instanceof Activity) {
                this.f31374b.unregisterActivityLifecycleCallbacks(this.f31375c);
            }
        }
    }

    /* renamed from: j.a.w0.d3$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$g.class */
    public static final class DialogInterface$OnShowListenerC13970g implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31376a;

        /* renamed from: b */
        public final /* synthetic */ Application f31377b;

        /* renamed from: c */
        public final /* synthetic */ C13972i f31378c;

        public DialogInterface$OnShowListenerC13970g(Context context, Application application, C13972i iVar) {
            this.f31376a = context;
            this.f31377b = application;
            this.f31378c = iVar;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            C14374h.f32191b.m1466b(2);
            if (this.f31376a instanceof Activity) {
                this.f31377b.registerActivityLifecycleCallbacks(this.f31378c);
            }
        }
    }

    /* renamed from: j.a.w0.d3$h */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$h.class */
    public static final class DialogInterface$OnClickListenerC13971h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13971h f31379a = new DialogInterface$OnClickListenerC13971h();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C14374h.f32191b.m1467a(0);
        }
    }

    /* renamed from: j.a.w0.d3$i */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/d3$i.class */
    public static final class C13972i implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        public final /* synthetic */ Context f31380a;

        /* renamed from: b */
        public final /* synthetic */ Application f31381b;

        public C13972i(Context context, Application application) {
            this.f31380a = context;
            this.f31381b = application;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (C15149k.m384a(activity, this.f31380a)) {
                this.f31381b.unregisterActivityLifecycleCallbacks(this);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            C15149k.m377b(bundle, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (C15149k.m384a(activity, this.f31380a)) {
                C14374h.f32191b.m1466b(2);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (C15149k.m384a(activity, this.f31380a)) {
                C14374h.f32191b.m1468a();
            }
        }
    }

    /* renamed from: a */
    public static final String m2976a(@StringRes int i, Object... objArr) {
        String str;
        C15149k.m377b(objArr, "formatArgs");
        if (C13891a.m3142t()) {
            String n = C14017g4.m2810n();
            C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
            str = C14206w4.m2221a(n, i, Arrays.copyOf(objArr, objArr.length));
        } else {
            str = C14206w4.m2224a(i, Arrays.copyOf(objArr, objArr.length));
        }
        return str;
    }

    /* renamed from: a */
    public static final void m2975a(long j) {
        if (j < 67000000) {
            if (C13978e.f31386a.m9462a("has_agree_gp_policy_agreement", (Boolean) false)) {
                C13978e.f31386a.m9459a("tos_and_pp_reminded", (String) true);
            } else if (m2968c() && C14217x3.m2107z()) {
                C13978e.f31386a.m9459a("has_agree_gp_policy_agreement", (String) true);
            }
        }
        if (j < 67400000 && C13978e.f31386a.m9462a("has_agree_gp_policy_agreement", (Boolean) false)) {
            C13978e.f31386a.m9459a("pcp_approved_version", (String) 66010000);
        }
        if (j < 67800000 && C13978e.f31386a.m9462a("tos_and_pp_reminded", (Boolean) false)) {
            C13978e.f31386a.m9459a("tos_pp_reminded_version", (String) 66010000);
        }
    }

    /* renamed from: a */
    public static final void m2974a(Context context) {
        C15149k.m377b(context, "context");
        Context o = MyApplication.m29013o();
        if (o != null) {
            Application application = (Application) o;
            C13972i iVar = new C13972i(context, application);
            DialogC14597a aVar = new DialogC14597a(context);
            aVar.setTitle(R$string.onboarding_permission_reminder_title);
            String string = context.getString(R$string.onboarding_permission_reminder_tospp_v2, m2963h(), m2964g());
            C15149k.m383a((Object) string, "context.getString(\n     …   getPrivacyPolicyUrl())");
            aVar.m1042a((CharSequence) string, true, (AbstractC15122p<? super String, ? super String, C14989s>) new C13968e(context, application, iVar));
            String string2 = context.getString(R$string.got_it);
            C15149k.m383a((Object) string2, "context.getString(R.string.got_it)");
            aVar.m1038b(string2, DialogInterface$OnClickListenerC13971h.f31379a);
            aVar.setCanceledOnTouchOutside(false);
            aVar.setCancelable(false);
            aVar.setOnDismissListener(new DialogInterface$OnDismissListenerC13969f(context, application, iVar));
            aVar.setOnShowListener(new DialogInterface$OnShowListenerC13970g(context, application, iVar));
            aVar.m1040a(false);
            C14315y.m1603b(aVar);
            C13978e.f31386a.m9459a("tos_pp_reminded_version", (String) 67908191);
            return;
        }
        throw new C14986p("null cannot be cast to non-null type android.app.Application");
    }

    /* renamed from: c */
    public static final boolean m2968c() {
        return C13891a.m3162c();
    }

    /* renamed from: d */
    public static final boolean m2967d() {
        C13963d3 d3Var = f31359b;
        C13964a b = d3Var.m2971b();
        if (b != null) {
            return d3Var.m2977a(b.m2956b());
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: e */
    public static final boolean m2966e() {
        C13963d3 d3Var = f31359b;
        C13964a b = d3Var.m2971b();
        if (b != null) {
            return d3Var.m2977a(b.m2955c());
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: f */
    public static final boolean m2965f() {
        C13963d3 d3Var = f31359b;
        C13964a b = d3Var.m2971b();
        if (b != null) {
            return d3Var.m2977a(b.m2954d());
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: g */
    public static final String m2964g() {
        String n = C14017g4.m2810n();
        C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
        return C14206w4.m2222a(n, (int) R$string.privacy_policy);
    }

    /* renamed from: h */
    public static final String m2963h() {
        String n = C14017g4.m2810n();
        C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
        return C14206w4.m2222a(n, (int) R$string.terms_of_service);
    }

    /* renamed from: i */
    public static final boolean m2962i() {
        return C13978e.f31386a.m9461a("pcp_approved_version", (Integer) (-1)) > 0;
    }

    /* renamed from: j */
    public static final boolean m2961j() {
        return m2968c() && !m2962i() && (C14217x3.m2207A() || !C14217x3.m2107z());
    }

    /* renamed from: k */
    public static final void m2960k() {
        BuildersKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C13967d(null), 3, null);
    }

    /* renamed from: l */
    public static final void m2959l() {
        C13978e.f31386a.m9459a("pcp_approved_version", (String) 67908191);
        C13978e.f31386a.m9459a("tos_pp_reminded_version", (String) 67908191);
    }

    /* renamed from: m */
    public static final boolean m2958m() {
        return m2968c() && !f31359b.m2978a();
    }

    /* renamed from: a */
    public final /* synthetic */ Object m2972a(AbstractC15044d<? super C13964a> dVar) {
        C15149k.m383a((Object) C13640c.m3745d(), "FirebaseRemoteConfigManager.getInstance()");
        return BuildersKt.withContext(Dispatchers.getDefault(), new C13965b("pcp_features_enabled_version", null), dVar);
    }

    /* renamed from: a */
    public final boolean m2978a() {
        C13964a b = m2971b();
        if (b != null) {
            return m2970b(b.m2957a());
        }
        C15149k.m378b();
        throw null;
    }

    /* renamed from: a */
    public final boolean m2977a(int i) {
        return i > -1 && C13978e.f31386a.m9461a("pcp_approved_version", (Integer) (-1)) >= i;
    }

    /* renamed from: b */
    public final C13964a m2971b() {
        if (f31358a == null) {
            BuildersKt.runBlocking$default(null, new C13966c(null), 1, null);
        }
        C13964a aVar = f31358a;
        if (aVar == null) {
            aVar = new C13964a();
        }
        return aVar;
    }

    /* renamed from: b */
    public final boolean m2970b(int i) {
        int a = C13978e.f31386a.m9461a("tos_pp_reminded_version", (Integer) (-1));
        return i > -1 && (a >= i || a == 67908191);
    }
}
