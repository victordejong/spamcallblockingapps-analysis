package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.content.Context;
import android.view.View;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.RowInfo;
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
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005R\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\bH\u0016J\"\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010 \u001a\u00020!H\u0016J\b\u0010\"\u001a\u00020\bH\u0016J\"\u0010#\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0002J\b\u0010(\u001a\u00020\bH\u0016J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\bH\u0016J\b\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020/H\u0016R\u0015\u0010\u0004\u001a\u00060\u0005R\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/SuggestSpamQuestion;", "Lgogolook/callgogolook2/phone/call/dialog/data/ICommonQuestion;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "callStats", "Lgogolook/callgogolook2/gson/CallStats$Call;", "Lgogolook/callgogolook2/gson/CallStats;", "number", "", "displayNumber", "(Lgogolook/callgogolook2/gson/RowInfo;Lgogolook/callgogolook2/gson/CallStats$Call;Ljava/lang/String;Ljava/lang/String;)V", "getCallStats", "()Lgogolook/callgogolook2/gson/CallStats$Call;", "getDisplayNumber", "()Ljava/lang/String;", "e164", "getE164", "getNumber", "getRowInfo", "()Lgogolook/callgogolook2/gson/RowInfo;", "cedViewTrackingType", "Lgogolook/callgogolook2/util/analytics/AnalyticsV2$CallEndDialogType;", "closeClickListener", "Landroid/view/View$OnClickListener;", "cta1", "cta1CLickListener", "context", "Landroid/content/Context;", "callViewWrapperCallback", "Lgogolook/callgogolook2/phone/call/dialog/CallEndAdapter$CallViewWrapperCallback;", "dialogActivityListener", "Lgogolook/callgogolook2/block/DialogActivityListener;", "cta1Color", "", "cta2", "cta2CLickListener", "onClickAction", "", "isCta1", "", "primary", "reportDialogType", "Lgogolook/callgogolook2/ReportDialogActivity$ReportDialogType;", "secondary", "userReportEventType", "Lgogolook/callgogolook2/util/analytics/event/UserReportEvent$Type;", "userReportStepEvent", "Lgogolook/callgogolook2/util/Event$UserReportStep;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.t */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/t.class */
public final class C12596t implements AbstractC12571k {

    /* renamed from: a */
    public final String f28392a;

    /* renamed from: b */
    public final RowInfo f28393b;

    /* renamed from: c */
    public final CallStats.Call f28394c;

    /* renamed from: d */
    public final String f28395d;

    /* renamed from: e */
    public final String f28396e;

    /* renamed from: j.a.j0.u.d.e1.t$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/t$a.class */
    public static final class View$OnClickListenerC12597a implements View.OnClickListener {
        public View$OnClickListenerC12597a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new C13877a2(C12596t.this.mo5835g(), C14241a.EnumC14243b.Close).m3267a(C14037j3.m2731a());
            C14261f.EnumC14264c cVar = C14261f.EnumC14264c.a_CED_Close;
            C14261f.EnumC14263b i = C12596t.this.mo5833i();
            CallStats h = CallStats.m28534h();
            C15149k.m383a((Object) h, "CallStats.getInstance()");
            C14261f.m1982a(cVar, i, null, h.m28539c(), C14108o4.m2474l(C12596t.this.m5830l()));
        }
    }

    /* renamed from: j.a.j0.u.d.e1.t$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/t$b.class */
    public static final class View$OnClickListenerC12598b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28399b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28400c;

        /* renamed from: d */
        public final /* synthetic */ HandlerC12947l f28401d;

        public View$OnClickListenerC12598b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
            this.f28399b = context;
            this.f28400c = lVar;
            this.f28401d = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12596t.this.m5842a(true);
            C12596t tVar = C12596t.this;
            DataUserReport b = tVar.mo5844a(tVar.m5829m(), C12596t.this.m5830l()).m28472a(C12596t.this.m5831k()).m28466b(1, "OTHER");
            Context context = this.f28399b;
            C12640p0.AbstractC12652l lVar = this.f28400c;
            HandlerC12947l lVar2 = this.f28401d;
            C15149k.m383a((Object) b, "dataUserReport");
            C14147s.m2361a(context, lVar, false, false, false, lVar2, b, C12596t.this.mo5835g(), C12596t.this.mo5832j());
        }
    }

    /* renamed from: j.a.j0.u.d.e1.t$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/t$c.class */
    public static final class View$OnClickListenerC12599c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ Context f28403b;

        /* renamed from: c */
        public final /* synthetic */ C12640p0.AbstractC12652l f28404c;

        /* renamed from: d */
        public final /* synthetic */ HandlerC12947l f28405d;

        public View$OnClickListenerC12599c(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
            this.f28403b = context;
            this.f28404c = lVar;
            this.f28405d = lVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12596t.this.m5842a(false);
            C12596t tVar = C12596t.this;
            DataUserReport b = tVar.mo5844a(tVar.m5829m(), C12596t.this.m5830l()).m28472a(C12596t.this.m5831k()).m28466b(0, "HFB");
            Context context = this.f28403b;
            C12640p0.AbstractC12652l lVar = this.f28404c;
            RowInfo m = C12596t.this.m5829m();
            String l = C12596t.this.m5830l();
            HandlerC12947l lVar2 = this.f28405d;
            C15149k.m383a((Object) b, "dataUserReport");
            C14147s.m2362a(context, lVar, m, l, true, lVar2, false, false, false, b, C12596t.this);
        }
    }

    public C12596t(RowInfo rowInfo, CallStats.Call call, String str, String str2) {
        C15149k.m377b(rowInfo, "rowInfo");
        C15149k.m377b(call, "callStats");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "displayNumber");
        this.f28393b = rowInfo;
        this.f28394c = call;
        this.f28395d = str;
        this.f28396e = str2;
        String l = C14108o4.m2474l(this.f28395d);
        C15149k.m383a((Object) l, "UtilsTelephony.parseE164Number(number)");
        this.f28392a = l;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: a */
    public View.OnClickListener mo5845a(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12599c(context, lVar, lVar2);
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
        return this.f28396e;
    }

    /* renamed from: a */
    public final void m5842a(boolean z) {
        if (!this.f28394c.m28529B()) {
            this.f28393b.m28226g().m28332f();
        }
        new C13877a2(mo5835g(), z ? C14241a.EnumC14243b.Spam : C14241a.EnumC14243b.NotSpam).m3267a(C14037j3.m2731a());
        C14261f.EnumC14264c cVar = C14261f.EnumC14264c.a_CED_Action;
        C14261f.EnumC14263b i = mo5833i();
        C14261f.EnumC14262a aVar = z ? C14261f.EnumC14262a.yes : C14261f.EnumC14262a.no;
        CallStats h = CallStats.m28534h();
        C15149k.m383a((Object) h, "CallStats.getInstance()");
        C14261f.m1982a(cVar, i, aVar, h.m28539c(), this.f28392a);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public View.OnClickListener mo5840b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "callViewWrapperCallback");
        return new View$OnClickListenerC12598b(context, lVar, lVar2);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: b */
    public String mo5841b() {
        return C14206w4.m2225a((int) R$string.callend_question_spam_title);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: c */
    public int mo5839c() {
        return C14167t.m2315a(2131100119);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: d */
    public String mo5838d() {
        return C14206w4.m2225a((int) R$string.callend_question_spam_no);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k
    /* renamed from: e */
    public String mo5837e() {
        return C14206w4.m2225a((int) R$string.callend_question_spam_yes);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: f */
    public C13877a2 mo5836f() {
        return new C13877a2(mo5835g(), C14241a.EnumC14243b.View);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: g */
    public C14241a.EnumC14244c mo5835g() {
        return C14241a.EnumC14244c.QuestionSuggestSpam;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: h */
    public View.OnClickListener mo5834h() {
        return new View$OnClickListenerC12597a();
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: i */
    public C14261f.EnumC14263b mo5833i() {
        return C14261f.EnumC14263b.question_suggest_spam;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l
    /* renamed from: j */
    public ReportDialogActivity.EnumC4379w mo5832j() {
        return ReportDialogActivity.EnumC4379w.QUESTION_SUGGESTION_SPAM;
    }

    /* renamed from: k */
    public final CallStats.Call m5831k() {
        return this.f28394c;
    }

    /* renamed from: l */
    public final String m5830l() {
        return this.f28395d;
    }

    /* renamed from: m */
    public final RowInfo m5829m() {
        return this.f28393b;
    }
}
