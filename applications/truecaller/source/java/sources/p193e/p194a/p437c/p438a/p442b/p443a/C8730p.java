package p193e.p194a.p437c.p438a.p442b.p443a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9062q;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"Le/a/c/a/b/a/p;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/g/q;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/q;", "binding", "<init>", "()V", "d", C22021b.f61237c, "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.b.a.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/p.class */
public final class C8730p extends e {

    /* renamed from: a */
    public final ViewBindingProperty f26678a = new C19350a(new C8731a());

    /* renamed from: b */
    public static final /* synthetic */ l[] f26675b = {C22128a.m8621g0(C8730p.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetReportSuccessBinding;", 0)};

    /* renamed from: d */
    public static final C8732b f26677d = new C8732b(null);

    /* renamed from: c */
    public static final String f26676c = C8730p.class.getSimpleName();

    /* renamed from: e.a.c.a.b.a.p$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/p$a.class */
    public static final class C8731a extends m implements s1.z.b.l<C8730p, C9062q> {
        public C8731a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28096d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.descTv;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4078R.C4080id.headerTv;
                TextView textView2 = (TextView) requireView.findViewById(i);
                if (textView2 != null) {
                    i = C4078R.C4080id.reportTypeIV;
                    ImageView imageView = (ImageView) requireView.findViewById(i);
                    if (imageView != null) {
                        i = C4078R.C4080id.titleTv;
                        TextView textView3 = (TextView) requireView.findViewById(i);
                        if (textView3 != null) {
                            return new C9062q((ConstraintLayout) requireView, textView, textView2, imageView, textView3);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.b.a.p$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/p$b.class */
    public static final class C8732b {
        public C8732b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.b.a.p$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/p$c.class */
    public static final class RunnableC8733c implements Runnable {
        public RunnableC8733c() {
            C8730p.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C8730p.this.dismissAllowingStateLoss();
        }
    }

    /* renamed from: PA */
    public static final C8730p m28097PA(AbstractC8734q abstractC8734q) {
        Objects.requireNonNull(f26677d);
        s1.z.c.l.e(abstractC8734q, "type");
        Bundle bundle = new Bundle();
        bundle.putSerializable("confirmation_type", abstractC8734q);
        C8730p c8730p = new C8730p();
        c8730p.setArguments(bundle);
        return c8730p;
    }

    /* renamed from: OA */
    public final C9062q m28098OA() {
        return (C9062q) this.f26678a.m34468b(this, f26675b[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_report_success, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8730p.super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        AbstractC8734q serializable = arguments != null ? arguments.getSerializable("confirmation_type") : null;
        if (!(serializable instanceof AbstractC8734q)) {
            serializable = null;
        }
        AbstractC8734q abstractC8734q = serializable;
        if (abstractC8734q == null) {
            dismiss();
            return;
        }
        TextView textView = m28098OA().f27609c;
        s1.z.c.l.d(textView, "binding.headerTv");
        textView.setText(abstractC8734q.f26680a);
        TextView textView2 = m28098OA().f27611e;
        s1.z.c.l.d(textView2, "binding.titleTv");
        textView2.setText(abstractC8734q.f26681b);
        TextView textView3 = m28098OA().f27608b;
        s1.z.c.l.d(textView3, "binding.descTv");
        textView3.setText(abstractC8734q.f26682c);
        m28098OA().f27610d.setImageResource(abstractC8734q.f26683d);
        C9062q m28098OA = m28098OA();
        s1.z.c.l.d(m28098OA, "binding");
        m28098OA.f27607a.postDelayed(new RunnableC8733c(), 1600L);
    }
}
