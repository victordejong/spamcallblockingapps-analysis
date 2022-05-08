package p459j.p460a.p566t;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import gogolook.callgogolook2.exception.ReportCrashActivity;
import gogolook.callgogolook2.phone.call.dialog.CallDialogService;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.GlobalScope;
import p081h.p203i.p325c.p337n.C9510c;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14122p3;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14979k;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\u0018�� \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\b\u0010\f\u001a\u00020\tH\u0002J\u0006\u0010\r\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lgogolook/callgogolook2/exception/UncaughtExceptionHelper;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "defaultHandler", "Ljava/lang/Thread$UncaughtExceptionHandler;", "kotlin.jvm.PlatformType", "delayToExitProcess", "", "millis", "", "setupCrashlyticsKeys", "setupDefaultHandler", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.t.a */
/* loaded from: classes2-dex2jar.jar:j/a/t/a.class */
public final class C13621a {

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f30570a = Thread.getDefaultUncaughtExceptionHandler();

    /* renamed from: b */
    public final Context f30571b;

    /* renamed from: j.a.t.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/t/a$a.class */
    public static final class C13622a {
        public C13622a() {
        }

        public /* synthetic */ C13622a(C15145g gVar) {
            this();
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/exception/UncaughtExceptionHelper$delayToExitProcess$1", m472f = "UncaughtExceptionHelper.kt", m471l = {65, 67}, m470m = "invokeSuspend")
    /* renamed from: j.a.t.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/t/a$b.class */
    public static final class C13623b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f30572a;

        /* renamed from: b */
        public int f30573b;

        /* renamed from: c */
        public final /* synthetic */ long f30574c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13623b(long j, AbstractC15044d dVar) {
            super(2, dVar);
            this.f30574c = j;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C13623b bVar = new C13623b(this.f30574c, dVar);
            bVar.f30572a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C13623b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            Object a = C15064c.m478a();
            int i = this.f30573b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                long j = this.f30574c;
                this.f30573b = 1;
                if (DelayKt.delay(j, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            System.exit(0);
            throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
        }
    }

    /* renamed from: j.a.t.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/t/a$c.class */
    public static final class C13624c implements Thread.UncaughtExceptionHandler {
        public C13624c() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            C13621a.this.m3832a();
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            if (g.m23335b()) {
                C14080m2.m2613a("UncaughtExceptionHelper", th, true);
                StringBuilder sb = new StringBuilder();
                sb.append("(");
                String simpleName = th.getClass().getSimpleName();
                if (simpleName == null) {
                    simpleName = "Unknown";
                }
                sb.append((Object) simpleName);
                sb.append(") ");
                sb.append(th.getMessage());
                String sb2 = sb.toString();
                StringWriter stringWriter = new StringWriter();
                th.printStackTrace(new PrintWriter(stringWriter));
                String stringWriter2 = stringWriter.toString();
                C15149k.m383a((Object) stringWriter2, "StringWriter().apply { e…riter(this)) }.toString()");
                C13621a.this.f30571b.startActivity(new Intent(C13621a.this.f30571b, ReportCrashActivity.class).addFlags(32768).addFlags(268435456).putExtra("subject", sb2).putExtra("content", stringWriter2));
                C13621a.this.m3831a(1000L);
            } else if (C14122p3.m2451a(CallDialogService.class)) {
                C14080m2.m2612a(th);
                C13621a.this.m3831a(4000L);
            } else {
                C14080m2.m2612a(th);
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = C13621a.this.f30570a;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        }
    }

    static {
        new C13622a(null);
    }

    public C13621a(Context context) {
        C15149k.m377b(context, "context");
        this.f30571b = context;
    }

    /* renamed from: a */
    public final void m3832a() {
        try {
            C9510c a = C9510c.m15023a();
            a.m15016b(C14217x3.m2118p());
            a.m15019a("AndroidAPI", Build.VERSION.SDK_INT);
            a.m15018a("UserId", C14217x3.m2120o());
            a.m15018a("UserAccount", C14092n3.m2584a("gmailAccount", ""));
            String n = C14017g4.m2810n();
            C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
            Locale locale = Locale.US;
            C15149k.m383a((Object) locale, "Locale.US");
            if (n != null) {
                String upperCase = n.toUpperCase(locale);
                C15149k.m383a((Object) upperCase, "(this as java.lang.String).toUpperCase(locale)");
                a.m15018a("UserCountry", upperCase);
                a.m15018a("AndroidSystemWebView", C14217x3.m2112u());
                return;
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.String");
        } catch (Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: a */
    public final void m3831a(long j) {
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new C13623b(j, null), 3, null);
    }

    /* renamed from: b */
    public final void m3828b() {
        Thread.setDefaultUncaughtExceptionHandler(new C13624c());
    }
}
