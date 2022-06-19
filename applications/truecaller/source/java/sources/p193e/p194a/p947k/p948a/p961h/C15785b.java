package p193e.p194a.p947k.p948a.p961h;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p947k.p972m.C16130d;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0001\u0018�� \u001e2\u00020\u00012\u00020\u0002:\u0001\u001fB\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006 "}, d2 = {"Le/a/k/a/h/b;", "Le/m/a/g/e/e;", "", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "", "getTheme", "()I", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/k/m/d;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/k/m/d;", "binding", "<init>", "()V", "g", C22021b.f61237c, "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.h.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/h/b.class */
public final class C15785b extends AbstractC15784a {

    /* renamed from: f */
    public static final /* synthetic */ l[] f44542f = {C22128a.m8621g0(C15785b.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/BottomSheetVideoCallerIdReportBinding;", 0)};

    /* renamed from: g */
    public static final C15787b f44543g = new C15787b(null);

    /* renamed from: e */
    public final ViewBindingProperty f44544e = new C19350a(new C15786a());

    /* renamed from: e.a.k.a.h.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/h/b$a.class */
    public static final class C15786a extends m implements s1.z.b.l<C15785b, C16130d> {
        public C15786a() {
            super(1);
        }

        /* renamed from: d */
        public Object m18311d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.blockReportBtn;
            AppCompatButton appCompatButton = (AppCompatButton) requireView.findViewById(i);
            if (appCompatButton != null) {
                i = C4718R.C4720id.chooseReasonTv;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4718R.C4720id.reportBtn;
                    AppCompatButton appCompatButton2 = (AppCompatButton) requireView.findViewById(i);
                    if (appCompatButton2 != null) {
                        i = C4718R.C4720id.reportCautionTv;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            i = C4718R.C4720id.reportReasonOneTv;
                            AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) requireView.findViewById(i);
                            if (appCompatCheckBox != null) {
                                i = C4718R.C4720id.reportReasonTwoTv;
                                AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) requireView.findViewById(i);
                                if (appCompatCheckBox2 != null) {
                                    i = C4718R.C4720id.titleTv;
                                    TextView textView3 = (TextView) requireView.findViewById(i);
                                    if (textView3 != null) {
                                        return new C16130d((ConstraintLayout) requireView, appCompatButton, textView, appCompatButton2, textView2, appCompatCheckBox, appCompatCheckBox2, textView3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.k.a.h.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/h/b$b.class */
    public static final class C15787b {
        public C15787b(f fVar) {
        }
    }

    @Override // p193e.p194a.p947k.p948a.p961h.AbstractC15784a
    public Context getContext() {
        Context context = super.getContext();
        return context != null ? C17422k.m16113E(context, true) : null;
    }

    public int getTheme() {
        return C4718R.style.StyleX_BottomSheetDialogTheme;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4718R.layout.bottom_sheet_video_caller_id_report, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…report, container, false)");
        return inflate;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
        if (r10 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r10, android.os.Bundle r11) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "view"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            r1 = r10
            r2 = r11
            p193e.p194a.p947k.p948a.p961h.C15785b.super.onViewCreated(r1, r2)
            r0 = r9
            android.os.Bundle r0 = r0.getArguments()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L23
            r0 = r10
            java.lang.String r1 = "argReportContactName"
            java.lang.String r0 = r0.getString(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L23
            goto L2b
        L23:
            r0 = r9
            int r1 = com.truecaller.videocallerid.C4718R.string.vid_hidden_contact
            java.lang.String r0 = r0.getString(r1)
            r10 = r0
        L2b:
            r0 = r10
            java.lang.String r1 = "arguments?.getString(ARG…tring.vid_hidden_contact)"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            com.truecaller.utils.viewbinding.ViewBindingProperty r0 = r0.f44544e
            r1 = r9
            s1.a.l[] r2 = p193e.p194a.p947k.p948a.p961h.C15785b.f44542f
            r3 = 0
            r2 = r2[r3]
            n3.j0.a r0 = r0.m34468b(r1, r2)
            e.a.k.m.d r0 = (p193e.p194a.p947k.p972m.C16130d) r0
            r11 = r0
            r0 = r11
            android.widget.TextView r0 = r0.f45464b
            r12 = r0
            r0 = r12
            java.lang.String r1 = "titleTv"
            s1.z.c.l.d(r0, r1)
            int r0 = com.truecaller.videocallerid.C4718R.string.vid_report_title
            r13 = r0
            int r0 = com.truecaller.videocallerid.C4718R.string.video_caller_id
            r14 = r0
            r0 = r12
            r1 = r9
            r2 = r13
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r9
            r7 = r14
            java.lang.String r6 = r6.getString(r7)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r10
            r4[r5] = r6
            java.lang.String r1 = r1.getString(r2, r3)
            r0.setText(r1)
            r0 = r11
            androidx.appcompat.widget.AppCompatCheckBox r0 = r0.f45463a
            r10 = r0
            r0 = r10
            java.lang.String r1 = "reportReasonOneTv"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            r1 = r9
            int r2 = com.truecaller.videocallerid.C4718R.string.vid_report_reason_1
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r9
            r7 = r14
            java.lang.String r6 = r6.getString(r7)
            r4[r5] = r6
            java.lang.String r1 = r1.getString(r2, r3)
            r0.setText(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p961h.C15785b.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
