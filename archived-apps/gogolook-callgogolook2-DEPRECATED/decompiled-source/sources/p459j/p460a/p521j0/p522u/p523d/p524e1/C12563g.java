package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.content.Context;
import android.view.View;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.util.Arrays;
import kotlin.Metadata;
import p459j.p460a.p521j0.p522u.p523d.C12640p0;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\bH\u0016J\"\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\bH\u0016J\"\u0010#\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002J\b\u0010(\u001a\u00020\bH\u0016J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\bH\u0016J\b\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020/H\u0016R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u00060\u0005R\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/DiffInfoQuestion;", "Lgogolook/callgogolook2/phone/call/dialog/data/ICommonQuestion;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "callStats", "Lgogolook/callgogolook2/gson/CallStats$Call;", "Lgogolook/callgogolook2/gson/CallStats;", "number", "", "askName", "(Lgogolook/callgogolook2/gson/RowInfo;Lgogolook/callgogolook2/gson/CallStats$Call;Ljava/lang/String;Ljava/lang/String;)V", "getAskName", "()Ljava/lang/String;", "getCallStats", "()Lgogolook/callgogolook2/gson/CallStats$Call;", "e164", "getE164", "getNumber", "getRowInfo", "()Lgogolook/callgogolook2/gson/RowInfo;", "cedViewTrackingType", "Lgogolook/callgogolook2/util/analytics/AnalyticsV2$CallEndDialogType;", "closeClickListener", "Landroid/view/View$OnClickListener;", "cta1", "cta1CLickListener", "context", "Landroid/content/Context;", "callViewWrapperCallback", "Lgogolook/callgogolook2/phone/call/dialog/CallEndAdapter$CallViewWrapperCallback;", "dialogActivityListener", "Lgogolook/callgogolook2/block/DialogActivityListener;", "cta1Color", "", "cta2", "cta2CLickListener", "onClickAction", "", "isCta1", "", "primary", "reportDialogType", "Lgogolook/callgogolook2/ReportDialogActivity$ReportDialogType;", "secondary", "userReportEventType", "Lgogolook/callgogolook2/util/analytics/event/UserReportEvent$Type;", "userReportStepEvent", "Lgogolook/callgogolook2/util/Event$UserReportStep;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.g */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/g.class */
public final class C12563g implements AbstractC12571k {

    /* renamed from: a */
    public final String f28300a;

    /* renamed from: b */
    public final RowInfo f28301b;

    /* renamed from: c */
    public final CallStats.Call f28302c;

    /* renamed from: d */
    public final String f28303d;

    /* renamed from: e */
    public final String f28304e;

    /* renamed from: j.a.j0.u.d.e1.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/g$a.class */
    public static final class View$OnClickListenerC12564a implements View.OnClickListener {
        public View$OnClickListenerC12564a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new C13877a2(C12563g.this.mo5835g(), C14241a.EnumC14243b.Close).m3267a(C14037j3.m2731a());
            C14261f.m1982a(C14261f.EnumC14264c.a_CED_Close, C12563g.this.mo5833i(), null, C12563g.this.m5893l(), C12563g.this.m5892m());
        }
    }

    /* renamed from: j.a.j0.u.d.e1.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/g$b.class */
    public static final class View$OnClickListenerC12565b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C12640p0.AbstractC12652l f28307b;

        /* renamed from: c */
        public final /* synthetic */ Context f28308c;

        public View$OnClickListenerC12565b(C12640p0.AbstractC12652l lVar, Context context) {
            this.f28307b = lVar;
            this.f28308c = context;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12563g.this.m5895a(true);
            C12563g gVar = C12563g.this;
            gVar.mo5844a(gVar.m5890o(), C12563g.this.m5891n()).m28472a(C12563g.this.m5893l()).m28474a(1, C12563g.this.m5894k()).m28457f();
            this.f28307b.onStop();
            CallUtils.m26549c(this.f28308c, 4);
        }
    }

    /* renamed from: j.a.j0.u.d.e1.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/g$c.class */
    public static final class View$OnClickListenerC12566c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28310b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28311c;

        /* renamed from: d */
        public final /* synthetic */ HandlerC12947l f28312d;

        public View$OnClickListenerC12566c(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
            this.f28310b = context;
            this.f28311c = lVar;
            this.f28312d = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12563g.this.m5895a(false);
            C12563g gVar = C12563g.this;
            DataUserReport a = gVar.mo5844a(gVar.m5890o(), C12563g.this.m5891n()).m28472a(C12563g.this.m5893l()).m28474a(0, C12563g.this.m5894k());
            Context context = this.f28310b;
            C12640p0.AbstractC12652l lVar = this.f28311c;
            RowInfo o = C12563g.this.m5890o();
            String n = C12563g.this.m5891n();
            HandlerC12947l lVar2 = this.f28312d;
            C15149k.m383a((Object) a, "dataUserReport");
            C14147s.m2362a(context, lVar, o, n, true, lVar2, false, false, false, a, C12563g.this);
        }
    }

    public C12563g(RowInfo rowInfo, CallStats.Call call, String str, String str2) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(call, "callStats");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "askName");
        this.f28301b = rowInfo;
        this.f28302c = call;
        this.f28303d = str;
        this.f28304e = str2;
        String l = C14108o4.m2474l(this.f28303d);
        C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(number)");
        this.f28300a = l;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: a */
    public View.OnClickListener mo5845a(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12566c(context, lVar, lVar2);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: a */
    public DataUserReport mo5844a(RowInfo rowInfo, String str) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(str, "number");
        return AbstractC12571k.C12572a.m5888a(this, rowInfo, str);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: a */
    public String mo5846a() {
        String str = this.f28301b.m28224h().name;
        C15149k.m383a((Object) str, "rowInfo.primary.name");
        return str;
    }

    /* renamed from: a */
    public final void m5895a(boolean z) {
        if (!this.f28302c.m28529B()) {
            this.f28301b.m28226g().m28332f();
        }
        new C13877a2(mo5835g(), z ? C14241a.EnumC14243b.Yes : C14241a.EnumC14243b.No).m3267a(C14037j3.m2731a());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, mo5833i(), z ? C14261f.EnumC14262a.yes : C14261f.EnumC14262a.no, this.f28302c, this.f28300a);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public View.OnClickListener mo5840b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12565b(lVar, context);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public String mo5841b() {
        C15136c0 c0Var = C15136c0.f33133a;
        String a = C14206w4.m2225a((int) R$string.callend_question_different_title);
        Object[] objArr = {this.f28304e};
        String format = String.format(a, Arrays.copyOf(objArr, objArr.length));
        C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
        return format;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: c */
    public int mo5839c() {
        return C14167t.m2315a(2131100068);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: d */
    public String mo5838d() {
        return C14206w4.m2225a((int) R$string.callend_question_nonespam_no);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: e */
    public String mo5837e() {
        return C14206w4.m2225a((int) R$string.callend_question_nonespam_yes);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: f */
    public C13877a2 mo5836f() {
        return new C13877a2(mo5835g(), C14241a.EnumC14243b.View);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: g */
    public C14241a.EnumC14244c mo5835g() {
        return C14241a.EnumC14244c.QuestionDiffInfo;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: h */
    public View.OnClickListener mo5834h() {
        return new View$OnClickListenerC12564a();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: i */
    public C14261f.EnumC14263b mo5833i() {
        return C14261f.EnumC14263b.question_diff_name;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: j */
    public ReportDialogActivity.EnumC4379w mo5832j() {
        return ReportDialogActivity.EnumC4379w.QUESTION_DIFFERENT_INFO;
    }

    /* renamed from: k */
    public final String m5894k() {
        return this.f28304e;
    }

    /* renamed from: l */
    public final CallStats.Call m5893l() {
        return this.f28302c;
    }

    /* renamed from: m */
    public final String m5892m() {
        return this.f28300a;
    }

    /* renamed from: n */
    public final String m5891n() {
        return this.f28303d;
    }

    /* renamed from: o */
    public final RowInfo m5890o() {
        return this.f28301b;
    }
}
