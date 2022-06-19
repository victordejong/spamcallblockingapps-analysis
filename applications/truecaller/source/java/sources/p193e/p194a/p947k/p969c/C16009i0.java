package p193e.p194a.p947k.p969c;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.ReceiveVideoPreferences;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.p948a.p954e.p955k.C15668a;
import p193e.p194a.p947k.p973n.p975e.AbstractC16166a;
import p193e.p194a.p947k.p973n.p975e.C16167b;
import p193e.p194a.p947k.p973n.p975e.C16187g;
import p193e.p194a.p947k.p973n.p976f.AbstractC16199d;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.k.c.i0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/i0.class */
public final class C16009i0 implements AbstractC15992h0 {

    /* renamed from: a */
    public final AbstractC16116j f45128a;

    /* renamed from: b */
    public final AbstractC16015i1 f45129b;

    /* renamed from: c */
    public final AbstractC16067r0 f45130c;

    /* renamed from: d */
    public final AbstractC16166a f45131d;

    /* renamed from: e */
    public final AbstractC16199d f45132e;

    /* renamed from: f */
    public final f f45133f;

    @e(c = "com.truecaller.videocallerid.utils.ReceiveVideoSettingsManagerImpl", f = "ReceiveVideoSettingsManager.kt", l = {143}, m = "isPhoneNumberHidden")
    /* renamed from: e.a.k.c.i0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i0$a.class */
    public static final class C16010a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45134d;

        /* renamed from: e */
        public int f45135e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16010a(d dVar) {
            super(dVar);
            C16009i0.this = r4;
        }

        /* renamed from: s */
        public final Object m17997s(Object obj) {
            this.f45134d = obj;
            this.f45135e |= Integer.MIN_VALUE;
            return C16009i0.this.mo18006c(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ReceiveVideoSettingsManagerImpl$maybeUpdateHiddenContact$2", f = "ReceiveVideoSettingsManager.kt", l = {138, 139}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.i0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i0$b.class */
    public static final class C16011b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f45137e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16011b(d dVar) {
            super(2, dVar);
            C16009i0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17996i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16011b(dVar);
        }

        /* renamed from: k */
        public final Object m17995k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16011b(dVar).m17994s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m17994s(java.lang.Object r5) {
            /*
                r4 = this;
                s1.s r0 = s1.s.a
                r6 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r7 = r0
                r0 = r4
                int r0 = r0.f45137e
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L37
                r0 = r8
                r1 = 1
                if (r0 == r1) goto L30
                r0 = r8
                r1 = 2
                if (r0 != r1) goto L26
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L90
            L26:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L30:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L7b
            L37:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                e.a.k.c.i0 r0 = p193e.p194a.p947k.p969c.C16009i0.this
                e.a.k.c.r0 r0 = r0.f45130c
                boolean r0 = r0.isAvailable()
                if (r0 == 0) goto L90
                r0 = r4
                e.a.k.c.i0 r0 = p193e.p194a.p947k.p969c.C16009i0.this
                e.a.k.c.r0 r0 = r0.f45130c
                boolean r0 = r0.mo17924b()
                if (r0 == 0) goto L90
                r0 = r4
                e.a.k.c.i0 r0 = p193e.p194a.p947k.p969c.C16009i0.this
                boolean r0 = r0.mo18008a()
                if (r0 == 0) goto L66
                goto L90
            L66:
                r0 = r4
                e.a.k.c.i0 r0 = p193e.p194a.p947k.p969c.C16009i0.this
                r5 = r0
                r0 = r4
                r1 = 1
                r0.f45137e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.m18000i(r1)
                r1 = r7
                if (r0 != r1) goto L7b
                r0 = r7
                return r0
            L7b:
                r0 = r4
                e.a.k.c.i0 r0 = p193e.p194a.p947k.p969c.C16009i0.this
                r5 = r0
                r0 = r4
                r1 = 2
                r0.f45137e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.m17999j(r1)
                r1 = r7
                if (r0 != r1) goto L90
                r0 = r7
                return r0
            L90:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16009i0.C16011b.m17994s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ReceiveVideoSettingsManagerImpl", f = "ReceiveVideoSettingsManager.kt", l = {168, 170, 178}, m = "removeNonPhonebookHiddenList")
    /* renamed from: e.a.k.c.i0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i0$c.class */
    public static final class C16012c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45139d;

        /* renamed from: e */
        public int f45140e;

        /* renamed from: g */
        public Object f45142g;

        /* renamed from: h */
        public Object f45143h;

        /* renamed from: i */
        public Object f45144i;

        /* renamed from: j */
        public Object f45145j;

        /* renamed from: k */
        public Object f45146k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16012c(d dVar) {
            super(dVar);
            C16009i0.this = r4;
        }

        /* renamed from: s */
        public final Object m17993s(Object obj) {
            this.f45139d = obj;
            this.f45140e |= Integer.MIN_VALUE;
            return C16009i0.this.m18000i(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ReceiveVideoSettingsManagerImpl", f = "ReceiveVideoSettingsManager.kt", l = {119, 120}, m = "shouldShowHideContactOption")
    /* renamed from: e.a.k.c.i0$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i0$d.class */
    public static final class C16013d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45147d;

        /* renamed from: e */
        public int f45148e;

        /* renamed from: g */
        public Object f45150g;

        /* renamed from: h */
        public Object f45151h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16013d(d dVar) {
            super(dVar);
            C16009i0.this = r4;
        }

        /* renamed from: s */
        public final Object m17992s(Object obj) {
            this.f45147d = obj;
            this.f45148e |= Integer.MIN_VALUE;
            return C16009i0.this.mo17998n(false, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ReceiveVideoSettingsManagerImpl", f = "ReceiveVideoSettingsManager.kt", l = {Constants.ERR_MODULE_NOT_FOUND, 159, Constants.ERR_ALREADY_IN_RECORDING}, m = "syncPhoneBookContacts")
    /* renamed from: e.a.k.c.i0$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/i0$e.class */
    public static final class C16014e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45152d;

        /* renamed from: e */
        public int f45153e;

        /* renamed from: g */
        public Object f45155g;

        /* renamed from: h */
        public Object f45156h;

        /* renamed from: i */
        public Object f45157i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16014e(d dVar) {
            super(dVar);
            C16009i0.this = r4;
        }

        /* renamed from: s */
        public final Object m17991s(Object obj) {
            this.f45152d = obj;
            this.f45153e |= Integer.MIN_VALUE;
            return C16009i0.this.m17999j(this);
        }
    }

    @Inject
    public C16009i0(AbstractC16116j abstractC16116j, AbstractC16015i1 abstractC16015i1, AbstractC16067r0 abstractC16067r0, AbstractC16166a abstractC16166a, AbstractC16199d abstractC16199d, @Named("IO") f fVar) {
        l.e(abstractC16116j, "support");
        l.e(abstractC16015i1, "settings");
        l.e(abstractC16067r0, "availability");
        l.e(abstractC16166a, "hiddenContactRepository");
        l.e(abstractC16199d, "incomingVideoRepository");
        l.e(fVar, "iOContext");
        this.f45128a = abstractC16116j;
        this.f45129b = abstractC16015i1;
        this.f45130c = abstractC16067r0;
        this.f45131d = abstractC16166a;
        this.f45132e = abstractC16199d;
        this.f45133f = fVar;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: a */
    public boolean mo18008a() {
        return m18001h() == ReceiveVideoPreferences.NoOne;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: b */
    public Object mo18007b(C16187g c16187g, d<? super s> dVar) {
        Object m17785a = ((C16167b) this.f45131d).m17785a(c16187g, dVar);
        return m17785a == a.a ? m17785a : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18006c(java.lang.String r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C16009i0.C16010a
            if (r0 == 0) goto L28
            r0 = r7
            e.a.k.c.i0$a r0 = (p193e.p194a.p947k.p969c.C16009i0.C16010a) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f45135e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45135e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.k.c.i0$a r0 = new e.a.k.c.i0$a
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f45134d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f45135e
            r9 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L63
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L59
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L91
        L59:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r12 = r0
            r0 = r5
            boolean r0 = r0.mo18008a()
            if (r0 != 0) goto La5
            r0 = r5
            e.a.k.n.e.a r0 = r0.f45131d
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f45135e = r1
            r0 = r8
            e.a.k.n.e.b r0 = (p193e.p194a.p947k.p973n.p975e.C16167b) r0
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m17782d(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L91
            r0 = r10
            return r0
        L91:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto La2
            r0 = r11
            r12 = r0
            goto La5
        La2:
            r0 = 0
            r12 = r0
        La5:
            r0 = r12
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16009i0.mo18006c(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: d */
    public Object mo18005d(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f45133f, new C16011b(null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: e */
    public ReceiveVideoPreferences mo18004e() {
        return m18001h();
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: f */
    public void mo18003f(FragmentManager fragmentManager, String str, List<String> list, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(fragmentManager, "fragmentManager");
        l.e(str, "contactName");
        l.e(list, "contactNumbers");
        l.e(lVar, "callback");
        Objects.requireNonNull(C15668a.f44231i);
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "contactNumbers");
        C15668a c15668a = new C15668a();
        Bundle m8654X0 = C22128a.m8654X0("hiddenContactNameArg", str);
        m8654X0.putStringArrayList("hiddenContactNumbersArg", new ArrayList<>(list));
        c15668a.setArguments(m8654X0);
        c15668a.f44234g = lVar;
        c15668a.show(fragmentManager, d0.a(C15668a.class).c());
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: g */
    public void mo18002g(ReceiveVideoPreferences receiveVideoPreferences) {
        l.e(receiveVideoPreferences, "settings");
        this.f45129b.putInt("receiveContactPreference", receiveVideoPreferences.getValue());
    }

    /* renamed from: h */
    public final ReceiveVideoPreferences m18001h() {
        if (!this.f45129b.contains("receiveContactPreference")) {
            return this.f45129b.getBoolean("hiddenForAllContacts", false) ? ReceiveVideoPreferences.NoOne : ReceiveVideoPreferences.Everyone;
        }
        int i = this.f45129b.getInt("receiveContactPreference", 0);
        ReceiveVideoPreferences receiveVideoPreferences = ReceiveVideoPreferences.Everyone;
        if (i != receiveVideoPreferences.getValue()) {
            receiveVideoPreferences = ReceiveVideoPreferences.Contacts;
            if (i != receiveVideoPreferences.getValue()) {
                receiveVideoPreferences = ReceiveVideoPreferences.NoOne;
                receiveVideoPreferences.getValue();
            }
        }
        return receiveVideoPreferences;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01e3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0186 -> B:34:0x01ae). Please submit an issue!!! */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18000i(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16009i0.m18000i(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0181  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0142 -> B:34:0x014a). Please submit an issue!!! */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m17999j(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16009i0.m17999j(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012e  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15992h0
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17998n(boolean r6, java.util.List<java.lang.String> r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16009i0.mo17998n(boolean, java.util.List, s1.w.d):java.lang.Object");
    }
}
