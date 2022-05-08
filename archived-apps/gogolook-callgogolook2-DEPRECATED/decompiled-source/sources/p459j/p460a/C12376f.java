package p459j.p460a;

import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p582w0.p590x4.AbstractC14272h;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.C14985o;
import p626l.p632u.C15005e0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001:\u0003\u0014\u0015\u0016B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000f2\b\b\u0001\u0010\u0011\u001a\u00020\u0004J\u0010\u0010\u0012\u001a\u00020\u000f2\b\b\u0001\u0010\u0013\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/WebEventHelper;", "", "()V", "ACTION_BACK", "", "ACTION_LEAVE", "EVENT_WHOSCALL_WEBVIEW_PAGE", "", "FROM_GOOGLE_POLICY", "FROM_OTHER", "KEY_ACTION", "KEY_FROM", "eventCache", "Lgogolook/callgogolook2/WebEventHelper$EventCacheHelper;", "commit", "", "setAction", "action", "start", "from", "Action", "EventCacheHelper", "From", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.f */
/* loaded from: classes2-dex2jar.jar:j/a/f.class */
public final class C12376f {

    /* renamed from: a */
    public static C12377a f27900a;

    /* renamed from: b */
    public static final C12376f f27901b = new C12376f();

    /* renamed from: j.a.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/f$a.class */
    public static final class C12377a extends AbstractC14272h {
        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: a */
        public void mo1618a(C14296p.C14297a.C14298a aVar) {
            C15149k.m377b(aVar, "builder");
            C14296p.m1830a("whoscall_webview_page", aVar.m1811a());
        }

        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: i */
        public Map<String, Object> mo1940i() {
            return C15005e0.m624a(C14985o.m644a("action", 1), C14985o.m644a("from", 0));
        }
    }

    /* renamed from: a */
    public final void m6283a() {
        C12377a aVar = f27900a;
        if (aVar != null && C15149k.m384a(aVar.m1950a("from"), (Object) 1)) {
            aVar.m1945c();
        }
        f27900a = null;
    }

    /* renamed from: a */
    public final void m6282a(int i) {
        C12377a aVar = f27900a;
        if (aVar != null) {
            aVar.m1949a("action", Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public final void m6281b(int i) {
        C12377a aVar = new C12377a();
        aVar.m1949a("action", 1);
        aVar.m1949a("from", Integer.valueOf(i));
        f27900a = aVar;
    }
}
