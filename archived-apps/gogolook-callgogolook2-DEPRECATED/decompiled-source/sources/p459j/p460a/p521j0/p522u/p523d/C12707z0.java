package p459j.p460a.p521j0.p522u.p523d;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.TooltipCompatHandler;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.BasicPhoneNumber;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.FixedDegreeProgressView;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import gogolook.callgogolook2.view.RoundImageView;
import p081h.p119d.p120a.C5768f;
import p459j.p460a.p521j0.p522u.p523d.C12664s0;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13954d0;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14189u3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p594z4.C14330b;
import p660rx.functions.Action1;
/* renamed from: j.a.j0.u.d.z0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0.class */
public class C12707z0 {

    /* renamed from: a */
    public final Context f28670a;

    /* renamed from: b */
    public final FrameLayout f28671b;

    /* renamed from: c */
    public final C12680t0 f28672c;

    /* renamed from: e */
    public TextView f28674e;

    /* renamed from: f */
    public ImageView f28675f;

    /* renamed from: g */
    public ImageView f28676g;

    /* renamed from: h */
    public View f28677h;

    /* renamed from: i */
    public View f28678i;

    /* renamed from: j */
    public TextView f28679j;

    /* renamed from: k */
    public ProgressWheel f28680k;

    /* renamed from: l */
    public View f28681l;

    /* renamed from: m */
    public FixedDegreeProgressView f28682m;

    /* renamed from: n */
    public RecycleSafeImageView f28683n;

    /* renamed from: o */
    public ImageView f28684o;

    /* renamed from: p */
    public View f28685p;

    /* renamed from: q */
    public boolean f28686q = false;

    /* renamed from: r */
    public boolean f28687r = true;

    /* renamed from: s */
    public boolean f28688s = false;

    /* renamed from: d */
    public BasicPhoneNumber f28673d = new BasicPhoneNumber(CallStats.m28534h().m28539c().m28494i());

    /* renamed from: j.a.j0.u.d.z0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$a.class */
    public class C12708a implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ RecycleSafeImageView f28689a;

        public C12708a(C12707z0 z0Var, RecycleSafeImageView recycleSafeImageView) {
            this.f28689a = recycleSafeImageView;
        }

        /* renamed from: a */
        public void call(String str) {
            if (str != null) {
                C5768f<Uri> a = this.f28689a.m25906a(Uri.parse(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.valueOf(str).longValue()).toString()));
                a.mo24496b(C13909c.m3071b().m3094e().m3069a());
                a.mo24518a(this.f28689a);
                return;
            }
            this.f28689a.setImageResource(C13909c.m3071b().m3094e().m3069a());
        }
    }

    /* renamed from: j.a.j0.u.d.z0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$b.class */
    public class RunnableC12709b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f28690a;

        public RunnableC12709b(String str) {
            this.f28690a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C12707z0.this.f28688s) {
                C12707z0.this.f28679j.setText(this.f28690a);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.z0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$c.class */
    public class View$OnClickListenerC12710c implements View.OnClickListener {
        public View$OnClickListenerC12710c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CallStats.m28534h().m28539c().m28478y()) {
                C12707z0.this.f28672c.m5556b(true);
            } else {
                C12707z0.this.f28672c.m5561a(false);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.z0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$d.class */
    public class View$OnClickListenerC12711d implements View.OnClickListener {
        public View$OnClickListenerC12711d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12707z0.this.m5490b((RowInfo) null);
            C12707z0.this.f28672c.m5544j();
        }
    }

    /* renamed from: j.a.j0.u.d.z0$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$e.class */
    public class C12712e implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ View f28694a;

        public C12712e(C12707z0 z0Var, View view) {
            this.f28694a = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f28694a.setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: j.a.j0.u.d.z0$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$f.class */
    public class C12713f extends Thread {

        /* renamed from: a */
        public final /* synthetic */ Handler f28695a;

        /* renamed from: b */
        public final /* synthetic */ boolean f28696b;

        /* renamed from: c */
        public final /* synthetic */ C12664s0.C12677k f28697c;

        /* renamed from: j.a.j0.u.d.z0$f$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/z0$f$a.class */
        public class RunnableC12714a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C14330b.C14335d f28699a;

            public RunnableC12714a(C14330b.C14335d dVar) {
                this.f28699a = dVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.f28699a != null) {
                    C12707z0.this.f28677h.setVisibility(0);
                    C12707z0.this.f28679j.setCompoundDrawablePadding(C14217x3.m2201a(4.0f));
                    int i = this.f28699a.f32131c;
                    if (i == 1) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_incoming, 0, 0, 0);
                        TextView textView = C12707z0.this.f28679j;
                        textView.setText(C12707z0.this.m5505a(R$string.calldialog_callhistory_last_call) + " " + C14123p4.m2418f(this.f28699a.f32132d));
                    } else if (i == 2) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_outgoing, 0, 0, 0);
                        TextView textView2 = C12707z0.this.f28679j;
                        textView2.setText(C12707z0.this.m5505a(R$string.calldialog_callhistory_last_call) + " " + C14123p4.m2418f(this.f28699a.f32132d));
                    } else if (i == 3) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_missed, 0, 0, 0);
                        TextView textView3 = C12707z0.this.f28679j;
                        textView3.setText(C12707z0.this.m5505a(R$string.calldialog_callhistory_last_call) + " " + C14123p4.m2418f(this.f28699a.f32132d));
                    } else if (i == 4) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_sms, 0, 0, 0);
                        C12707z0.this.f28679j.setText(this.f28699a.f32130b);
                    } else if (i == 5) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_sms, 0, 0, 0);
                        C12707z0.this.f28679j.setText(this.f28699a.f32130b);
                    } else if (i == 6) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                        TextView textView4 = C12707z0.this.f28679j;
                        textView4.setText(C12707z0.this.m5505a(R$string.calldialog_callhistory_last_call) + " " + C14123p4.m2418f(this.f28699a.f32132d));
                    } else if (i == 7) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_sms, 0, 0, 0);
                        String str = this.f28699a.f32130b;
                        if (str == null) {
                            C12707z0.this.f28679j.setText(C12707z0.this.m5505a(R$string.calldialog_mms_content));
                        } else if (str.equals("")) {
                            C12707z0.this.f28679j.setText(C12707z0.this.m5505a(R$string.calldialog_mms_onlypic));
                        } else {
                            C12707z0.this.f28679j.setText(this.f28699a.f32130b);
                        }
                    } else if (i == 8) {
                        C12707z0.this.f28679j.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_icon_sms, 0, 0, 0);
                        String str2 = this.f28699a.f32130b;
                        if (str2 == null) {
                            C12707z0.this.f28679j.setText(C12707z0.this.m5505a(R$string.calldialog_mms_content));
                        } else if (str2.equals("")) {
                            C12707z0.this.f28679j.setText(C12707z0.this.m5505a(R$string.calldialog_mms_onlypic));
                        } else {
                            C12707z0.this.f28679j.setText(this.f28699a.f32130b);
                        }
                    } else {
                        C12713f fVar = C12713f.this;
                        if (fVar.f28696b) {
                            C12707z0.this.f28679j.setVisibility(8);
                            C12707z0.this.f28677h.setVisibility(8);
                        }
                    }
                } else {
                    C12713f fVar2 = C12713f.this;
                    if (fVar2.f28696b) {
                        C12707z0.this.f28677h.setVisibility(8);
                        C12707z0.this.f28679j.setVisibility(8);
                    }
                }
                C12707z0.this.m5481e();
            }
        }

        public C12713f(Handler handler, boolean z, C12664s0.C12677k kVar) {
            this.f28695a = handler;
            this.f28696b = z;
            this.f28697c = kVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f28695a.post(new RunnableC12714a(C14330b.m1551b().m1557a(C12707z0.this.f28670a, C12707z0.this.f28673d.number)));
            C12664s0.C12677k kVar = this.f28697c;
            if (kVar != null) {
                kVar.m5574b();
            }
        }
    }

    public C12707z0(Context context, C12680t0 t0Var, ViewGroup viewGroup) {
        this.f28670a = context;
        this.f28672c = t0Var;
        this.f28671b = (FrameLayout) viewGroup;
        m5487c();
        if (this.f28671b.getChildCount() == 0) {
            m5506a();
        }
        this.f28671b.findViewById(R$id.rl_phonenumber_area);
        this.f28674e = (TextView) this.f28671b.findViewById(2131363467);
        this.f28677h = this.f28671b.findViewById(R$id.ll_second);
        this.f28679j = (TextView) this.f28671b.findViewById(2131363555);
        if (this.f28686q) {
            this.f28678i = this.f28671b.findViewById(R$id.v_second_bar);
            this.f28675f = (ImageView) this.f28671b.findViewById(R$id.imgv_logo_for_light);
            this.f28676g = (ImageView) this.f28671b.findViewById(R$id.imgv_logo_for_dark);
        }
        this.f28680k = (ProgressWheel) this.f28671b.findViewById(R$id.pb_second);
        this.f28681l = this.f28671b.findViewById(R$id.tv_fourth);
        this.f28683n = MetaphorBadgeLayout.m25910b(this.f28671b, R$id.mbl_metaphor, R$id.iv_metaphor);
        this.f28684o = MetaphorBadgeLayout.m25912a(this.f28671b, R$id.mbl_metaphor, R$id.iv_card_spam_icon);
        this.f28685p = this.f28671b.findViewById(R$id.call_btn_close);
        this.f28682m = (FixedDegreeProgressView) this.f28671b.findViewById(R$id.pv_progress);
        m5490b((RowInfo) null);
    }

    /* renamed from: a */
    public final SpannableString m5500a(String str, int i) {
        SpannableString spannableString = new SpannableString(str);
        String b = C14093n4.m2575b(str);
        if (b == null) {
            return spannableString;
        }
        spannableString.setSpan(new ForegroundColorSpan(i), 0, b.length(), 33);
        return spannableString;
    }

    /* renamed from: a */
    public String m5505a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public final void m5506a() {
        this.f28671b.addView(LayoutInflater.from(this.f28670a).inflate(this.f28686q ? R$layout.calldialog_standard_body_incall : R$layout.calldialog_standard_body, (ViewGroup) null), -1, -2);
    }

    /* renamed from: a */
    public final void m5504a(RowInfo rowInfo) {
        NumberInfo g = rowInfo == null ? null : rowInfo.m28226g();
        this.f28685p.setOnClickListener(new View$OnClickListenerC12710c());
        if (this.f28686q) {
            this.f28685p.setVisibility(8);
        }
        TextView textView = (TextView) this.f28681l.findViewById(R$id.call_number);
        View findViewById = this.f28681l.findViewById(R$id.call_geo_bar);
        TextView textView2 = (TextView) this.f28681l.findViewById(R$id.call_geo);
        View findViewById2 = this.f28681l.findViewById(R$id.call_telecom_bar);
        TextView textView3 = (TextView) this.f28681l.findViewById(R$id.call_telecom);
        m5493a(textView, textView2, textView3);
        m5494a(findViewById, findViewById2);
        this.f28681l.setVisibility(0);
        String a = C14189u3.m2264c().m2270a(this.f28673d.number, g);
        String a2 = C14108o4.m2500a(rowInfo, this.f28673d.number);
        if (!C14217x3.m2160b(a)) {
            textView2.setVisibility(0);
            findViewById.setVisibility(0);
            textView2.setText(a);
        } else {
            textView2.setVisibility(8);
            findViewById.setVisibility(8);
        }
        if (!C14217x3.m2160b(a2)) {
            textView3.setVisibility(0);
            findViewById2.setVisibility(0);
            textView3.setText(a2);
            if (C14017g4.m2835A()) {
                textView3.setTextColor(this.f28670a.getResources().getColor(2131099793));
            }
        } else {
            textView3.setVisibility(8);
            findViewById2.setVisibility(8);
        }
        if ((rowInfo == null || rowInfo.m28224h() == null || rowInfo.m28224h().type == RowInfo.Primary.Type.NUMBER) && !this.f28673d.isContact) {
            textView.setVisibility(8);
            if (findViewById.getVisibility() == 0) {
                findViewById.setVisibility(8);
            } else if (findViewById2.getVisibility() == 0) {
                findViewById2.setVisibility(8);
            }
        } else {
            textView.setVisibility(0);
            BasicPhoneNumber basicPhoneNumber = this.f28673d;
            textView.setText(basicPhoneNumber.isIncomingSuspiciousNumber ? m5500a(basicPhoneNumber.displayNumber, -768713) : basicPhoneNumber.displayNumber);
        }
        if (textView.getVisibility() == 8 && textView2.getVisibility() == 8 && textView3.getVisibility() == 8) {
            this.f28681l.setVisibility(8);
        }
    }

    /* renamed from: a */
    public final void m5499a(String str, long j) {
        this.f28679j.postDelayed(new RunnableC12709b(str), j);
    }

    /* renamed from: a */
    public final void m5498a(boolean z) {
        TextView textView = this.f28674e;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(textView, "textColor", textView.getCurrentTextColor(), this.f28686q ? this.f28687r ? -14274233 : -1 : -13421773);
        ofInt.setEvaluator(new ArgbEvaluator());
        ofInt.setDuration(z ? 600L : 0L);
        ofInt.start();
    }

    /* renamed from: a */
    public final void m5497a(boolean z, @Nullable C12664s0.C12677k kVar) {
        new C12713f(new Handler(), z, kVar).start();
    }

    /* renamed from: a */
    public final void m5496a(boolean z, View... viewArr) {
        if (this.f28686q) {
            for (View view : viewArr) {
                ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(((ColorDrawable) view.getBackground()).getColor()), Integer.valueOf(this.f28687r ? -7696485 : -1));
                ofObject.setDuration(z ? 600L : 0L);
                ofObject.addUpdateListener(new C12712e(this, view));
                ofObject.start();
            }
        }
    }

    /* renamed from: a */
    public final void m5495a(boolean z, TextView... textViewArr) {
        if (this.f28686q) {
            for (TextView textView : textViewArr) {
                ObjectAnimator ofInt = ObjectAnimator.ofInt(textView, "textColor", textView.getCurrentTextColor(), this.f28687r ? -7696485 : -1);
                ofInt.setEvaluator(new ArgbEvaluator());
                ofInt.setDuration(z ? 600L : 0L);
                ofInt.start();
            }
        }
    }

    /* renamed from: a */
    public final void m5494a(View... viewArr) {
        m5496a(false, viewArr);
    }

    /* renamed from: a */
    public final void m5493a(TextView... textViewArr) {
        m5495a(false, textViewArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0359  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5503a(@androidx.annotation.Nullable gogolook.callgogolook2.gson.RowInfo r7, @androidx.annotation.Nullable p459j.p460a.p521j0.p522u.p523d.C12664s0.C12677k r8) {
        /*
            Method dump skipped, instructions count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12707z0.m5503a(gogolook.callgogolook2.gson.RowInfo, j.a.j0.u.d.s0$k):boolean");
    }

    /* renamed from: b */
    public BasicPhoneNumber m5492b() {
        return this.f28673d;
    }

    /* renamed from: b */
    public final void m5491b(int i) {
        this.f28688s = true;
        if (this.f28686q || this.f28682m == null || !(i == 1 || i == 3)) {
            FixedDegreeProgressView fixedDegreeProgressView = this.f28682m;
            if (fixedDegreeProgressView != null) {
                fixedDegreeProgressView.setVisibility(8);
            }
            this.f28680k.setVisibility(0);
            return;
        }
        this.f28682m.setVisibility(0);
        this.f28680k.setVisibility(8);
    }

    /* renamed from: b */
    public final void m5490b(RowInfo rowInfo) {
        m5484d();
        m5476g();
        m5504a(rowInfo);
        RoundImageView b = MetaphorBadgeLayout.m25910b(this.f28671b, R$id.mbl_metaphor, R$id.iv_metaphor);
        b.setVisibility(0);
        if (this.f28673d.isContact) {
            CallUtils.m26572a(this.f28673d.number, new C12708a(this, b));
        } else {
            b.setImageResource(C13909c.m3071b().m3077v().m3069a());
        }
        this.f28674e.setVisibility(0);
        this.f28679j.setVisibility(0);
        this.f28679j.setSingleLine(false);
        BasicPhoneNumber basicPhoneNumber = this.f28673d;
        if (basicPhoneNumber.isContact || basicPhoneNumber.isUnknown) {
            this.f28674e.setText(this.f28673d.name);
            this.f28677h.setVisibility(8);
            m5474h();
        } else {
            this.f28674e.setText(basicPhoneNumber.isIncomingSuspiciousNumber ? m5500a(basicPhoneNumber.displayNumber, -768713) : basicPhoneNumber.displayNumber);
            this.f28677h.setVisibility(0);
            if (!CallUtils.m26566a(!CallStats.m28534h().m28539c().m28529B(), this.f28673d.isContact) || !C13878a3.m3209i()) {
                m5474h();
            } else {
                int h = C12629k0.m5707h();
                m5491b(h);
                if (this.f28686q || !(h == 2 || h == 3)) {
                    TextView textView = this.f28679j;
                    textView.setText(m5505a(R$string.calldialog_searching) + "...");
                    if (C13891a.m3156f()) {
                        m5499a(m5505a(R$string.cd_searching_connection_unstable) + "...", 12000L);
                    }
                } else {
                    this.f28679j.setText(R$string.calldialog_searching1);
                    m5499a(this.f28670a.getString(R$string.calldialog_searching2), TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                    m5499a(this.f28670a.getString(R$string.calldialog_searching3), 8000L);
                }
            }
        }
        m5481e();
        if (!CallUtils.m26566a(!CallStats.m28534h().m28539c().m28529B(), this.f28673d.isContact) || !C13878a3.m3209i()) {
            BasicPhoneNumber basicPhoneNumber2 = this.f28673d;
            String str = basicPhoneNumber2.isContact ? basicPhoneNumber2.name : basicPhoneNumber2.displayNumber;
            this.f28674e.setText(str);
            C14037j3.m2731a().mo2704a(new C13954d0(this.f28673d.number, str));
        }
    }

    /* renamed from: b */
    public final void m5488b(boolean z) {
        ImageView imageView = this.f28675f;
        if (imageView != null && this.f28676g != null) {
            float f = 1.0f;
            long j = 600;
            imageView.animate().alpha(this.f28687r ? 1.0f : 0.0f).setDuration(z ? 600L : 0L).start();
            ViewPropertyAnimator animate = this.f28676g.animate();
            if (this.f28687r) {
                f = 0.0f;
            }
            ViewPropertyAnimator alpha = animate.alpha(f);
            if (!z) {
                j = 0;
            }
            alpha.setDuration(j).start();
        }
    }

    /* renamed from: c */
    public final void m5487c() {
        C12664s0 d = this.f28672c.m5823d();
        if (d != null) {
            boolean z = true;
            this.f28686q = d.m5625e() == EnumC12627j0.VIEW;
            if (d.m5627d() != EnumC12625i0.LIGHT) {
                z = false;
            }
            this.f28687r = z;
        }
    }

    /* renamed from: c */
    public final void m5486c(RowInfo rowInfo) {
        TextView textView = (TextView) this.f28681l.findViewById(R$id.call_number);
        View findViewById = this.f28681l.findViewById(R$id.call_geo_bar);
        TextView textView2 = (TextView) this.f28681l.findViewById(R$id.call_geo);
        View findViewById2 = this.f28681l.findViewById(R$id.call_telecom_bar);
        TextView textView3 = (TextView) this.f28681l.findViewById(R$id.call_telecom);
        m5495a(true, textView, textView2, textView3);
        m5496a(true, findViewById, findViewById2);
        if (!C14217x3.m2160b(C14108o4.m2500a(rowInfo, this.f28673d.number)) && C14017g4.m2835A()) {
            textView3.setTextColor(this.f28670a.getResources().getColor(2131099793));
        }
    }

    /* renamed from: d */
    public final void m5484d() {
        m5498a(false);
    }

    /* renamed from: d */
    public final void m5483d(RowInfo rowInfo) {
        m5498a(true);
        m5488b(true);
        m5486c(rowInfo);
    }

    /* renamed from: e */
    public final void m5481e() {
        View view = this.f28678i;
        if (view != null) {
            view.setVisibility((this.f28679j.getVisibility() != 0 || this.f28679j.getText().length() <= 0) ? 8 : 0);
        }
    }

    /* renamed from: e */
    public void m5480e(RowInfo rowInfo) {
        m5487c();
        if (this.f28673d.isContact || !(rowInfo == null || rowInfo.m28226g() == null || rowInfo.m28226g().m28294t0())) {
            m5498a(true);
            m5488b(true);
            m5486c(rowInfo);
            if (!this.f28673d.isContact) {
                if (rowInfo.m28224h() != null) {
                    if (rowInfo.m28224h().isRed) {
                        this.f28674e.setTextColor(-768713);
                    } else {
                        m5498a(true);
                    }
                }
                if (rowInfo.m28223i() != null) {
                    if (rowInfo.m28223i().isRed || rowInfo.m28223i().type == RowInfo.Secondary.Type.COO_DESC) {
                        this.f28679j.setTextColor(-768713);
                    } else {
                        m5478f();
                    }
                    if (rowInfo.m28223i().type == RowInfo.Secondary.Type.NO_INFO) {
                        if (rowInfo.m28223i().hasUsefulInfo) {
                            this.f28679j.setText(C14123p4.m2438a(rowInfo.m28223i().name, rowInfo.m28223i().highlightWord, rowInfo.m28223i().highlightColor));
                        } else {
                            String a = C14108o4.m2500a(rowInfo, this.f28673d.number);
                            if (C14017g4.m2835A() && !C14217x3.m2160b(a)) {
                                this.f28679j.setText(C14123p4.m2438a(C14206w4.m2224a(CallStats.m28534h().m28539c().m28529B() ? R$string.calldialog_noinfo_brcarrier_outgoing : R$string.calldialog_noinfo_brcarrier_incoming, a), a, this.f28670a.getResources().getColor(2131099793)));
                            }
                        }
                        m5481e();
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        m5483d(rowInfo);
    }

    /* renamed from: f */
    public final void m5478f() {
        this.f28679j.setTextColor(this.f28686q ? -7696485 : -13421773);
    }

    /* renamed from: g */
    public final void m5476g() {
        m5488b(false);
    }

    /* renamed from: h */
    public final void m5474h() {
        this.f28688s = false;
        this.f28680k.setVisibility(8);
        FixedDegreeProgressView fixedDegreeProgressView = this.f28682m;
        if (fixedDegreeProgressView != null) {
            fixedDegreeProgressView.setVisibility(8);
        }
    }
}
