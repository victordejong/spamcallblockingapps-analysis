package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.view.View;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.RowInfo;
import kotlin.Metadata;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0005H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/BrNoInfoQuestion;", "Lgogolook/callgogolook2/phone/call/dialog/data/IQuestion;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "number", "", "displayNumber", "isIncomingSuspiciousNumber", "", "(Lgogolook/callgogolook2/gson/RowInfo;Ljava/lang/String;Ljava/lang/String;Z)V", "getDisplayNumber", "()Ljava/lang/String;", "e164", "getE164", "()Z", "getNumber", "getRowInfo", "()Lgogolook/callgogolook2/gson/RowInfo;", "cedViewTrackingType", "Lgogolook/callgogolook2/util/analytics/AnalyticsV2$CallEndDialogType;", "closeClickListener", "Landroid/view/View$OnClickListener;", "primary", "reportDialogType", "Lgogolook/callgogolook2/ReportDialogActivity$ReportDialogType;", "userReportEventType", "Lgogolook/callgogolook2/util/analytics/event/UserReportEvent$Type;", "userReportStepEvent", "Lgogolook/callgogolook2/util/Event$UserReportStep;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.a */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/a.class */
public final class C12555a implements AbstractC12573l {

    /* renamed from: a */
    public final String f28263a;

    /* renamed from: b */
    public final String f28264b;

    /* renamed from: c */
    public final String f28265c;

    /* renamed from: d */
    public final boolean f28266d;

    /* renamed from: j.a.j0.u.d.e1.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/a$a.class */
    public static final class View$OnClickListenerC12556a implements View.OnClickListener {
        public View$OnClickListenerC12556a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new C13877a2(C12555a.this.mo5835g(), C14241a.EnumC14243b.Close).m3267a(C14037j3.m2731a());
            C14261f.EnumC14264c cVar = C14261f.EnumC14264c.a_CED_Close;
            C14261f.EnumC14263b i = C12555a.this.mo5833i();
            CallStats h = CallStats.m28534h();
            C15149k.m383a((Object) h, "CallStats.getInstance()");
            C14261f.m1982a(cVar, i, null, h.m28539c(), C12555a.this.m5909k());
        }
    }

    public C12555a(RowInfo rowInfo, String str, String str2, boolean z) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "displayNumber");
        this.f28264b = str;
        this.f28265c = str2;
        this.f28266d = z;
        String l = C14108o4.m2474l(this.f28264b);
        C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(number)");
        this.f28263a = l;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: a */
    public DataUserReport mo5844a(RowInfo rowInfo, String str) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        return AbstractC12573l.C12574a.m5887a(this, rowInfo, str);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: a */
    public String mo5846a() {
        String str;
        if (this.f28266d) {
            str = C14147s.m2358a(this.f28265c).toString();
            C15149k.m383a((Object) str, "CedUtils.getCountryCodeH…displayNumber).toString()");
        } else {
            str = this.f28265c;
        }
        return str;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: f */
    public C13877a2 mo5836f() {
        return new C13877a2(mo5835g(), C14241a.EnumC14243b.View);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: g */
    public C14241a.EnumC14244c mo5835g() {
        return C14241a.EnumC14244c.Direct;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: h */
    public View.OnClickListener mo5834h() {
        return new View$OnClickListenerC12556a();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: i */
    public C14261f.EnumC14263b mo5833i() {
        return C14261f.EnumC14263b.direct_ask;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: j */
    public ReportDialogActivity.EnumC4379w mo5832j() {
        return ReportDialogActivity.EnumC4379w.DIRECT_ASK;
    }

    /* renamed from: k */
    public final String m5909k() {
        return this.f28263a;
    }
}
