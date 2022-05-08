package p459j.p460a.p564s;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.SmsScanConfig;
import gogolook.callgogolook2.gson.SmsScanConfigHelper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import p459j.p460a.p539n.p540a.C13030a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p572v0.AbstractC13701b;
import p459j.p460a.p572v0.C13687a;
import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p572v0.p574d.C13724a;
import p459j.p460a.p572v0.p575e.C13727b;
import p459j.p460a.p582w0.C14017g4;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15155q;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\bÆ\u0002\u0018��2\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\n²\u0006\n\u0010\u000b\u001a\u00020\fX\u008a\u0084\u0002²\u0006\n\u0010\r\u001a\u00020\u000eX\u008a\u0084\u0002"}, m815d2 = {"Lgogolook/callgogolook2/developmode/UrlScanDevTool;", "", "()V", "LOG_TAG", "", MraidParser.MRAID_COMMAND_OPEN, "", "context", "Landroid/content/Context;", "UrlScanViewHolder", "whoscall_rcRelease", "exceptionHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "scope", "Lkotlinx/coroutines/CoroutineScope;"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.s.g0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/g0.class */
public final class C13438g0 {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f30198a;

    /* renamed from: j.a.s.g0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$a.class */
    public static final class C13439a {

        /* renamed from: a */
        public final LinearLayout f30199a;

        /* renamed from: b */
        public final EditText f30200b;

        /* renamed from: c */
        public final Button f30201c;

        /* renamed from: d */
        public final TextView f30202d;

        public C13439a(Context context) {
            C15149k.m377b(context, "context");
            EditText editText = new EditText(context);
            editText.setTextSize(14.0f);
            editText.setHint("Enter url");
            this.f30200b = editText;
            Button button = new Button(context);
            button.setText("Scan");
            button.setTextSize(14.0f);
            this.f30201c = button;
            TextView textView = new TextView(context);
            textView.setTextSize(14.0f);
            this.f30202d = textView;
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            linearLayout.addView(this.f30200b);
            linearLayout.addView(this.f30201c);
            ScrollView scrollView = new ScrollView(context);
            scrollView.addView(this.f30202d);
            linearLayout.addView(scrollView);
            this.f30199a = linearLayout;
        }

        /* renamed from: a */
        public final TextView m4040a() {
            return this.f30202d;
        }

        /* renamed from: b */
        public final LinearLayout m4039b() {
            return this.f30199a;
        }

        /* renamed from: c */
        public final Button m4038c() {
            return this.f30201c;
        }

        /* renamed from: d */
        public final EditText m4037d() {
            return this.f30200b;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.s.g0$b */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$b.class */
    public static final class View$OnClickListenerC13440b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ StringBuilder f30203a;

        /* renamed from: b */
        public final /* synthetic */ C13439a f30204b;

        /* renamed from: c */
        public final /* synthetic */ int f30205c;

        /* renamed from: d */
        public final /* synthetic */ List f30206d;

        /* renamed from: e */
        public final /* synthetic */ List f30207e;

        /* renamed from: f */
        public final /* synthetic */ List f30208f;

        /* renamed from: g */
        public final /* synthetic */ C15164z f30209g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC14974f f30210h;

        /* renamed from: i */
        public final /* synthetic */ AbstractC14906i f30211i;

        /* renamed from: j */
        public final /* synthetic */ AbstractC13701b f30212j;

        @AbstractC15070f(m473c = "gogolook/callgogolook2/developmode/UrlScanDevTool$open$2$1", m472f = "UrlScanDevTool.kt", m471l = {65, 73}, m470m = "invokeSuspend")
        /* renamed from: j.a.s.g0$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/g0$b$a.class */
        public static final class C13441a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

            /* renamed from: a */
            public CoroutineScope f30213a;

            /* renamed from: b */
            public int f30214b;

            /* renamed from: d */
            public final /* synthetic */ C13724a f30216d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13441a(C13724a aVar, AbstractC15044d dVar) {
                super(2, dVar);
                this.f30216d = aVar;
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
                C15149k.m377b(dVar, "completion");
                C13441a aVar = new C13441a(this.f30216d, dVar);
                aVar.f30213a = (CoroutineScope) obj;
                return aVar;
            }

            @Override // p626l.p641z.p642c.AbstractC15122p
            public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
                return ((C13441a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
            }

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj) {
                Object a = C15064c.m478a();
                int i = this.f30214b;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else if (obj instanceof C14979k.C14981b) {
                        throw ((C14979k.C14981b) obj).f33014a;
                    }
                } else if (!(obj instanceof C14979k.C14981b)) {
                    StringBuilder sb = View$OnClickListenerC13440b.this.f30203a;
                    sb.append("[Start]");
                    sb.append('\n');
                    sb.append('\t');
                    sb.append("url:");
                    sb.append(this.f30216d.m3593g());
                    sb.append('\n');
                    View$OnClickListenerC13440b.this.f30204b.m4040a().setText(View$OnClickListenerC13440b.this.f30203a.toString());
                    AbstractC13701b bVar = View$OnClickListenerC13440b.this.f30212j;
                    C13724a aVar = this.f30216d;
                    this.f30214b = 1;
                    Object a2 = bVar.mo3628a(aVar, this);
                    obj = a2;
                    if (a2 == a) {
                        return a;
                    }
                } else {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
                AbstractC13719n nVar = (AbstractC13719n) obj;
                if (nVar instanceof AbstractC13719n.C13722c) {
                    AbstractC13719n.C13721b b = ((AbstractC13719n.C13722c) nVar).m3602b();
                    StringBuilder sb2 = View$OnClickListenerC13440b.this.f30203a;
                    sb2.append("[Success]");
                    sb2.append('\n');
                    sb2.append('\t');
                    sb2.append("url:");
                    sb2.append(this.f30216d.m3593g());
                    sb2.append('\n');
                    sb2.append('\t');
                    sb2.append("rating:");
                    sb2.append(b.m3607a());
                    sb2.append('\n');
                    sb2.append('\t');
                    sb2.append("source:");
                    sb2.append(b.m3605c());
                    sb2.append('\n');
                    sb2.append("[Detail]");
                    sb2.append('\n');
                    for (Map.Entry<AbstractC13709g.EnumC13710a, AbstractC13709g> entry : b.m3606b().entrySet()) {
                        StringBuilder sb3 = View$OnClickListenerC13440b.this.f30203a;
                        sb3.append('\t');
                        sb3.append(entry.getValue().toString());
                        sb3.append("\n\n\n");
                    }
                    View$OnClickListenerC13440b.this.f30204b.m4040a().setText(View$OnClickListenerC13440b.this.f30203a.toString());
                } else if (nVar instanceof AbstractC13719n.C13720a) {
                    StringBuilder sb4 = View$OnClickListenerC13440b.this.f30203a;
                    sb4.append("[Error]");
                    sb4.append('\n');
                    sb4.append('\t');
                    sb4.append("url:");
                    sb4.append(this.f30216d.m3593g());
                    sb4.append('\n');
                    sb4.append('\t');
                    sb4.append("error message:");
                    sb4.append(((AbstractC13719n.C13720a) nVar).m3609a().getMessage());
                    sb4.append('\n');
                    View$OnClickListenerC13440b.this.f30204b.m4040a().setText(View$OnClickListenerC13440b.this.f30203a.toString());
                }
                return C14989s.f33022a;
            }
        }

        public View$OnClickListenerC13440b(StringBuilder sb, C13439a aVar, int i, List list, List list2, List list3, C15164z zVar, AbstractC14974f fVar, AbstractC14906i iVar, AbstractC13701b bVar) {
            this.f30203a = sb;
            this.f30204b = aVar;
            this.f30205c = i;
            this.f30206d = list;
            this.f30207e = list2;
            this.f30208f = list3;
            this.f30209g = zVar;
            this.f30210h = fVar;
            this.f30211i = iVar;
            this.f30212j = bVar;
        }

        /* JADX WARN: Type inference failed for: r1v18, types: [T, kotlinx.coroutines.Job] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r11) {
            /*
                r10 = this;
                r0 = r10
                java.lang.StringBuilder r0 = r0.f30203a
                r1 = 0
                r0.setLength(r1)
                r0 = r10
                j.a.s.g0$a r0 = r0.f30204b
                android.widget.TextView r0 = r0.m4040a()
                r1 = r10
                java.lang.StringBuilder r1 = r1.f30203a
                java.lang.String r1 = r1.toString()
                r0.setText(r1)
                j.a.v0.d.a$a r0 = new j.a.v0.d.a$a
                r1 = r0
                r2 = r10
                j.a.s.g0$a r2 = r2.f30204b
                android.widget.EditText r2 = r2.m4037d()
                android.text.Editable r2 = r2.getText()
                java.lang.String r2 = r2.toString()
                r1.<init>(r2)
                r11 = r0
                r0 = r11
                r1 = r10
                int r1 = r1.f30205c
                j.a.v0.d.a$a r0 = r0.m3591a(r1)
                r0 = r11
                r1 = r10
                java.util.List r1 = r1.f30206d
                j.a.v0.d.a$a r0 = r0.m3587b(r1)
                r0 = r11
                r1 = r10
                java.util.List r1 = r1.f30207e
                j.a.v0.d.a$a r0 = r0.m3586c(r1)
                r0 = r11
                r1 = r10
                java.util.List r1 = r1.f30208f
                j.a.v0.d.a$a r0 = r0.m3588a(r1)
                r0 = r11
                j.a.v0.c.a r1 = p459j.p460a.p572v0.p573c.C13702a.f30769a
                j.a.v0.d.a$a r0 = r0.m3590a(r1)
                r0 = r11
                j.a.v0.d.a r0 = r0.m3592a()
                r11 = r0
                r0 = r10
                l.z.d.z r0 = r0.f30209g
                r1 = r10
                l.f r1 = r1.f30210h
                java.lang.Object r1 = r1.getValue()
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                r2 = 0
                r3 = 0
                j.a.s.g0$b$a r4 = new j.a.s.g0$b$a
                r5 = r4
                r6 = r10
                r7 = r11
                r8 = 0
                r5.<init>(r7, r8)
                r5 = 3
                r6 = 0
                kotlinx.coroutines.Job r1 = kotlinx.coroutines.BuildersKt.launch$default(r1, r2, r3, r4, r5, r6)
                r0.f33152a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p564s.C13438g0.View$OnClickListenerC13440b.onClick(android.view.View):void");
        }
    }

    /* renamed from: j.a.s.g0$c */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$c.class */
    public static final class DialogInterface$OnClickListenerC13442c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC13442c f30217a = new DialogInterface$OnClickListenerC13442c();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (dialogInterface != null) {
                dialogInterface.dismiss();
            }
        }
    }

    /* renamed from: j.a.s.g0$d */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$d.class */
    public static final class DialogInterface$OnClickListenerC13443d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f30218a;

        /* renamed from: b */
        public final /* synthetic */ C13439a f30219b;

        public DialogInterface$OnClickListenerC13443d(Context context, C13439a aVar) {
            this.f30218a = context;
            this.f30219b = aVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Object systemService = this.f30218a.getSystemService("clipboard");
            if (systemService != null) {
                ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("URL Scan", this.f30219b.m4040a().getText()));
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.content.ClipboardManager");
        }
    }

    /* renamed from: j.a.s.g0$e */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$e.class */
    public static final class DialogInterface$OnDismissListenerC13444e implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ C15164z f30220a;

        public DialogInterface$OnDismissListenerC13444e(C15164z zVar) {
            this.f30220a = zVar;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            Job job = (Job) this.f30220a.f33152a;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.s.g0$f */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$f.class */
    public static final class C13445f extends AbstractC15150l implements AbstractC15107a<CoroutineExceptionHandler> {

        /* renamed from: a */
        public static final C13445f f30221a = new C13445f();

        /* renamed from: j.a.s.g0$f$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/g0$f$a.class */
        public static final class C13446a extends AbstractC15037a implements CoroutineExceptionHandler {
            public C13446a(AbstractC15049g.AbstractC15054c cVar) {
                super(cVar);
            }

            @Override // kotlinx.coroutines.CoroutineExceptionHandler
            public void handleException(AbstractC15049g gVar, Throwable th) {
            }
        }

        public C13445f() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineExceptionHandler invoke() {
            return new C13446a(CoroutineExceptionHandler.Key);
        }
    }

    /* renamed from: j.a.s.g0$g */
    /* loaded from: classes2-dex2jar.jar:j/a/s/g0$g.class */
    public static final class C13447g extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14974f f30222a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC14906i f30223b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13447g(AbstractC14974f fVar, AbstractC14906i iVar) {
            super(0);
            this.f30222a = fVar;
            this.f30223b = iVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.plus(CoroutineScopeKt.MainScope(), (AbstractC15049g) this.f30222a.getValue());
        }
    }

    static {
        C15155q qVar = new C15155q(C15131a0.m419a(C13438g0.class), "exceptionHandler", "<v#0>");
        C15131a0.m413a(qVar);
        C15155q qVar2 = new C15155q(C15131a0.m419a(C13438g0.class), "scope", "<v#1>");
        C15131a0.m413a(qVar2);
        f30198a = new AbstractC14906i[]{qVar, qVar2};
        new C13438g0();
    }

    /* renamed from: a */
    public static final void m4041a(Context context) {
        C15149k.m377b(context, "context");
        C13439a aVar = new C13439a(context);
        StringBuilder sb = new StringBuilder();
        AbstractC14974f a = C14975g.m662a(new C13447g(C14975g.m662a(C13445f.f30221a), f30198a[0]));
        AbstractC14906i iVar = f30198a[1];
        C13687a aVar2 = new C13687a(new C13727b(30L), new C13030a());
        String n = C14017g4.m2810n();
        C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
        SmsScanConfig a2 = SmsScanConfigHelper.m28183a(n);
        List<String> d = a2 != null ? a2.m28184d() : null;
        List<String> a3 = d != null ? d : C15021m.m565a();
        List<String> b = a2 != null ? a2.m28186b() : null;
        if (b == null) {
            b = C15021m.m565a();
        }
        C13640c d2 = C13640c.m3745d();
        int b2 = (int) d2.m3748b("url_redirect_check_max_v2");
        List<String> c = d2.m3746c("sms_url_scan_source");
        C15149k.m383a((Object) c, "getStringListOrEmpty(Fir….KEY_SMS_URL_SCAN_SOURCE)");
        C15164z zVar = new C15164z();
        zVar.f33152a = null;
        aVar.m4038c().setOnClickListener(new View$OnClickListenerC13440b(sb, aVar, b2, b, a3, c, zVar, a, iVar, aVar2));
        new AlertDialog.Builder(context).setView(aVar.m4039b()).setNegativeButton(R$string.cancel, DialogInterface$OnClickListenerC13442c.f30217a).setPositiveButton(R$string.message_context_menu_copy_text, new DialogInterface$OnClickListenerC13443d(context, aVar)).setOnDismissListener(new DialogInterface$OnDismissListenerC13444e(zVar)).show();
    }
}
