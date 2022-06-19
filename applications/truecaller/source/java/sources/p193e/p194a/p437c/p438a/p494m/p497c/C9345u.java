package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import io.agora.rtc.Constants;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9039i0;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10810b;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.a.l;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� =2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b;\u0010<J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u0011*\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\b\u0018\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\b\u001b\u0010\u0014J\u001f\u0010\u001c\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001aR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006>"}, d2 = {"Le/a/c/a/m/c/u;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "address", "TA", "(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "Le/a/c/r/h/h;", "RA", "(Le/a/c/r/h/h;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "UA", "OA", "(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "SA", "QA", "Le/a/c/w/o0/g;", C22021b.f61237c, "Le/a/c/w/o0/g;", "getSmartSmsFeatureFilter", "()Le/a/c/w/o0/g;", "setSmartSmsFeatureFilter", "(Le/a/c/w/o0/g;)V", "smartSmsFeatureFilter", "Le/a/c/a/g/i0;", "d", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/c/a/g/i0;", "binding", "Le/a/c/h/e;", "a", "Le/a/c/h/e;", "getInsightsFilterFetcher", "()Le/a/c/h/e;", "setInsightsFilterFetcher", "(Le/a/c/h/e;)V", "insightsFilterFetcher", "Le/a/c/w/o0/b;", AbstractC2405c.f7629a, "Le/a/c/w/o0/b;", "getSenderFilterManager", "()Le/a/c/w/o0/b;", "setSenderFilterManager", "(Le/a/c/w/o0/b;)V", "senderFilterManager", "<init>", "()V", "f", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.u */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u.class */
public final class C9345u extends Fragment {

    /* renamed from: e */
    public static final /* synthetic */ l[] f28397e = {C22128a.m8621g0(C9345u.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentQaAddressFiltersBinding;", 0)};

    /* renamed from: f */
    public static final C9347b f28398f = new C9347b(null);
    @Inject

    /* renamed from: a */
    public AbstractC10255e f28399a;
    @Inject

    /* renamed from: b */
    public AbstractC10821g f28400b;
    @Inject

    /* renamed from: c */
    public AbstractC10810b f28401c;

    /* renamed from: d */
    public final ViewBindingProperty f28402d = new C19350a(new C9346a());

    /* renamed from: e.a.c.a.m.c.u$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$a.class */
    public static final class C9346a extends m implements s1.z.b.l<C9345u, C9039i0> {
        public C9346a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27648d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.copy;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4078R.C4080id.filtersDetails;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.senderId;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        return new C9039i0(requireView, button, textView, textView2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.m.c.u$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$b.class */
    public static final class C9347b {
        public C9347b(f fVar) {
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment", f = "QaAddressFiltersFragment.kt", l = {122}, m = "IsSenderVerifiedForSmartSmsFeatures")
    /* renamed from: e.a.c.a.m.c.u$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$c.class */
    public static final class C9348c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28403d;

        /* renamed from: e */
        public int f28404e;

        /* renamed from: g */
        public Object f28406g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9348c(d dVar) {
            super(dVar);
            C9345u.this = r4;
        }

        /* renamed from: s */
        public final Object m27647s(Object obj) {
            this.f28403d = obj;
            this.f28404e |= Integer.MIN_VALUE;
            return C9345u.this.m27655OA(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment", f = "QaAddressFiltersFragment.kt", l = {140}, m = "getUserPreferenceForSender")
    /* renamed from: e.a.c.a.m.c.u$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$d.class */
    public static final class C9349d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28407d;

        /* renamed from: e */
        public int f28408e;

        /* renamed from: g */
        public Object f28410g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9349d(d dVar) {
            super(dVar);
            C9345u.this = r4;
        }

        /* renamed from: s */
        public final Object m27646s(Object obj) {
            this.f28407d = obj;
            this.f28408e |= Integer.MIN_VALUE;
            return C9345u.this.m27653QA(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment", f = "QaAddressFiltersFragment.kt", l = {104}, m = "isGrmAllowedForSender")
    /* renamed from: e.a.c.a.m.c.u$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$e.class */
    public static final class C9350e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28411d;

        /* renamed from: e */
        public int f28412e;

        /* renamed from: g */
        public Object f28414g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9350e(d dVar) {
            super(dVar);
            C9345u.this = r4;
        }

        /* renamed from: s */
        public final Object m27645s(Object obj) {
            this.f28411d = obj;
            this.f28412e |= Integer.MIN_VALUE;
            return C9345u.this.m27652RA(null, null, this);
        }
    }

    /* renamed from: e.a.c.a.m.c.u$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$f.class */
    public static final class View$OnClickListenerC9351f implements View.OnClickListener {
        public View$OnClickListenerC9351f() {
            C9345u.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C9345u c9345u = C9345u.this;
            l[] lVarArr = C9345u.f28397e;
            Object systemService = c9345u.requireContext().getSystemService("clipboard");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipboardManager clipboardManager = (ClipboardManager) systemService;
            TextView textView = c9345u.m27654PA().f27504b;
            s1.z.c.l.d(textView, "binding.filtersDetails");
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Filters", textView.getText().toString()));
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment", f = "QaAddressFiltersFragment.kt", l = {128, Constants.ERR_WATERMARK_READ, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, 131, 132, 133, 134, 135}, m = "printGetUserPreferenceForSender")
    /* renamed from: e.a.c.a.m.c.u$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$g.class */
    public static final class C9352g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28416d;

        /* renamed from: e */
        public int f28417e;

        /* renamed from: g */
        public Object f28419g;

        /* renamed from: h */
        public Object f28420h;

        /* renamed from: i */
        public Object f28421i;

        /* renamed from: j */
        public Object f28422j;

        /* renamed from: k */
        public Object f28423k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9352g(d dVar) {
            super(dVar);
            C9345u.this = r4;
        }

        /* renamed from: s */
        public final Object m27644s(Object obj) {
            this.f28416d = obj;
            this.f28417e |= Integer.MIN_VALUE;
            return C9345u.this.m27651SA(null, this);
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment", f = "QaAddressFiltersFragment.kt", l = {92, 93, 94, 95, 96, 97, 98, 99}, m = "printIsGrmAllowedForSender")
    /* renamed from: e.a.c.a.m.c.u$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$h.class */
    public static final class C9353h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28424d;

        /* renamed from: e */
        public int f28425e;

        /* renamed from: g */
        public Object f28427g;

        /* renamed from: h */
        public Object f28428h;

        /* renamed from: i */
        public Object f28429i;

        /* renamed from: j */
        public Object f28430j;

        /* renamed from: k */
        public Object f28431k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9353h(d dVar) {
            super(dVar);
            C9345u.this = r4;
        }

        /* renamed from: s */
        public final Object m27643s(Object obj) {
            this.f28424d = obj;
            this.f28425e |= Integer.MIN_VALUE;
            return C9345u.this.m27650TA(null, this);
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.QaAddressFiltersFragment", f = "QaAddressFiltersFragment.kt", l = {110, 111, 112, 113, 114, 115, 116, 117}, m = "printIsSenderVerifiedForSmartSmsFeatures")
    /* renamed from: e.a.c.a.m.c.u$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/u$i.class */
    public static final class C9354i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f28432d;

        /* renamed from: e */
        public int f28433e;

        /* renamed from: g */
        public Object f28435g;

        /* renamed from: h */
        public Object f28436h;

        /* renamed from: i */
        public Object f28437i;

        /* renamed from: j */
        public Object f28438j;

        /* renamed from: k */
        public Object f28439k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9354i(d dVar) {
            super(dVar);
            C9345u.this = r4;
        }

        /* renamed from: s */
        public final Object m27642s(Object obj) {
            this.f28432d = obj;
            this.f28433e |= Integer.MIN_VALUE;
            return C9345u.this.m27649UA(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* renamed from: OA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27655OA(java.lang.String r6, java.lang.String r7, s1.w.d<? super java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9345u.m27655OA(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: PA */
    public final C9039i0 m27654PA() {
        return (C9039i0) this.f28402d.m34468b(this, f28397e[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* renamed from: QA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27653QA(java.lang.String r9, java.lang.String r10, s1.w.d<? super java.lang.String> r11) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9345u.m27653QA(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* renamed from: RA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27652RA(p193e.p194a.p437c.p580r.p587h.AbstractC10553h r6, java.lang.String r7, s1.w.d<? super java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9345u.m27652RA(e.a.c.r.h.h, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0468  */
    /* renamed from: SA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27651SA(java.lang.String r6, s1.w.d<? super java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 1162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9345u.m27651SA(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0488  */
    /* renamed from: TA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27650TA(java.lang.String r6, s1.w.d<? super java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 1194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9345u.m27650TA(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0469  */
    /* renamed from: UA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m27649UA(java.lang.String r6, s1.w.d<? super java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 1167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p497c.C9345u.m27649UA(java.lang.String, s1.w.d):java.lang.Object");
    }

    public void onCreate(Bundle bundle) {
        C9345u.super.onCreate(bundle);
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        C9248b c9248b = (C9248b) abstractC9246a;
        AbstractC10255e mo12807A1 = c9248b.f28138b.mo12807A1();
        Objects.requireNonNull(mo12807A1, "Cannot return null from a non-@Nullable component method");
        this.f28399a = mo12807A1;
        AbstractC10821g mo12329j5 = c9248b.f28140d.mo12329j5();
        Objects.requireNonNull(mo12329j5, "Cannot return null from a non-@Nullable component method");
        this.f28400b = mo12329j5;
        AbstractC10810b mo12469Z2 = c9248b.f28140d.mo12469Z2();
        Objects.requireNonNull(mo12469Z2, "Cannot return null from a non-@Nullable component method");
        this.f28401c = mo12469Z2;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.fragment_qa_address_filters, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9345u.super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            s1.z.c.l.d(arguments, "arguments ?: return");
            String string = arguments.getString("address");
            if (string == null) {
                throw new IllegalStateException("Address is null");
            }
            s1.z.c.l.d(string, "arguments.getString(EXTR…eption(\"Address is null\")");
            TextView textView = m27654PA().f27505c;
            s1.z.c.l.d(textView, "binding.senderId");
            textView.setText(string);
            s1.a.a.a.v0.f.d.c3((s1.w.f) null, new C9355v(this, string, null), 1, (Object) null);
            m27654PA().f27503a.setOnClickListener(new View$OnClickListenerC9351f());
        }
    }
}
