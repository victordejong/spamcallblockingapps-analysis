package p193e.p194a.p847h3.p848b;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.clipboard.ClipboardService;
import com.truecaller.settings.CallingSettings;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.ClipboardManager$OnPrimaryClipChangedListenerC15254i0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.C19017e1;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8620y;
import p193e.p194a.p437c.p606w.C10759d0;
import p193e.p194a.p437c.p612z.C10900c;
import s1.g;
import s1.k;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.h3.b.c */
/* loaded from: classes7-dex2jar.jar:e/a/h3/b/c.class */
public final class C14902c implements AbstractC14900a {

    /* renamed from: a */
    public final g f42597a = C25225a.m3978P1(new C14901b(this));

    /* renamed from: b */
    public final g f42598b = C25225a.m3978P1(C14906d.f42618b);

    /* renamed from: c */
    public final Context f42599c;

    /* renamed from: d */
    public final CallingSettings f42600d;

    /* renamed from: e */
    public final Provider<ClipboardManager$OnPrimaryClipChangedListenerC15254i0> f42601e;

    /* renamed from: f */
    public final AbstractC8432l f42602f;

    /* renamed from: g */
    public final AbstractC19022f0 f42603g;

    /* renamed from: h */
    public final C10900c f42604h;

    @e(c = "com.truecaller.clipboard.data.ClipboardDataManagerImpl", f = "ClipboardDataManager.kt", l = {167, 169}, m = "hasCurrentClipboardNumber")
    /* renamed from: e.a.h3.b.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/h3/b/c$a.class */
    public static final class C14903a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42605d;

        /* renamed from: e */
        public int f42606e;

        /* renamed from: g */
        public Object f42608g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14903a(d dVar) {
            super(dVar);
            C14902c.this = r4;
        }

        /* renamed from: s */
        public final Object m19465s(Object obj) {
            this.f42605d = obj;
            this.f42606e |= Integer.MIN_VALUE;
            return C14902c.this.mo19470l(this);
        }
    }

    @e(c = "com.truecaller.clipboard.data.ClipboardDataManagerImpl", f = "ClipboardDataManager.kt", l = {143, 145}, m = "maybeFallbackToCurrentClipboardData")
    /* renamed from: e.a.h3.b.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/h3/b/c$b.class */
    public static final class C14904b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42609d;

        /* renamed from: e */
        public int f42610e;

        /* renamed from: g */
        public Object f42612g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14904b(d dVar) {
            super(dVar);
            C14902c.this = r4;
        }

        /* renamed from: s */
        public final Object m19464s(Object obj) {
            this.f42609d = obj;
            this.f42610e |= Integer.MIN_VALUE;
            return C14902c.this.mo19471k(this);
        }
    }

    @e(c = "com.truecaller.clipboard.data.ClipboardDataManagerImpl", f = "ClipboardDataManager.kt", l = {136}, m = "tryExtractNumber")
    /* renamed from: e.a.h3.b.c$c */
    /* loaded from: classes7-dex2jar.jar:e/a/h3/b/c$c.class */
    public static final class C14905c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f42613d;

        /* renamed from: e */
        public int f42614e;

        /* renamed from: g */
        public Object f42616g;

        /* renamed from: h */
        public Object f42617h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14905c(d dVar) {
            super(dVar);
            C14902c.this = r4;
        }

        /* renamed from: s */
        public final Object m19463s(Object obj) {
            this.f42613d = obj;
            this.f42614e |= Integer.MIN_VALUE;
            return C14902c.this.mo19473i(null, this);
        }
    }

    @Inject
    public C14902c(Context context, CallingSettings callingSettings, Provider<ClipboardManager$OnPrimaryClipChangedListenerC15254i0> provider, AbstractC8432l abstractC8432l, AbstractC19022f0 abstractC19022f0, C10900c c10900c) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(callingSettings, "callingSettings");
        l.e(provider, "searchOnCopyHelper");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19022f0, "deviceManager");
        l.e(c10900c, "callingOtpUseCases");
        this.f42599c = context;
        this.f42600d = callingSettings;
        this.f42601e = provider;
        this.f42602f = abstractC8432l;
        this.f42603g = abstractC19022f0;
        this.f42604h = c10900c;
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: a */
    public void mo19481a() {
        this.f42600d.remove("lastCopied");
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: b */
    public void mo19480b(String str) {
        this.f42600d.putString("lastCopied", str);
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: c */
    public boolean mo19479c() {
        return this.f42600d.getBoolean("lastCopiedFromTc");
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: d */
    public boolean mo19478d() {
        return this.f42600d.getBoolean("clipboardSearchEnabled");
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: e */
    public String mo19477e() {
        return this.f42600d.getString("lastCopied");
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: f */
    public void mo19476f(boolean z) {
        this.f42600d.putBoolean("lastCopiedFromTc", z);
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: g */
    public void mo19475g() {
        if (!(((ClipboardManager$OnPrimaryClipChangedListenerC15254i0) this.f42601e.get()).f43439a != null)) {
            Context context = this.f42599c;
            int i = ClipboardService.f10850g;
            try {
                context.startService(new Intent(context, ClipboardService.class));
            } catch (IllegalStateException e) {
            }
            ((ClipboardManager$OnPrimaryClipChangedListenerC15254i0) this.f42601e.get()).onPrimaryClipChanged();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
        if (p193e.p194a.p682e.C12864a2.m22540r(r7) != false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo19474h() {
        /*
            r3 = this;
            r0 = r3
            s1.g r0 = r0.f42597a
            java.lang.Object r0 = r0.getValue()
            android.content.ClipboardManager r0 = (android.content.ClipboardManager) r0
            boolean r0 = r0.hasPrimaryClip()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L4d
            r0 = r3
            s1.g r0 = r0.f42597a
            java.lang.Object r0 = r0.getValue()
            android.content.ClipboardManager r0 = (android.content.ClipboardManager) r0
            android.content.ClipDescription r0 = r0.getPrimaryClipDescription()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L3d
            r0 = r7
            java.lang.String r1 = "text/plain"
            boolean r0 = r0.hasMimeType(r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r7 = r0
            goto L40
        L3d:
            r0 = 0
            r7 = r0
        L40:
            r0 = r7
            boolean r0 = p193e.p194a.p682e.C12864a2.m22540r(r0)
            if (r0 == 0) goto L4d
            r0 = 1
            r4 = r0
            goto L4f
        L4d:
            r0 = 0
            r4 = r0
        L4f:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto L84
            r0 = r4
            if (r0 != 0) goto L7f
            r0 = r3
            java.lang.String r0 = r0.mo19469m()
            r8 = r0
            r0 = r5
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L75
            r0 = r8
            boolean r0 = s1.f0.r.p(r0)
            r1 = 1
            r0 = r0 ^ r1
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r7 = r0
        L75:
            r0 = r6
            r4 = r0
            r0 = r7
            boolean r0 = p193e.p194a.p682e.C12864a2.m22540r(r0)
            if (r0 == 0) goto L84
        L7f:
            r0 = 1
            r4 = r0
            goto L84
        L84:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p847h3.p848b.C14902c.mo19474h():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19473i(java.lang.String r6, s1.w.d<? super s1.k<java.lang.String, java.lang.Boolean>> r7) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p847h3.p848b.C14902c.mo19473i(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: j */
    public void mo19472j(boolean z) {
        this.f42600d.putBoolean("clipboardSearchEnabled", z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ec  */
    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19471k(s1.w.d<? super java.lang.String> r6) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p847h3.p848b.C14902c.mo19471k(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fa  */
    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19470l(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p847h3.p848b.C14902c.mo19470l(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: m */
    public String mo19469m() {
        String str = null;
        if (m19466p()) {
            String mo14237i = this.f42603g.mo14237i();
            str = null;
            if (mo14237i != null) {
                l.d(mo14237i, "deviceManager.textFromClipboard ?: return null");
                k<String, Boolean> m19467o = m19467o(mo14237i, ((C10759d0) this.f42604h.f32371a).f31952b.mo25549b());
                str = null;
                if (m19467o != null) {
                    String str2 = (String) m19467o.a;
                    str = null;
                    if (str2 != null) {
                        if (!(!l.a(str2, this.f42600d.getString("lastCopiedFallback")))) {
                            str2 = null;
                        }
                        str = null;
                        if (str2 != null) {
                            this.f42600d.putString("lastCopiedFallback", str2);
                            str = str2;
                        }
                    }
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p847h3.p848b.AbstractC14900a
    /* renamed from: n */
    public void mo19468n() {
        this.f42600d.remove("lastCopied");
        this.f42600d.remove("lastCopiedFromTc");
    }

    /* renamed from: o */
    public final k<String, Boolean> m19467o(String str, Set<String> set) {
        boolean z;
        Object obj;
        k<String, Boolean> kVar;
        List<String> m28190a = new C8620y(this.f42602f.mo28578f()).m28190a(str);
        l.d(m28190a, "PhoneNumberExtractor(acc…oneNumbers(clipboardData)");
        Iterator<T> it = m28190a.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!set.contains((String) obj)) {
                break;
            }
        }
        String str2 = (String) obj;
        if (str2 != null) {
            kVar = new k<>(str2, Boolean.TRUE);
        } else {
            if (!C19017e1.m14254b(str) || set.contains(str)) {
                z = false;
            }
            String str3 = z ? str : null;
            kVar = null;
            if (str3 != null) {
                kVar = new k<>(str3, Boolean.FALSE);
            }
        }
        return kVar;
    }

    /* renamed from: p */
    public boolean m19466p() {
        return ((Boolean) this.f42598b.getValue()).booleanValue();
    }
}
