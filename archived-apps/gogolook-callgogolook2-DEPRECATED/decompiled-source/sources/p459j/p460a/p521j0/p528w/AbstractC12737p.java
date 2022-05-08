package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.Arrays;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14327z3;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.w.p */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/p.class */
public abstract class AbstractC12737p extends AbstractC12741t {

    /* renamed from: k */
    public AbstractC12741t.C12743b f28708k;

    /* renamed from: l */
    public AbstractC12741t.C12742a f28709l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC12737p(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        super(cVar, dVar, numberInfo, str, str2, str3, str4, str5, z, z2);
        C15149k.m377b(cVar, IapProductRealmObject.STATE);
        C15149k.m377b(numberInfo, "numberInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        C15149k.m377b(str3, "displayNumber");
        C15149k.m377b(str4, "displayRemoteNumber");
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: a */
    public void mo5452a() {
        AbstractC12741t.EnumC12745d dVar = this.f28716b;
        if (dVar != null) {
            switch (C12736o.f28707a[dVar.ordinal()]) {
                case 1:
                    mo5459k();
                    return;
                case 2:
                    mo5456n();
                    return;
                case 3:
                    mo5457m();
                    return;
                case 4:
                    mo5458l();
                    return;
                case 5:
                    m5464f();
                    return;
                case 6:
                    m5462h();
                    return;
                case 7:
                    m5461i();
                    return;
                case 8:
                case 9:
                    mo5465e();
                    return;
                case 10:
                    m5463g();
                    return;
                case 11:
                    mo5460j();
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: a */
    public final void m5467a(AbstractC12741t.C12742a aVar) {
        C15149k.m377b(aVar, "<set-?>");
        this.f28709l = aVar;
    }

    /* renamed from: a */
    public final void m5466a(AbstractC12741t.C12743b bVar) {
        C15149k.m377b(bVar, "<set-?>");
        this.f28708k = bVar;
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: c */
    public AbstractC12741t.C12742a mo5450c() {
        AbstractC12741t.C12742a aVar = this.f28709l;
        if (aVar != null) {
            return aVar;
        }
        C15149k.m373d("_description");
        throw null;
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: d */
    public AbstractC12741t.C12743b mo5449d() {
        AbstractC12741t.C12743b bVar = this.f28708k;
        if (bVar != null) {
            return bVar;
        }
        C15149k.m373d("_name");
        throw null;
    }

    /* renamed from: e */
    public void mo5465e() {
        String str;
        boolean z = true;
        if (this.f28723i) {
            str = m5451b();
        } else {
            if (this.f28717c.m28370Z()) {
                C15136c0 c0Var = C15136c0.f33133a;
                String a = C14206w4.m2225a((int) R$string.calldialog_myreport_category);
                Object[] objArr = {C14093n4.m2578a(this.f28717c.m28395A().reason)};
                str = String.format(a, Arrays.copyOf(objArr, objArr.length));
                C15149k.m383a((Object) str, "java.lang.String.format(format, *args)");
            } else if (this.f28717c.m28329f0()) {
                z = this.f28717c.m28373W();
                str = CallUtils.m26554b(this.f28717c.m28383M(), CallUtils.m26597a(this.f28717c.m28382N()));
            } else if (this.f28717c.m28374V()) {
                NumberInfo numberInfo = this.f28717c;
                str = CallUtils.m26573a(C14327z3.m1562c(this.f28717c.m28316j()), CallUtils.m26586a(numberInfo, numberInfo.m28313k() + this.f28717c.m28303p()));
            } else {
                str = C14206w4.m2225a((int) R$string.calldialog_community);
            }
            this.f28709l = new AbstractC12741t.C12742a(str, z);
            this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28393C(), false);
        }
        z = false;
        this.f28709l = new AbstractC12741t.C12742a(str, z);
        this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28393C(), false);
    }

    /* renamed from: f */
    public void m5464f() {
        this.f28708k = new AbstractC12741t.C12743b(this.f28722h, false);
        this.f28709l = new AbstractC12741t.C12742a(this.f28723i ? m5451b() : C14327z3.m1562c(this.f28717c.m28316j()), false);
    }

    /* renamed from: g */
    public void m5463g() {
        this.f28708k = new AbstractC12741t.C12743b(C14093n4.m2578a(this.f28717c.m28395A().reason), true);
        this.f28709l = new AbstractC12741t.C12742a(this.f28723i ? m5451b() : C14206w4.m2225a((int) R$string.calldialog_myreport), false);
    }

    /* renamed from: h */
    public void m5462h() {
        this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28394B().name, false);
        this.f28709l = new AbstractC12741t.C12742a(this.f28723i ? m5451b() : C14206w4.m2225a((int) R$string.calldialog_myreport), false);
    }

    /* renamed from: i */
    public void m5461i() {
        this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28391E().get(0).descr, false);
        this.f28709l = new AbstractC12741t.C12742a(this.f28723i ? m5451b() : C14206w4.m2225a((int) R$string.calldialog_memo), false);
    }

    /* renamed from: j */
    public void mo5460j() {
        this.f28708k = new AbstractC12741t.C12743b(C14093n4.m2572d(null, this.f28717c.m28383M()), this.f28717c.m28373W());
        this.f28709l = m5455o();
    }

    /* renamed from: k */
    public void mo5459k() {
        String P = this.f28717c.m28380P();
        if (!(true ^ (P == null || P.length() == 0))) {
            P = null;
        }
        if (P == null) {
            P = C14093n4.m2572d(null, "FPN");
        }
        this.f28708k = new AbstractC12741t.C12743b(P, false);
        this.f28709l = m5455o();
    }

    /* renamed from: l */
    public void mo5458l() {
        boolean z;
        String str;
        if (this.f28723i) {
            str = m5451b();
        } else if (this.f28717c.m28333e0()) {
            str = C14206w4.m2225a((int) R$string.calldialog_wcard_warning);
            z = true;
            this.f28709l = new AbstractC12741t.C12742a(str, z);
            this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28393C(), false);
        } else {
            str = C14206w4.m2225a((int) R$string.calldialog_profile_reminder);
        }
        z = false;
        this.f28709l = new AbstractC12741t.C12742a(str, z);
        this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28393C(), false);
    }

    /* renamed from: m */
    public void mo5457m() {
        this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28393C(), false);
        this.f28709l = new AbstractC12741t.C12742a(this.f28723i ? m5451b() : this.f28717c.m28307n(), false);
    }

    /* renamed from: n */
    public void mo5456n() {
        this.f28708k = new AbstractC12741t.C12743b(this.f28717c.m28393C(), false);
        this.f28709l = new AbstractC12741t.C12742a(this.f28723i ? m5451b() : this.f28717c.m28307n(), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0066, code lost:
        if (r6 != null) goto L_0x0083;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p459j.p460a.p521j0.p528w.AbstractC12741t.C12742a m5455o() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f28723i
            if (r0 == 0) goto L_0x000f
            r0 = r5
            java.lang.String r0 = r0.m5451b()
            r6 = r0
            goto L_0x0083
        L_0x000f:
            r0 = r5
            gogolook.callgogolook2.gson.NumberInfo r0 = r0.f28717c
            int r0 = r0.m28382N()
            int r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26597a(r0)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6 = r0
            r0 = r6
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x0029
            r0 = 1
            r7 = r0
            goto L_0x002b
        L_0x0029:
            r0 = 0
            r7 = r0
        L_0x002b:
            r0 = r7
            if (r0 == 0) goto L_0x0032
            goto L_0x0034
        L_0x0032:
            r0 = 0
            r6 = r0
        L_0x0034:
            r0 = r6
            if (r0 == 0) goto L_0x006c
            r0 = r6
            int r0 = r0.intValue()
            r7 = r0
            l.z.d.c0 r0 = p626l.p641z.p643d.C15136c0.f33133a
            r6 = r0
            r0 = 2131886510(0x7f1201ae, float:1.94076E38)
            java.lang.String r0 = p459j.p460a.p582w0.C14206w4.m2225a(r0)
            r6 = r0
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r8 = r0
            r0 = r8
            r1 = 0
            r2 = r7
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0[r1] = r2
            r0 = r6
            r1 = r8
            r2 = r8
            int r2 = r2.length
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r1, r2)
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "java.lang.String.format(format, *args)"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r6
            if (r0 == 0) goto L_0x006c
            goto L_0x0083
        L_0x006c:
            r0 = r5
            boolean r0 = r0.f28724j
            if (r0 == 0) goto L_0x007a
            r0 = 2131886511(0x7f1201af, float:1.9407603E38)
            r7 = r0
            goto L_0x007e
        L_0x007a:
            r0 = 2131886475(0x7f12018b, float:1.940753E38)
            r7 = r0
        L_0x007e:
            r0 = r7
            java.lang.String r0 = p459j.p460a.p582w0.C14206w4.m2225a(r0)
            r6 = r0
        L_0x0083:
            j.a.j0.w.t$a r0 = new j.a.j0.w.t$a
            r1 = r0
            r2 = r6
            r3 = 0
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p528w.AbstractC12737p.m5455o():j.a.j0.w.t$a");
    }
}
