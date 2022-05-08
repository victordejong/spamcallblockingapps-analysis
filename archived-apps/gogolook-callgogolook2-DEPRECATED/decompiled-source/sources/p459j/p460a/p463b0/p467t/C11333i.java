package p459j.p460a.p463b0.p467t;

import android.content.Context;
import android.graphics.drawable.Drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import gogolook.callgogolook2.p074ad.AdStatusController;
import kotlin.Metadata;
import p459j.p460a.p463b0.p468u.C11397b;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14191v;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018�� \t2\u00020\u0001:\u0001\tB#\b\u0002\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007R\u0014\u0010\u0006\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0004\u0010\b¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/IapDrawerItem;", "Lgogolook/callgogolook2/main/drawer/IconTitleDrawerItem;", "viewType", "", "isSubscribedUser", "", "isRedDotVisible", "(IZZ)V", "()Z", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.i */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/i.class */
public final class C11333i extends C11343l {

    /* renamed from: i */
    public static final C11337d f25423i = new C11337d(null);

    /* renamed from: g */
    public final boolean f25424g;

    /* renamed from: h */
    public final boolean f25425h;

    /* renamed from: j.a.b0.t.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/i$a.class */
    public static final class C11334a extends AbstractC15150l implements AbstractC15118l<Context, Drawable> {

        /* renamed from: a */
        public final /* synthetic */ boolean f25426a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11334a(boolean z) {
            super(1);
            this.f25426a = z;
        }

        /* renamed from: a */
        public final Drawable invoke(Context context) {
            C15149k.m377b(context, "c");
            Drawable drawable = context.getDrawable(this.f25426a ? 2131231214 : 2131231217);
            if (drawable != null) {
                return drawable;
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.b0.t.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/i$b.class */
    public static final class C11335b extends AbstractC15150l implements AbstractC15118l<Context, String> {

        /* renamed from: a */
        public final /* synthetic */ boolean f25427a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11335b(boolean z) {
            super(1);
            this.f25427a = z;
        }

        /* renamed from: a */
        public final String invoke(Context context) {
            int i;
            C15149k.m377b(context, "c");
            if (this.f25427a) {
                i = R$string.ad_free_sidebar_subscribed;
            } else {
                AdStatusController c = AdStatusController.m28827c();
                C15149k.m383a((Object) c, "AdStatusController.getInstance()");
                i = !c.m28831a() ? R$string.ad_free_sidebar_redeem : R$string.ad_free_sidebar;
            }
            String string = context.getString(i);
            C15149k.m383a((Object) string, "c.getString(if (isSubscr…ee_sidebar\n            })");
            return string;
        }
    }

    /* renamed from: j.a.b0.t.i$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/i$c.class */
    public static final class C11336c extends AbstractC15150l implements AbstractC15118l<Context, C14989s> {

        /* renamed from: a */
        public static final C11336c f25428a = new C11336c();

        public C11336c() {
            super(1);
        }

        /* renamed from: a */
        public final void m9770a(Context context) {
            if (context != null) {
                C14191v.m2257a(context, IapActivity.C4488b.m28094a(IapActivity.f10799k, context, "drawer_subscribe", "none", null, 8, null), null, 2, null);
            }
            C11397b.m9694a("adfree", null, 2, null);
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Context context) {
            m9770a(context);
            return C14989s.f33022a;
        }
    }

    /* renamed from: j.a.b0.t.i$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/i$d.class */
    public static final class C11337d {
        public C11337d() {
        }

        public /* synthetic */ C11337d(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final AbstractC12391a m9769a() {
            return new C11333i(0, C14021h2.m2779g(), !C13915b3.m3062a("prefs_iap_has_seen_iap_page", false) && !C14017g4.m2835A(), null);
        }
    }

    public C11333i(int i, boolean z, boolean z2) {
        super(i, new C11334a(z), null, new C11335b(z), false, C11336c.f25428a, 20, null);
        this.f25424g = z;
        this.f25425h = z2;
    }

    public /* synthetic */ C11333i(int i, boolean z, boolean z2, C15145g gVar) {
        this(i, z, z2);
    }

    @Override // p459j.p460a.p463b0.p467t.C11343l
    /* renamed from: e */
    public boolean mo9761e() {
        return this.f25425h;
    }

    /* renamed from: f */
    public final boolean m9773f() {
        return this.f25424g;
    }
}
