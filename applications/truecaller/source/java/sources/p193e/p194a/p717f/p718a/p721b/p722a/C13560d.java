package p193e.p194a.p717f.p718a.p721b.p722a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.MraidCloseCommand;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.incallui.C4013R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p732x.C13748g;
import p193e.p194a.p717f.p733y.C13768f;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� 72\u00020\u00012\u00020\u00022\u00020\u0003:\u00018B\u0007¢\u0006\u0004\b6\u0010\u001eJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0017\u001a\u00020\u00112\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001f\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001d\u00105\u001a\u0002008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104¨\u00069"}, d2 = {"Le/a/f/a/b/a/d;", "Le/m/a/g/e/e;", "Le/a/f/a/b/a/g;", "Le/a/f/a/b/a/b;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Le/a/f/y/f;", "conferenceChildren", "un", "(Ljava/util/List;)V", "callPosition", "hj", "(I)V", "t9", MraidCloseCommand.NAME, "()V", "onDestroyView", "Le/a/f/a/b/a/a;", "f", "Le/a/f/a/b/a/a;", "getAdapter", "()Le/a/f/a/b/a/a;", "setAdapter", "(Le/a/f/a/b/a/a;)V", "adapter", "Le/a/f/a/b/a/f;", "e", "Le/a/f/a/b/a/f;", "getPresenter", "()Le/a/f/a/b/a/f;", "setPresenter", "(Le/a/f/a/b/a/f;)V", "presenter", "Le/a/f/x/g;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/f/x/g;", "binding", "<init>", "i", C22021b.f61237c, "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.b.a.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/d.class */
public final class C13560d extends AbstractC13559c implements AbstractC13565g, AbstractC13558b {

    /* renamed from: h */
    public static final /* synthetic */ l[] f39321h = {C22128a.m8621g0(C13560d.class, "binding", "getBinding()Lcom/truecaller/incallui/databinding/FragmentManageConferenceBinding;", 0)};

    /* renamed from: i */
    public static final C13562b f39322i = new C13562b(null);
    @Inject

    /* renamed from: e */
    public AbstractC13564f f39323e;
    @Inject

    /* renamed from: f */
    public C13554a f39324f;

    /* renamed from: g */
    public final ViewBindingProperty f39325g = new C19350a(new C13561a());

    /* renamed from: e.a.f.a.b.a.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/d$a.class */
    public static final class C13561a extends m implements s1.z.b.l<C13560d, C13748g> {
        public C13561a() {
            super(1);
        }

        /* renamed from: d */
        public Object m21624d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4013R.C4015id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
            if (recyclerView != null) {
                i = C4013R.C4015id.text_title;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    return new C13748g((LinearLayout) requireView, recyclerView, textView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.f.a.b.a.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/d$b.class */
    public static final class C13562b {
        public C13562b(f fVar) {
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p722a.AbstractC13565g
    public void close() {
        dismissAllowingStateLoss();
    }

    public int getTheme() {
        return C4013R.style.Theme_Design_Light_BottomSheetDialog_IncallUI;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p722a.AbstractC13558b
    /* renamed from: hj */
    public void mo21626hj(int i) {
        AbstractC13564f abstractC13564f = this.f39323e;
        if (abstractC13564f != null) {
            ((C13567i) abstractC13564f).f39328d.mo21185v(i);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4013R.layout.fragment_manage_conference, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…erence, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C13554a c13554a = this.f39324f;
        if (c13554a == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        c13554a.f39309a = null;
        AbstractC13564f abstractC13564f = this.f39323e;
        if (abstractC13564f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC13564f).mo9806c();
        C13560d.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C13560d.super.onViewCreated(view, bundle);
        C13554a c13554a = this.f39324f;
        if (c13554a == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        s1.z.c.l.e(this, "listener");
        c13554a.f39309a = this;
        RecyclerView recyclerView = ((C13748g) this.f39325g.m34468b(this, f39321h[0])).f39869a;
        recyclerView.setHasFixedSize(true);
        s1.z.c.l.d(recyclerView, "this");
        C13554a c13554a2 = this.f39324f;
        if (c13554a2 == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c13554a2);
        AbstractC13564f abstractC13564f = this.f39323e;
        if (abstractC13564f != null) {
            ((C13567i) abstractC13564f).mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p722a.AbstractC13558b
    /* renamed from: t9 */
    public void mo21625t9(int i) {
        AbstractC13564f abstractC13564f = this.f39323e;
        if (abstractC13564f != null) {
            ((C13567i) abstractC13564f).f39328d.mo21198i(i);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p722a.AbstractC13565g
    /* renamed from: un */
    public void mo21623un(List<C13768f> list) {
        s1.z.c.l.e(list, "conferenceChildren");
        C13554a c13554a = this.f39324f;
        if (c13554a == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        s1.z.c.l.e(list, "conferenceChildren");
        c13554a.f39310b.clear();
        c13554a.f39310b.addAll(list);
        c13554a.notifyDataSetChanged();
    }
}
