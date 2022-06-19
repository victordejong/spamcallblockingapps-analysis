package p193e.p194a.p773g.p774a.p777c;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.flexbox.FlexboxLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.acs.C2778R;
import com.truecaller.acs.analytics.AnalyticsContext;
import com.truecaller.acs.data.AfterCallHistoryEvent;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p195a.p257l.C6756a;
import p193e.p194a.p773g.p783h.C14258c;
import p193e.p194a.p773g.p783h.C14264i;
import p193e.p194a.p773g.p783h.C14265j;
import p193e.p194a.p773g.p785j.C14319z;
import s1.a.l;
import s1.s;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� J2\u00020\u00012\u00020\u0002:\u0001KB\u0007¢\u0006\u0004\bI\u0010\u0014J\r\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001f\u001a\u00020\u00102\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001f\u0010 J)\u0010#\u001a\u00020\u00102\b\b\u0001\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b#\u0010$J)\u0010(\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u001c2\b\u0010&\u001a\u0004\u0018\u00010\u001c2\u0006\u0010'\u001a\u00020\u001cH\u0016¢\u0006\u0004\b(\u0010)J'\u0010-\u001a\u00020\u00102\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*2\u0006\u0010'\u001a\u00020\u001cH\u0016¢\u0006\u0004\b-\u0010.J)\u00100\u001a\u00020\u00102\b\u0010/\u001a\u0004\u0018\u00010\u001c2\u0006\u0010%\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u001cH\u0016¢\u0006\u0004\b0\u0010)J3\u00105\u001a\u00020\u0010*\u0002012\b\b\u0001\u00102\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00032\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u001003H\u0002¢\u0006\u0004\b5\u00106R\u001d\u0010<\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006L"}, d2 = {"Le/a/g/a/c/a;", "Landroidx/fragment/app/Fragment;", "Le/a/g/a/c/d;", "", "SA", "()Z", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "contactName", "isFullScreen", "z6", "(Ljava/lang/String;Z)V", "sendResultId", "text", "xq", "(ILjava/lang/String;Z)V", "phoneNumber", "message", "analyticsContext", "sr", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "messageId", "conversationId", "Tg", "(JJLjava/lang/String;)V", AnalyticsConstants.NAME, "vv", "Landroid/widget/TextView;", "textResId", "Lkotlin/Function0;", "clickListener", "TA", "(Landroid/widget/TextView;IZLs1/z/b/a;)V", "Le/a/g/h/c;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/g/h/c;", "binding", "Le/a/g/a/c/c;", "e", "Le/a/g/a/c/c;", "RA", "()Le/a/g/a/c/c;", "setPresenter", "(Le/a/g/a/c/c;)V", "presenter", "Le/a/p5/h0;", "h", "Le/a/p5/h0;", "resourceProvider", "<init>", "j", AbstractC2405c.f7629a, "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g.a.c.a */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/c/a.class */
public final class C14170a extends AbstractC14181f implements AbstractC14178d {

    /* renamed from: i */
    public static final /* synthetic */ l[] f40906i = {C22128a.m8621g0(C14170a.class, "binding", "getBinding()Lcom/truecaller/acs/databinding/FragmentAcsReplyBinding;", 0)};

    /* renamed from: j */
    public static final C14172c f40907j = new C14172c(null);
    @Inject

    /* renamed from: e */
    public AbstractC14177c f40908e;
    @Inject

    /* renamed from: f */
    public C14319z f40909f;

    /* renamed from: g */
    public final ViewBindingProperty f40910g = new C19350a(new C14171b());

    /* renamed from: h */
    public AbstractC19233h0 f40911h;

    /* renamed from: e.a.g.a.c.a$b */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/c/a$b.class */
    public static final class C14171b extends m implements s1.z.b.l<C14170a, C14258c> {
        public C14171b() {
            super(1);
        }

        /* renamed from: d */
        public Object m20613d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C2778R.C2780id.viewReply;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                C14264i m20310a = C14264i.m20310a(findViewById);
                i = C2778R.C2780id.view_reply_result;
                View findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    int i2 = C2778R.C2780id.acs_reply_btn;
                    Button button = (Button) findViewById2.findViewById(i2);
                    if (button != null) {
                        i2 = C2778R.C2780id.acs_reply_result;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById2.findViewById(i2);
                        if (appCompatTextView != null) {
                            i2 = C2778R.C2780id.acs_reply_text;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) findViewById2.findViewById(i2);
                            if (appCompatTextView2 != null) {
                                return new C14258c((ConstraintLayout) requireView, m20310a, new C14265j((ConstraintLayout) findViewById2, button, appCompatTextView, appCompatTextView2));
                            }
                        }
                    }
                    throw new NullPointerException("Missing required view with ID: ".concat(findViewById2.getResources().getResourceName(i2)));
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.g.a.c.a$c */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/c/a$c.class */
    public static final class C14172c {
        public C14172c(f fVar) {
        }

        /* renamed from: a */
        public final C14170a m20612a(String str, boolean z) {
            s1.z.c.l.e(str, "analyticsContext");
            C14170a c14170a = new C14170a();
            Bundle bundle = new Bundle();
            bundle.putString("arg_analytics_context", str);
            bundle.putBoolean("arg_is_Cred_privilege", z);
            c14170a.setArguments(bundle);
            return c14170a;
        }
    }

    /* renamed from: e.a.g.a.c.a$d */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/c/a$d.class */
    public static final class View$OnClickListenerC14173d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f40912a;

        public View$OnClickListenerC14173d(a aVar) {
            this.f40912a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f40912a.invoke();
        }
    }

    /* renamed from: e.a.g.a.c.a$e */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/c/a$e.class */
    public static final class View$OnClickListenerC14174e implements View.OnClickListener {
        public View$OnClickListenerC14174e() {
            C14170a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14179e c14179e = (C14179e) C14170a.this.m20616RA();
            long j = c14179e.f40919g;
            if (j != -1) {
                long j2 = c14179e.f40920h;
                if (j2 != -1) {
                    AbstractC14178d abstractC14178d = (AbstractC14178d) c14179e.f57683a;
                    if (abstractC14178d == null) {
                        return;
                    }
                    String str = c14179e.f40918f;
                    if (str != null) {
                        abstractC14178d.mo20611Tg(j, j2, str);
                        return;
                    } else {
                        s1.z.c.l.l("analyticsContext");
                        throw null;
                    }
                }
            }
            AbstractC14178d abstractC14178d2 = (AbstractC14178d) c14179e.f57683a;
            if (abstractC14178d2 != null) {
                String str2 = c14179e.f40916d;
                if (str2 == null) {
                    s1.z.c.l.l("phoneNumber");
                    throw null;
                }
                String str3 = c14179e.f40921i;
                String str4 = c14179e.f40918f;
                if (str4 != null) {
                    abstractC14178d2.mo20610sr(str2, str3, str4);
                } else {
                    s1.z.c.l.l("analyticsContext");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.g.a.c.a$f */
    /* loaded from: classes4-dex2jar.jar:e/a/g/a/c/a$f.class */
    public static final class C14175f extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ String f40915c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14175f(String str) {
            super(0);
            C14170a.this = r4;
            this.f40915c = str;
        }

        public Object invoke() {
            AbstractC14177c m20616RA = C14170a.this.m20616RA();
            String str = this.f40915c;
            C14179e c14179e = (C14179e) m20616RA;
            AbstractC14178d abstractC14178d = (AbstractC14178d) c14179e.f57683a;
            if (abstractC14178d != null) {
                String str2 = c14179e.f40916d;
                if (str2 == null) {
                    s1.z.c.l.l("phoneNumber");
                    throw null;
                }
                String str3 = c14179e.f40918f;
                if (str3 == null) {
                    s1.z.c.l.l("analyticsContext");
                    throw null;
                }
                abstractC14178d.mo20609vv(str, str2, str3);
            }
            return s.a;
        }
    }

    /* renamed from: QA */
    public final C14258c m20617QA() {
        return (C14258c) this.f40910g.m34468b(this, f40906i[0]);
    }

    /* renamed from: RA */
    public final AbstractC14177c m20616RA() {
        AbstractC14177c abstractC14177c = this.f40908e;
        if (abstractC14177c != null) {
            return abstractC14177c;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* renamed from: SA */
    public final boolean m20615SA() {
        Bundle arguments = getArguments();
        return s1.z.c.l.a(arguments != null ? arguments.get("arg_analytics_context") : null, AnalyticsContext.PACS.getValue());
    }

    /* renamed from: TA */
    public final void m20614TA(TextView textView, int i, boolean z, a<s> aVar) {
        C19286f.m13684T(textView);
        textView.setText(getString(i));
        textView.setOnClickListener(new View$OnClickListenerC14173d(aVar));
        if (z) {
            Context requireContext = requireContext();
            int i2 = C2778R.color.fullscreen_acs_reply_text_primary;
            Object obj = C26467a.f74235a;
            textView.setTextColor(C26467a.C26471d.m1787a(requireContext, i2));
            textView.setBackground(C26467a.C26470c.m1789b(requireContext(), C2778R.C2779drawable.tcx_message_reply_chip_bg_dark));
            return;
        }
        AbstractC19233h0 abstractC19233h0 = this.f40911h;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        textView.setTextColor(abstractC19233h0.mo13758l(C2778R.attr.tcx_message_reply_text_color_primary));
        AbstractC19233h0 abstractC19233h02 = this.f40911h;
        if (abstractC19233h02 != null) {
            textView.setBackground(abstractC19233h02.mo13763g(C2778R.attr.tcx_message_reply_chip_bg));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.p777c.AbstractC14178d
    /* renamed from: Tg */
    public void mo20611Tg(long j, long j2, String str) {
        s1.z.c.l.e(str, "analyticsContext");
        C14319z c14319z = this.f40909f;
        if (c14319z == null) {
            s1.z.c.l.l("replyNavigator");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Objects.requireNonNull(c14319z);
        s1.z.c.l.e(requireActivity, "activity");
        s1.z.c.l.e(str, "analyticsContext");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) ConversationActivity.class);
        intent.putExtra("conversation_id", j2);
        intent.putExtra("message_id", j);
        intent.putExtra("filter", 1);
        intent.putExtra("launch_source", str);
        requireActivity.startActivity(intent);
        requireActivity().finish();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C14170a.super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1 && intent != null) {
            long longExtra = intent.getLongExtra("extra_reply_conversation_id", -1L);
            long longExtra2 = intent.getLongExtra("extra_reply_message_id", -1L);
            boolean booleanExtra = intent.getBooleanExtra("extra_tc_default_sms_app", true);
            String stringExtra = intent.getStringExtra("extra_reply_text");
            if (stringExtra == null) {
                stringExtra = "";
            }
            s1.z.c.l.d(stringExtra, "it.getStringExtra(EXTRA_REPLY_TEXT) ?: \"\"");
            AbstractC14177c abstractC14177c = this.f40908e;
            if (abstractC14177c == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            C14179e c14179e = (C14179e) abstractC14177c;
            Objects.requireNonNull(c14179e);
            s1.z.c.l.e(stringExtra, "text");
            c14179e.m20604Kj(longExtra, longExtra2, Boolean.valueOf(booleanExtra), stringExtra);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view;
        s1.z.c.l.e(layoutInflater, "inflater");
        if (m20615SA()) {
            Bundle arguments = getArguments();
            view = arguments != null ? arguments.getBoolean("arg_is_Cred_privilege") : false ? C17422k.m16060p0(layoutInflater, true).inflate(C2778R.layout.fragment_acs_reply, viewGroup, false) : C17422k.m16050u0(layoutInflater, true).inflate(C2778R.layout.fragment_acs_reply, viewGroup, false);
            s1.z.c.l.d(view, "if (isCredPrivilege()) {…ner, false)\n            }");
        } else {
            view = layoutInflater.inflate(C2778R.layout.fragment_acs_reply, viewGroup, false);
            s1.z.c.l.d(view, "inflater.inflate(R.layou…_reply, container, false)");
        }
        return view;
    }

    public void onDestroyView() {
        AbstractC14177c abstractC14177c = this.f40908e;
        if (abstractC14177c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC14177c).mo9806c();
        C14170a.super.onDestroyView();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        C19235i0 c19235i0;
        String string;
        Intent intent;
        AfterCallHistoryEvent I;
        s1.z.c.l.e(view, ViewAction.VIEW);
        C14170a.super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (!(arguments != null ? arguments.getBoolean("arg_is_Cred_privilege") : false) || !m20615SA()) {
            Context requireContext = requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            c19235i0 = new C19235i0(C17422k.m16113E(requireContext, true));
        } else {
            Context context = view.getContext();
            s1.z.c.l.d(context, "view.context");
            c19235i0 = new C19235i0(context);
        }
        this.f40911h = c19235i0;
        AbstractC14177c abstractC14177c = this.f40908e;
        if (abstractC14177c == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC14177c).f57683a = this;
        n3.r.a.l activity = getActivity();
        if (activity != null && (intent = activity.getIntent()) != null && (I = n.I(intent, "ARG_ACS_HISTORY_EVENT")) != null) {
            AbstractC14177c abstractC14177c2 = this.f40908e;
            if (abstractC14177c2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            String str = I.getHistoryEvent().f11535b;
            if (str == null) {
                str = I.getHistoryEvent().f11536c;
            }
            s1.z.c.l.d(str, "afterCallHistoryEvent.hi…nt.historyEvent.rawNumber");
            Contact contact = I.getHistoryEvent().f11539f;
            String m35491w = contact != null ? contact.m35491w() : null;
            C14179e c14179e = (C14179e) abstractC14177c2;
            s1.z.c.l.e(str, "phoneNumber");
            c14179e.f40916d = str;
            if (m35491w != null) {
                str = m35491w;
            }
            c14179e.f40917e = str;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string = arguments2.getString("arg_analytics_context")) != null) {
            AbstractC14177c abstractC14177c3 = this.f40908e;
            if (abstractC14177c3 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.d(string, "it");
            s1.z.c.l.e(string, "analyticsContext");
            ((C14179e) abstractC14177c3).f40918f = string;
        }
        AbstractC14177c abstractC14177c4 = this.f40908e;
        if (abstractC14177c4 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C14179e c14179e2 = (C14179e) abstractC14177c4;
        AbstractC14178d abstractC14178d = (AbstractC14178d) c14179e2.f57683a;
        if (abstractC14178d == null) {
            return;
        }
        String str2 = c14179e2.f40917e;
        if (str2 != null) {
            abstractC14178d.mo20607z6(str2, c14179e2.m20606Ij());
        } else {
            s1.z.c.l.l("contactName");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.p777c.AbstractC14178d
    /* renamed from: sr */
    public void mo20610sr(String str, String str2, String str3) {
        s1.z.c.l.e(str, "phoneNumber");
        s1.z.c.l.e(str3, "analyticsContext");
        C14319z c14319z = this.f40909f;
        if (c14319z == null) {
            s1.z.c.l.l("replyNavigator");
            throw null;
        }
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Objects.requireNonNull(c14319z);
        s1.z.c.l.e(requireActivity, "activity");
        s1.z.c.l.e(str, "normalizedNumber");
        s1.z.c.l.e(str3, "analyticsContext");
        Participant m35455d = Participant.m35455d(str, c14319z.f41408a, "-1");
        s1.z.c.l.d(m35455d, "Participant.buildFromNum…M_TOKEN_UNKNOWN\n        )");
        Intent intent = new Intent((Context) requireActivity, (Class<?>) ConversationActivity.class);
        intent.putExtra("participants", new Participant[]{m35455d});
        intent.putExtra("filter", 1);
        intent.putExtra("launch_source", str3);
        if (str2 != null) {
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.TEXT", str2);
            intent.putExtra("send_intent", intent2);
        }
        requireActivity.startActivity(intent);
        requireActivity().finish();
    }

    @Override // p193e.p194a.p773g.p774a.p777c.AbstractC14178d
    /* renamed from: vv */
    public void mo20609vv(String str, String str2, String str3) {
        s1.z.c.l.e(str2, "phoneNumber");
        s1.z.c.l.e(str3, "analyticsContext");
        C14319z c14319z = this.f40909f;
        if (c14319z == null) {
            s1.z.c.l.l("replyNavigator");
            throw null;
        }
        Objects.requireNonNull(c14319z);
        s1.z.c.l.e(this, "fragment");
        s1.z.c.l.e(str2, "normalizedNumber");
        s1.z.c.l.e(str3, "analyticsContext");
        Objects.requireNonNull(C6756a.f22256e);
        s1.z.c.l.e(str2, "address");
        s1.z.c.l.e(str3, "analyticsContext");
        C6756a c6756a = new C6756a();
        Bundle bundle = new Bundle();
        bundle.putString("arg_participant_address", str2);
        bundle.putString("arg_participant_name", str);
        bundle.putString("arg_analytics_context", str3);
        c6756a.setArguments(bundle);
        c6756a.setTargetFragment(this, 1);
        c6756a.show(getParentFragmentManager(), "ReplyBottomSheet");
    }

    @Override // p193e.p194a.p773g.p774a.p777c.AbstractC14178d
    /* renamed from: xq */
    public void mo20608xq(int i, String str, boolean z) {
        s1.z.c.l.e(str, "text");
        C14264i c14264i = m20617QA().f41270a;
        s1.z.c.l.d(c14264i, "binding.viewReply");
        ConstraintLayout constraintLayout = c14264i.f41297a;
        s1.z.c.l.d(constraintLayout, "binding.viewReply.root");
        C19286f.m13687Q(constraintLayout);
        C14265j c14265j = m20617QA().f41271b;
        s1.z.c.l.d(c14265j, "binding.viewReplyResult");
        ConstraintLayout constraintLayout2 = c14265j.f41303a;
        s1.z.c.l.d(constraintLayout2, "binding.viewReplyResult.root");
        C19286f.m13684T(constraintLayout2);
        AppCompatTextView appCompatTextView = m20617QA().f41271b.f41305c;
        s1.z.c.l.d(appCompatTextView, "binding.viewReplyResult.acsReplyResult");
        appCompatTextView.setText(getString(i));
        AppCompatTextView appCompatTextView2 = m20617QA().f41271b.f41306d;
        s1.z.c.l.d(appCompatTextView2, "binding.viewReplyResult.acsReplyText");
        appCompatTextView2.setText(str);
        m20617QA().f41271b.f41304b.setOnClickListener(new View$OnClickListenerC14174e());
        if (z) {
            AppCompatTextView appCompatTextView3 = m20617QA().f41271b.f41305c;
            Context requireContext = requireContext();
            int i2 = C2778R.color.fullscreen_acs_reply_text_primary;
            Object obj = C26467a.f74235a;
            appCompatTextView3.setTextColor(C26467a.C26471d.m1787a(requireContext, i2));
            m20617QA().f41271b.f41306d.setTextColor(C26467a.C26471d.m1787a(requireContext(), C2778R.color.fullscreen_acs_reply_text_secondary));
            Button button = m20617QA().f41271b.f41304b;
            s1.z.c.l.d(button, "binding.viewReplyResult.acsReplyBtn");
            button.setBackground(C26467a.C26470c.m1789b(requireContext(), C2778R.C2779drawable.bg_facs_reply_btn));
            return;
        }
        AppCompatTextView appCompatTextView4 = m20617QA().f41271b.f41305c;
        AbstractC19233h0 abstractC19233h0 = this.f40911h;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        appCompatTextView4.setTextColor(abstractC19233h0.mo13758l(C2778R.attr.tcx_message_reply_text_color_primary));
        AppCompatTextView appCompatTextView5 = m20617QA().f41271b.f41306d;
        AbstractC19233h0 abstractC19233h02 = this.f40911h;
        if (abstractC19233h02 != null) {
            appCompatTextView5.setTextColor(abstractC19233h02.mo13758l(C2778R.attr.tcx_message_reply_text_color_secondary));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p773g.p774a.p777c.AbstractC14178d
    /* renamed from: z6 */
    public void mo20607z6(String str, boolean z) {
        AppCompatTextView appCompatTextView = m20617QA().f41270a.f41301e;
        s1.z.c.l.d(appCompatTextView, "binding.viewReply.replyOne");
        m20614TA(appCompatTextView, C2778R.string.acs_reply_option_one, z, new a(0, this));
        AppCompatTextView appCompatTextView2 = m20617QA().f41270a.f41302f;
        s1.z.c.l.d(appCompatTextView2, "binding.viewReply.replyTwo");
        m20614TA(appCompatTextView2, C2778R.string.acs_reply_option_two, z, new a(1, this));
        AppCompatTextView appCompatTextView3 = m20617QA().f41270a.f41300d;
        s1.z.c.l.d(appCompatTextView3, "binding.viewReply.replyCustom");
        m20614TA(appCompatTextView3, C2778R.string.acs_reply_option_custom, z, new C14175f(str));
        if (!z) {
            AppCompatTextView appCompatTextView4 = m20617QA().f41270a.f41298b;
            AbstractC19233h0 abstractC19233h0 = this.f40911h;
            if (abstractC19233h0 != null) {
                appCompatTextView4.setTextColor(abstractC19233h0.mo13758l(C2778R.attr.tcx_message_reply_text_color_secondary));
                return;
            } else {
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
        }
        AppCompatTextView appCompatTextView5 = m20617QA().f41270a.f41298b;
        Context requireContext = requireContext();
        int i = C2778R.color.fullscreen_acs_reply_text_secondary;
        Object obj = C26467a.f74235a;
        appCompatTextView5.setTextColor(C26467a.C26471d.m1787a(requireContext, i));
        View view = getView();
        if (view != null) {
            s1.z.c.l.d(view, "it");
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            int dimensionPixelSize = getResources().getDimensionPixelSize(C2778R.dimen.space);
            layoutParams2.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            view.setLayoutParams(layoutParams2);
            view.setBackground(C26467a.C26470c.m1789b(requireContext(), C2778R.C2779drawable.background_fullscreen_reply));
        }
        AppCompatTextView appCompatTextView6 = m20617QA().f41270a.f41298b;
        s1.z.c.l.d(appCompatTextView6, "binding.viewReply.acsReplyTitle");
        ViewGroup.LayoutParams layoutParams3 = appCompatTextView6.getLayoutParams();
        Objects.requireNonNull(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ConstraintLayout.C0111a) layoutParams3).f653s = 0;
        FlexboxLayout flexboxLayout = m20617QA().f41270a.f41299c;
        s1.z.c.l.d(flexboxLayout, "binding.viewReply.flexGroup");
        flexboxLayout.setJustifyContent(4);
    }
}
