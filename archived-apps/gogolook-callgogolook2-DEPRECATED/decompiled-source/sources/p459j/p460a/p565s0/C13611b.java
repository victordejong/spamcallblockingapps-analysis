package p459j.p460a.p565s0;

import android.content.Context;
import android.content.DialogInterface;
import androidx.core.app.NotificationCompat;
import com.appsflyer.internal.referrer.Payload;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14150s2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0002\u0019\u001aB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J*\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u001b"}, m815d2 = {"Lgogolook/callgogolook2/share/RedeemUtils;", "", "()V", "EVENT_TYPE_REFERRAL", "", "POST_REDEEM_FAIL_INVALID_CODE", "POST_REDEEM_FAIL_INVALID_DID", "POST_REDEEM_FAIL_INVALID_UID", "POST_REDEEM_SUCCESS", "generateRedeemCode", "", "context", "Landroid/content/Context;", "eventType", "genRedeemCodeCallback", "Lgogolook/callgogolook2/share/RedeemUtils$GenRedeemCodeCallback;", "handleReferralEvent", "", Payload.RESPONSE, "Lgogolook/callgogolook2/net/ApiCall$ApiResponse;", "postRedeemCallback", "Lgogolook/callgogolook2/share/RedeemUtils$PostRedeemCallback;", "postRedeem", "code", "", "GenRedeemCodeCallback", "PostRedeemCallback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s0.b */
/* loaded from: classes3-dex2jar.jar:j/a/s0/b.class */
public final class C13611b {

    /* renamed from: a */
    public static final C13611b f30558a = new C13611b();

    /* renamed from: j.a.s0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$a.class */
    public interface AbstractC13612a {
        /* renamed from: a */
        void mo3834a();

        /* renamed from: a */
        void mo3833a(String str);
    }

    /* renamed from: j.a.s0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$b.class */
    public interface AbstractC13613b {
        void onFailed();

        void onSuccess();
    }

    /* renamed from: j.a.s0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$c.class */
    public static final class C13614c extends C14150s2.AbstractC14162j {

        /* renamed from: a */
        public final /* synthetic */ C12378a.EnumC12382d f30559a;

        /* renamed from: b */
        public final /* synthetic */ JSONObject f30560b;

        public C13614c(C12378a.EnumC12382d dVar, JSONObject jSONObject) {
            this.f30559a = dVar;
            this.f30560b = jSONObject;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14162j, p660rx.functions.Func0, java.util.concurrent.Callable
        public C12378a call() {
            C12378a a = C12378a.m6276a(this.f30559a, this.f30560b, new String[0]);
            C15149k.m383a((Object) a, "ApiCall.create(apiCall, obj)");
            return a;
        }
    }

    /* renamed from: j.a.s0.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$d.class */
    public static final class C13615d extends C14150s2.AbstractC14158f {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13612a f30561a;

        public C13615d(AbstractC13612a aVar) {
            this.f30561a = aVar;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14158f
        /* renamed from: a */
        public Boolean call(C12378a.C12380b bVar) {
            if (bVar == null || bVar.f27921b != 200) {
                AbstractC13612a aVar = this.f30561a;
                if (aVar != null) {
                    aVar.mo3834a();
                }
                return false;
            }
            String string = new JSONObject(bVar.f27922c).getJSONObject("result").getString("code");
            C13915b3.m3044e("referral_code", string);
            AbstractC13612a aVar2 = this.f30561a;
            if (aVar2 != null) {
                C15149k.m383a((Object) string, "code");
                aVar2.mo3833a(string);
            }
            return true;
        }
    }

    /* renamed from: j.a.s0.b$e */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$e.class */
    public static final class C13616e extends C14150s2.AbstractC14161i {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13612a f30562a;

        public C13616e(AbstractC13612a aVar) {
            this.f30562a = aVar;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14161i
        /* renamed from: a */
        public void mo1057a(Context context, Throwable th, C12378a.C12380b bVar, Boolean bool, Boolean bool2) {
            AbstractC13612a aVar = this.f30562a;
            if (aVar != null) {
                aVar.mo3834a();
            }
        }
    }

    /* renamed from: j.a.s0.b$f */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$f.class */
    public static final class DialogInterface$OnClickListenerC13617f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13617f f30563a = new DialogInterface$OnClickListenerC13617f();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C14063l4.m2666d();
            C14063l4.m2658g();
        }
    }

    /* renamed from: j.a.s0.b$g */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$g.class */
    public static final class C13618g extends C14150s2.AbstractC14162j {

        /* renamed from: a */
        public final /* synthetic */ C12378a.EnumC12382d f30564a;

        /* renamed from: b */
        public final /* synthetic */ JSONObject f30565b;

        public C13618g(C12378a.EnumC12382d dVar, JSONObject jSONObject) {
            this.f30564a = dVar;
            this.f30565b = jSONObject;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14162j, p660rx.functions.Func0, java.util.concurrent.Callable
        public C12378a call() {
            C12378a a = C12378a.m6276a(this.f30564a, this.f30565b, new String[0]);
            C15149k.m383a((Object) a, "ApiCall.create(apiCall, redeemPostObject)");
            return a;
        }
    }

    /* renamed from: j.a.s0.b$h */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$h.class */
    public static final class C13619h extends C14150s2.AbstractC14158f {

        /* renamed from: a */
        public final /* synthetic */ int f30566a;

        /* renamed from: b */
        public final /* synthetic */ Context f30567b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC13613b f30568c;

        public C13619h(int i, Context context, AbstractC13613b bVar) {
            this.f30566a = i;
            this.f30567b = context;
            this.f30568c = bVar;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14158f
        /* renamed from: a */
        public Boolean call(C12378a.C12380b bVar) {
            if (bVar == null || bVar.f27921b != 200) {
                AbstractC13613b bVar2 = this.f30568c;
                if (bVar2 != null) {
                    bVar2.onSuccess();
                }
            } else if (this.f30566a == 1) {
                C13611b.f30558a.m3836a(this.f30567b, bVar, this.f30568c);
            }
            return true;
        }
    }

    /* renamed from: j.a.s0.b$i */
    /* loaded from: classes3-dex2jar.jar:j/a/s0/b$i.class */
    public static final class C13620i extends C14150s2.AbstractC14161i {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13613b f30569a;

        public C13620i(AbstractC13613b bVar) {
            this.f30569a = bVar;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14161i
        /* renamed from: a */
        public void mo1057a(Context context, Throwable th, C12378a.C12380b bVar, Boolean bool, Boolean bool2) {
            AbstractC13613b bVar2;
            if (bVar != null && (bVar2 = this.f30569a) != null) {
                bVar2.onFailed();
            }
        }
    }

    /* renamed from: a */
    public static final void m3838a(Context context, int i, AbstractC13612a aVar) {
        C15149k.m377b(context, "context");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("sns_name", C14137r4.m2377b());
        jSONObject.put("did", C14017g4.m2820d());
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, i);
        C14150s2.m2353a(context, true, C14217x3.m2200a((int) R$string.commit_waiting)).m2348a(new C13614c(C12378a.EnumC12382d.POST_GEN_REFERRAL_CODE, jSONObject), new C13615d(aVar), new C13616e(aVar));
    }

    /* renamed from: a */
    public static final void m3837a(Context context, int i, String str, AbstractC13613b bVar) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "code");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("code", str);
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, i);
        jSONObject.put("did", C14017g4.m2820d());
        C14150s2.m2353a(context, true, C14217x3.m2200a((int) R$string.redeem_processing)).m2348a(new C13618g(C12378a.EnumC12382d.POST_REDEEM_CODE, jSONObject), new C13619h(i, context, bVar), new C13620i(bVar));
    }

    /* renamed from: a */
    public final boolean m3836a(Context context, C12378a.C12380b bVar, AbstractC13613b bVar2) throws JSONException {
        if (bVar.f27921b != 200) {
            return false;
        }
        int i = new JSONObject(bVar.f27922c).getJSONObject("result").getInt("status");
        DialogC14618f fVar = null;
        if (i == 1) {
            DialogC14618f fVar2 = new DialogC14618f(context);
            fVar2.setTitle(R$string.redeem_dialog_success_title);
            fVar2.m995c(R$string.redeem_dialog_success_msg);
            fVar2.m999b(R$string.redeem_successful_dialog_ok, DialogInterface$OnClickListenerC13617f.f30563a);
            fVar = fVar2;
            if (bVar2 != null) {
                bVar2.onSuccess();
                fVar = fVar2;
            }
        } else if (i == 2) {
            fVar = new DialogC14618f(context);
            fVar.setTitle(R$string.redeem_dialog_uid_used_title);
            fVar.m995c(R$string.redeem_dialog_uid_used_msg);
            fVar.m991e(R$string.okok);
        } else if (i == 3) {
            fVar = new DialogC14618f(context);
            fVar.setTitle(R$string.redeem_dialog_invalid_did_title);
            fVar.m995c(R$string.redeem_dialog_invalid_did_msg);
            fVar.m991e(R$string.okok);
        } else if (i == 4) {
            fVar = new DialogC14618f(context);
            fVar.setTitle(R$string.redeem_dialog_invalid_code_title);
            fVar.m995c(R$string.redeem_dialog_invalid_code_msg);
            fVar.m991e(R$string.okok);
        }
        if (!(i == 1 || bVar2 == null)) {
            bVar2.onFailed();
        }
        if (fVar == null) {
            return true;
        }
        fVar.show();
        return true;
    }
}
