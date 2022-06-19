package p193e.p194a.p437c.p438a.p494m.p497c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9070s1;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10026m;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p552i.p554b.AbstractC10276a;
import p193e.p194a.p437c.p596t.AbstractC10693a;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.w.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bL\u0010/J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R(\u00100\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b(\u0010)\u0012\u0004\b.\u0010/\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001d\u00106\u001a\u0002018B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R(\u0010;\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b7\u0010)\u0012\u0004\b:\u0010/\u001a\u0004\b8\u0010+\"\u0004\b9\u0010-R\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010K\u001a\u00020D8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010J¨\u0006M"}, d2 = {"Le/a/c/a/m/c/o;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "json", "PA", "(Ljava/lang/String;)Ljava/lang/String;", "Le/a/c/b/j;", "e", "Le/a/c/b/j;", "getStatusProvider", "()Le/a/c/b/j;", "setStatusProvider", "(Le/a/c/b/j;)V", "statusProvider", "Lq3/a/i0;", "g", "Lq3/a/i0;", "coroutineScope", "Le/a/c/c0/m;", "a", "Le/a/c/c0/m;", "getFileIoUtils", "()Le/a/c/c0/m;", "setFileIoUtils", "(Le/a/c/c0/m;)V", "fileIoUtils", "Ls1/w/f;", C22021b.f61237c, "Ls1/w/f;", "getContextIO", "()Ls1/w/f;", "setContextIO", "(Ls1/w/f;)V", "getContextIO$annotations", "()V", "contextIO", "Le/a/c/a/g/s1;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/s1;", "binding", AbstractC2405c.f7629a, "getContextUI", "setContextUI", "getContextUI$annotations", "contextUI", "Le/a/c/i/b/a;", "d", "Le/a/c/i/b/a;", "getFirebaseSeedStore", "()Le/a/c/i/b/a;", "setFirebaseSeedStore", "(Le/a/c/i/b/a;)V", "firebaseSeedStore", "Le/a/c/t/a;", "f", "Le/a/c/t/a;", "getQaManager", "()Le/a/c/t/a;", "setQaManager", "(Le/a/c/t/a;)V", "qaManager", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/o.class */
public final class C9336o extends Fragment {

    /* renamed from: i */
    public static final /* synthetic */ l[] f28370i = {C22128a.m8621g0(C9336o.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/QaDialogMalanaSeedDataViewerBinding;", 0)};
    @Inject

    /* renamed from: a */
    public AbstractC10026m f28371a;
    @Inject

    /* renamed from: b */
    public f f28372b;
    @Inject

    /* renamed from: c */
    public f f28373c;
    @Inject

    /* renamed from: d */
    public AbstractC10276a f28374d;
    @Inject

    /* renamed from: e */
    public AbstractC9691j f28375e;
    @Inject

    /* renamed from: f */
    public AbstractC10693a f28376f;

    /* renamed from: g */
    public i0 f28377g;

    /* renamed from: h */
    public final ViewBindingProperty f28378h = new C19350a(new C9337a());

    /* renamed from: e.a.c.a.m.c.o$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/o$a.class */
    public static final class C9337a extends m implements s1.z.b.l<C9336o, C9070s1> {
        public C9337a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27671d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.firebaseSeedData;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4078R.C4080id.localSeedData;
                TextView textView2 = (TextView) requireView.findViewById(i);
                if (textView2 != null) {
                    i = C4078R.C4080id.malanaSeedType;
                    TextView textView3 = (TextView) requireView.findViewById(i);
                    if (textView3 != null) {
                        i = C4078R.C4080id.updatesSeedData;
                        TextView textView4 = (TextView) requireView.findViewById(i);
                        if (textView4 != null) {
                            return new C9070s1(requireView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    public C9336o() {
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        C9248b c9248b = (C9248b) abstractC9246a;
        AbstractC10026m mo12545T7 = c9248b.f28140d.mo12545T7();
        Objects.requireNonNull(mo12545T7, "Cannot return null from a non-@Nullable component method");
        this.f28371a = mo12545T7;
        f mo12793B1 = c9248b.f28142f.mo12793B1();
        Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
        this.f28372b = mo12793B1;
        f mo12378g = c9248b.f28142f.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        this.f28373c = mo12378g;
        AbstractC10276a mo12385f7 = c9248b.f28140d.mo12385f7();
        Objects.requireNonNull(mo12385f7, "Cannot return null from a non-@Nullable component method");
        this.f28374d = mo12385f7;
        AbstractC9691j mo12160w0 = c9248b.f28140d.mo12160w0();
        Objects.requireNonNull(mo12160w0, "Cannot return null from a non-@Nullable component method");
        this.f28375e = mo12160w0;
        AbstractC10693a mo12646M = c9248b.f28140d.mo12646M();
        Objects.requireNonNull(mo12646M, "Cannot return null from a non-@Nullable component method");
        this.f28376f = mo12646M;
        f fVar = this.f28372b;
        if (fVar != null) {
            this.f28377g = d.h(fVar);
        } else {
            s1.z.c.l.l("contextIO");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C9070s1 m27673OA() {
        return (C9070s1) this.f28378h.m34468b(this, f28370i[0]);
    }

    /* renamed from: PA */
    public final String m27672PA(String str) {
        try {
            str = new JSONObject(String.valueOf(str)).toString(4);
        } catch (JSONException e) {
            C10263b c10263b = C10263b.f30414d;
            c10263b.m26508b(e, C9336o.class.getSimpleName() + " Not able to parse " + str + ' ');
        }
        return str;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4078R.layout.qa_dialog_malana_seed_data_viewer, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9336o.super.onViewCreated(view, bundle);
        TextView textView = m27673OA().f27676c;
        s1.z.c.l.d(textView, "binding.malanaSeedType");
        TextView textView2 = m27673OA().f27676c;
        s1.z.c.l.d(textView2, "binding.malanaSeedType");
        StringBuilder m8728C = C22128a.m8728C(textView2.getText().toString());
        AbstractC9691j abstractC9691j = this.f28375e;
        if (abstractC9691j == null) {
            s1.z.c.l.l("statusProvider");
            throw null;
        }
        m8728C.append(String.valueOf(abstractC9691j.mo27277R()));
        textView.setText(m8728C.toString());
        AbstractC10276a abstractC10276a = this.f28374d;
        if (abstractC10276a == null) {
            s1.z.c.l.l("firebaseSeedStore");
            throw null;
        }
        String mo26496d = abstractC10276a.mo26496d();
        TextView textView3 = m27673OA().f27674a;
        s1.z.c.l.d(textView3, "binding.firebaseSeedData");
        textView3.setText(m27672PA(mo26496d));
        TextView textView4 = m27673OA().f27674a;
        s1.z.c.l.d(textView4, "binding.firebaseSeedData");
        textView4.setOnLongClickListener(new View$OnLongClickListenerC9340q(this, textView4));
        textView4.setOnClickListener(View$OnClickListenerC9341r.f28385a);
        d.w2(this.f28377g, (f) null, (j0) null, new C9338p(this, null), 3, (Object) null);
        d.w2(this.f28377g, (f) null, (j0) null, new C9342s(this, null), 3, (Object) null);
    }
}
