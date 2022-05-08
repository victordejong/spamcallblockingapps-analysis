package gogolook.callgogolook2.phone;

import android.net.Uri;
import android.telecom.Call;
import android.telecom.CallScreeningService;
import android.widget.Toast;
import androidx.annotation.RequiresApi;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import p459j.p460a.p521j0.C12517t;
import p459j.p460a.p521j0.p522u.C12518a;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018�� \u00072\u00020\u0001:\u0001\u0007B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/phone/WCCallScreeningService;", "Landroid/telecom/CallScreeningService;", "()V", "onScreenCall", "", "callDetails", "Landroid/telecom/Call$Details;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
@RequiresApi(api = 24)
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCCallScreeningService.class */
public final class WCCallScreeningService extends CallScreeningService {

    /* renamed from: a */
    public static Call.Details f12144a;

    /* renamed from: c */
    public static final C4933b f12146c = new C4933b(null);

    /* renamed from: b */
    public static final AbstractC14974f f12145b = C14975g.m662a(C4932a.f12147a);

    /* renamed from: gogolook.callgogolook2.phone.WCCallScreeningService$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCCallScreeningService$a.class */
    public static final class C4932a extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public static final C4932a f12147a = new C4932a();

        public C4932a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.plus(CoroutineScopeKt.MainScope(), new CoroutineName("WCCallScreeningService"));
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCCallScreeningService$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCCallScreeningService$b.class */
    public static final class C4933b {

        /* renamed from: a */
        public static final /* synthetic */ AbstractC14906i[] f12148a;

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C4933b.class), "mainScope", "getMainScope()Lkotlinx/coroutines/CoroutineScope;");
            C15131a0.m412a(sVar);
            f12148a = new AbstractC14906i[]{sVar};
        }

        public C4933b() {
        }

        public /* synthetic */ C4933b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final CoroutineScope m26744a() {
            AbstractC14974f fVar = WCCallScreeningService.f12145b;
            AbstractC14906i iVar = f12148a[0];
            return (CoroutineScope) fVar.getValue();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/WCCallScreeningService$onScreenCall$1", m472f = "WCCallScreeningService.kt", m471l = {62, 69}, m470m = "invokeSuspend")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\u00020\u0002H\u008a@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.phone.WCCallScreeningService$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCCallScreeningService$c.class */
    public static final class C4934c extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f12149a;

        /* renamed from: b */
        public int f12150b;

        /* renamed from: d */
        public final /* synthetic */ String f12152d;

        /* renamed from: e */
        public final /* synthetic */ Uri f12153e;

        /* renamed from: f */
        public final /* synthetic */ Call.Details f12154f;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/phone/WCCallScreeningService$onScreenCall$1$blockResult$1", m472f = "WCCallScreeningService.kt", m471l = {63}, m470m = "invokeSuspend")
        /* renamed from: gogolook.callgogolook2.phone.WCCallScreeningService$c$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCCallScreeningService$c$a.class */
        public static final class C4935a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C12942i>, Object> {

            /* renamed from: a */
            public CoroutineScope f12155a;

            /* renamed from: b */
            public int f12156b;

            public C4935a(AbstractC15044d dVar) {
                super(2, dVar);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C4935a aVar = new C4935a(dVar);
                aVar.f12155a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C12942i> dVar) {
                return ((C4935a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                C15064c.m478a();
                if (this.f12156b != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (!(obj instanceof C14979k.C14981b)) {
                    return C12518a.m5962a().m5959a(MyApplication.m29013o(), C4934c.this.f12152d, C12518a.EnumC12519a.CALL_SCREENING);
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4934c(String str, Uri uri, Call.Details details, AbstractC15044d dVar) {
            super(2, dVar);
            this.f12152d = str;
            this.f12153e = uri;
            this.f12154f = details;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C4934c cVar = new C4934c(this.f12152d, this.f12153e, this.f12154f, dVar);
            cVar.f12149a = (CoroutineScope) obj;
            return cVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C4934c) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f12150b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                CoroutineDispatcher io2 = Dispatchers.getIO();
                C4935a aVar = new C4935a(null);
                this.f12150b = 1;
                Object withContext = BuildersKt.withContext(io2, aVar, this);
                obj = withContext;
                if (withContext == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            C12942i iVar = (C12942i) obj;
            C15149k.m383a((Object) iVar, "blockResult");
            boolean d = iVar.m4960d();
            LogManager.m28579a("WCCallScreeningService", "onScreenCall, uri=" + this.f12153e + ", number=" + this.f12152d + ", isBlock=" + d);
            WCCallScreeningService.this.respondToCall(this.f12154f, new CallScreeningService.CallResponse.Builder().setDisallowCall(d).setRejectCall(d).setSkipCallLog(false).setSkipNotification(d).build());
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            if (g.m23335b()) {
                WCCallScreeningService wCCallScreeningService = WCCallScreeningService.this;
                Toast.makeText(wCCallScreeningService, "Debug: Handled by RCB, blocked=" + d, 0).show();
            }
            if (C14017g4.m2798z()) {
                C14236d dVar = new C14236d("whoscall_call_screening");
                C14231a aVar2 = new C14231a();
                String n = C14017g4.m2810n();
                C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
                aVar2.m2100a("region", n);
                String c = C14108o4.m2488c();
                C15149k.m383a((Object) c, "UtilsTelephony.getSimOperator()");
                aVar2.m2100a("operator", c);
                String str = this.f12152d;
                C15149k.m383a((Object) str, "remoteNumber");
                aVar2.m2100a("number", str);
                aVar2.m2100a(LogsGroupRealmObject.BLOCKED, C15066b.m476a(d ? 1 : 0));
                aVar2.m2100a("verify_status", C15066b.m476a(this.f12154f.getCallerNumberVerificationStatus()));
                dVar.mo2087a(aVar2);
            }
            return C14989s.f33022a;
        }
    }

    @Override // android.telecom.CallScreeningService
    public void onScreenCall(Call.Details details) {
        C15149k.m377b(details, "callDetails");
        if (CallUtils.m26565b()) {
            if (details.getCallDirection() == 0 && !C15149k.m384a(details, f12144a)) {
                f12144a = details;
            } else {
                return;
            }
        }
        Uri handle = details.getHandle();
        BuildersKt__Builders_commonKt.launch$default(f12146c.m26744a(), null, null, new C4934c(C12517t.m5967a(handle), handle, details, null), 3, null);
    }
}
