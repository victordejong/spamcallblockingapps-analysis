package p193e.p194a.p294b.p357o.p365f.p369d;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SearchView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p294b.p355m.C8076j1;
import p193e.p194a.p294b.p355m.C8089m0;
import p193e.p194a.p294b.p357o.p360c.p362b.C8144b;
import p193e.p194a.p294b.p357o.p364e.AbstractC8157f;
import p193e.p194a.p294b.p357o.p364e.C8160h;
import p193e.p194a.p294b.p357o.p365f.p367b.C8166a;
import p193e.p194a.p294b.p357o.p365f.p367b.C8169b;
import p193e.p194a.p294b.p370p.C8200a;
import q3.a.x2.u0;
import s1.a.l;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� X2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001YB\u0007¢\u0006\u0004\bW\u0010#J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001d\u001a\u00020\r2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\rH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\rH\u0016¢\u0006\u0004\b$\u0010#J\u001f\u0010(\u001a\u00020\r2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020\u0017H\u0016¢\u0006\u0004\b+\u0010!J\u000f\u0010,\u001a\u00020\rH\u0016¢\u0006\u0004\b,\u0010#J\u0017\u0010.\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u0017H\u0016¢\u0006\u0004\b.\u0010!J\u0017\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u001bH\u0016¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\r2\u0006\u0010/\u001a\u00020\u001bH\u0016¢\u0006\u0004\b2\u00101J\u0017\u00104\u001a\u00020\r2\u0006\u00103\u001a\u00020\u0017H\u0016¢\u0006\u0004\b4\u0010!J\u000f\u00105\u001a\u00020\rH\u0016¢\u0006\u0004\b5\u0010#J\u0017\u00108\u001a\u00020\r2\u0006\u00107\u001a\u000206H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010<\u001a\u00020\r2\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\r2\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b>\u0010=J\u0017\u0010?\u001a\u00020\r2\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b?\u0010=J\u0017\u0010A\u001a\u00020\r2\u0006\u0010@\u001a\u00020\u0017H\u0016¢\u0006\u0004\bA\u0010!R\u0016\u0010D\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\"\u0010L\u001a\u00020E8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u0016\u0010P\u001a\u00020M8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bN\u0010OR\u001d\u0010V\u001a\u00020Q8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U¨\u0006Z"}, d2 = {"Le/a/b/o/f/d/c;", "Landroidx/fragment/app/Fragment;", "Le/a/b/o/e/f;", "Le/a/b/o/f/b/a$a;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "N3", "()Ljava/lang/Long;", "Oo", "", "P1", "()Ljava/lang/String;", "", "Le/a/b/o/c/b/b;", "list", "H5", "(Ljava/util/List;)V", "stateName", "o", "(Ljava/lang/String;)V", "onResume", "()V", "v", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "searchHint", "K", "N1", "countData", "J5", "govServicesContact", "fo", "(Le/a/b/o/c/b/b;)V", "Sr", "phoneUri", "z5", "onDestroyView", "", "listSize", "F", "(I)V", "", RemoteMessageConst.Notification.VISIBILITY, "B", "(Z)V", "H", "O4", "text", "y", "i", "Ljava/lang/String;", "searchQuery", "Le/a/b/o/f/b/a;", "g", "Le/a/b/o/f/b/a;", "getGovServicesContactListAdapter", "()Le/a/b/o/f/b/a;", "setGovServicesContactListAdapter", "(Le/a/b/o/f/b/a;)V", "govServicesContactListAdapter", "Landroidx/appcompat/widget/SearchView;", "h", "Landroidx/appcompat/widget/SearchView;", "mSearchView", "Le/a/b/m/m0;", "j", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/b/m/m0;", "binding", "<init>", "l", C22021b.f61237c, "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.o.f.d.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/c.class */
public final class C8192c extends AbstractC8199f implements AbstractC8157f, C8166a.AbstractC8167a {

    /* renamed from: k */
    public static final /* synthetic */ l[] f25326k = {C22128a.m8621g0(C8192c.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentGoveServicesContactListBinding;", 0)};

    /* renamed from: l */
    public static final C8194b f25327l = new C8194b(null);
    @Inject

    /* renamed from: e */
    public C8169b f25328e;
    @Inject

    /* renamed from: f */
    public C8160h f25329f;

    /* renamed from: g */
    public C8166a f25330g;

    /* renamed from: h */
    public SearchView f25331h;

    /* renamed from: i */
    public String f25332i = "";

    /* renamed from: j */
    public final ViewBindingProperty f25333j = new C19350a(new C8193a());

    /* renamed from: e.a.b.o.f.d.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/c$a.class */
    public static final class C8193a extends m implements s1.z.b.l<C8192c, C8089m0> {
        public C8193a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28789d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            return C8089m0.m28910a(fragment.requireView());
        }
    }

    /* renamed from: e.a.b.o.f.d.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/c$b.class */
    public static final class C8194b {
        public C8194b(f fVar) {
        }
    }

    @e(c = "com.truecaller.bizmon.governmentServices.ui.fragments.GovServicesContactListFragment$setUpSearchView$2", f = "GovServicesContactListFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.o.f.d.c$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/c$c.class */
    public static final class C8195c extends i implements p<String, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f25334e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8195c(d dVar) {
            super(2, dVar);
            C8192c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28788i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C8195c c8195c = new C8195c(dVar);
            c8195c.f25334e = obj;
            return c8195c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0037, code lost:
            if (r4 != null) goto L7;
         */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m28787k(java.lang.Object r4, java.lang.Object r5) {
            /*
                r3 = this;
                s1.s r0 = s1.s.a
                r6 = r0
                r0 = r5
                s1.w.d r0 = (s1.w.d) r0
                r7 = r0
                r0 = r7
                java.lang.String r1 = "completion"
                s1.z.c.l.e(r0, r1)
                r0 = r3
                e.a.b.o.f.d.c r0 = p193e.p194a.p294b.p357o.p365f.p369d.C8192c.this
                r5 = r0
                r0 = r7
                s1.w.f r0 = r0.getContext()
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                java.lang.String r0 = (java.lang.String) r0
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L3d
                r0 = r7
                java.lang.CharSequence r0 = s1.f0.v.g0(r0)
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L3d
                goto L40
            L3d:
                java.lang.String r0 = ""
                r4 = r0
            L40:
                r0 = r5
                r1 = r4
                r0.f25332i = r1
                r0 = r5
                e.a.b.o.e.h r0 = r0.f25329f
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L82
                r0 = r4
                PV r0 = r0.f57683a
                e.a.b.o.e.f r0 = (p193e.p194a.p294b.p357o.p364e.AbstractC8157f) r0
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L80
                r0 = r7
                if (r0 == 0) goto L80
                r0 = r4
                r1 = r7
                r0.mo28791y(r1)
                r0 = r7
                int r0 = r0.length()
                if (r0 != 0) goto L75
                r0 = 1
                r8 = r0
                goto L78
            L75:
                r0 = 0
                r8 = r0
            L78:
                r0 = r4
                r1 = r8
                r0.mo28799O4(r1)
            L80:
                r0 = r6
                return r0
            L82:
                java.lang.String r0 = "presenter"
                s1.z.c.l.l(r0)
                r0 = 0
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p357o.p365f.p369d.C8192c.C8195c.m28787k(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001e, code lost:
            if (r4 != null) goto L7;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m28786s(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r3
                java.lang.Object r0 = r0.f25334e
                java.lang.String r0 = (java.lang.String) r0
                r5 = r0
                r0 = r3
                e.a.b.o.f.d.c r0 = p193e.p194a.p294b.p357o.p365f.p369d.C8192c.this
                r6 = r0
                r0 = r5
                if (r0 == 0) goto L24
                r0 = r5
                java.lang.CharSequence r0 = s1.f0.v.g0(r0)
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L24
                goto L27
            L24:
                java.lang.String r0 = ""
                r4 = r0
            L27:
                r0 = r6
                r1 = r4
                r0.f25332i = r1
                r0 = r3
                e.a.b.o.f.d.c r0 = p193e.p194a.p294b.p357o.p365f.p369d.C8192c.this
                e.a.b.o.e.h r0 = r0.f25329f
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L6b
                r0 = r4
                PV r0 = r0.f57683a
                e.a.b.o.e.f r0 = (p193e.p194a.p294b.p357o.p364e.AbstractC8157f) r0
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L67
                r0 = r5
                if (r0 == 0) goto L67
                r0 = r4
                r1 = r5
                r0.mo28791y(r1)
                r0 = r5
                int r0 = r0.length()
                if (r0 != 0) goto L5c
                r0 = 1
                r7 = r0
                goto L5f
            L5c:
                r0 = 0
                r7 = r0
            L5f:
                r0 = r4
                r1 = r7
                r0.mo28799O4(r1)
            L67:
                s1.s r0 = s1.s.a
                return r0
            L6b:
                java.lang.String r0 = "presenter"
                s1.z.c.l.l(r0)
                r0 = 0
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p357o.p365f.p369d.C8192c.C8195c.m28786s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.b.o.f.d.c$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/c$d.class */
    public static final class View$OnClickListenerC8196d implements View.OnClickListener {
        public View$OnClickListenerC8196d() {
            C8192c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C8160h c8160h = C8192c.this.f25329f;
            if (c8160h == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC8157f abstractC8157f = (AbstractC8157f) c8160h.f57683a;
            if (abstractC8157f == null) {
                return;
            }
            abstractC8157f.mo28792v();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: B */
    public void mo28807B(boolean z) {
        C8076j1 c8076j1 = m28796QA().f25013f;
        s1.z.c.l.d(c8076j1, "binding.viewEmptySearch");
        LinearLayout linearLayout = c8076j1.f24956a;
        s1.z.c.l.d(linearLayout, "binding.viewEmptySearch.root");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p367b.C8166a.AbstractC8167a
    /* renamed from: F */
    public void mo28806F(int i) {
        C8160h c8160h = this.f25329f;
        if (c8160h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Integer valueOf = Integer.valueOf(i);
        AbstractC8157f abstractC8157f = (AbstractC8157f) c8160h.f57683a;
        if (abstractC8157f == null) {
            return;
        }
        if (valueOf != null && valueOf.intValue() == 0) {
            abstractC8157f.mo28807B(true);
            abstractC8157f.mo28805H(false);
            return;
        }
        abstractC8157f.mo28807B(false);
        abstractC8157f.mo28805H(true);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: H */
    public void mo28805H(boolean z) {
        RecyclerView recyclerView = m28796QA().f25008a;
        s1.z.c.l.d(recyclerView, "binding.contactList");
        C19286f.m13683U(recyclerView, z);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: H5 */
    public void mo28804H5(List<C8144b> list) {
        s1.z.c.l.e(list, "list");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "it");
            C8169b c8169b = this.f25328e;
            if (c8169b == null) {
                s1.z.c.l.l("govServicesContactListItemPresenter");
                throw null;
            }
            this.f25330g = new C8166a(context, list, c8169b, this);
            RecyclerView recyclerView = m28796QA().f25008a;
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.setHasFixedSize(true);
            C8166a c8166a = this.f25330g;
            if (c8166a != null) {
                recyclerView.setAdapter(c8166a);
            } else {
                s1.z.c.l.l("govServicesContactListAdapter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: J5 */
    public void mo28803J5(String str) {
        s1.z.c.l.e(str, "countData");
        AppCompatTextView appCompatTextView = m28796QA().f25010c;
        s1.z.c.l.d(appCompatTextView, "binding.textContactsCount");
        appCompatTextView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: K */
    public void mo28802K(String str) {
        s1.z.c.l.e(str, "searchHint");
        SearchView searchView = this.f25331h;
        if (searchView == null) {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
        searchView.setMaxWidth(Integer.MAX_VALUE);
        searchView.findViewById(C0032R.C0034id.search_plate).setBackgroundColor(0);
        EditText editText = (EditText) searchView.findViewById(C0032R.C0034id.search_src_text);
        editText.setHintTextColor(C19291g.m13612L(requireActivity(), C3478R.attr.tcx_textTertiary));
        s1.z.c.l.d(editText, "editText");
        editText.setHint(str);
        SearchView searchView2 = this.f25331h;
        if (searchView2 == null) {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
        s1.z.c.l.e(searchView2, "$this$onQueryChangeListenerFlow");
        s1.a.a.a.v0.f.d.x2(new u0(s1.a.a.a.v0.f.d.z0(s1.a.a.a.v0.f.d.P(new C8200a(searchView2, null)), 500L), new C8195c(null)), C27020r.m994b(this));
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: N1 */
    public void mo28801N1() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: N3 */
    public Long mo28800N3() {
        Bundle arguments = getArguments();
        return arguments != null ? Long.valueOf(arguments.getLong("extra_district_id")) : null;
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: O4 */
    public void mo28799O4(boolean z) {
        AppCompatTextView appCompatTextView = m28796QA().f25010c;
        s1.z.c.l.d(appCompatTextView, "binding.textContactsCount");
        C19286f.m13683U(appCompatTextView, z);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: Oo */
    public Long mo28798Oo() {
        Bundle arguments = getArguments();
        return arguments != null ? Long.valueOf(arguments.getLong("extra_state_id")) : null;
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: P1 */
    public String mo28797P1() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("extra_district_name") : null;
    }

    /* renamed from: QA */
    public final C8089m0 m28796QA() {
        return (C8089m0) this.f25333j.m34468b(this, f25326k[0]);
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p367b.C8166a.AbstractC8167a
    /* renamed from: Sr */
    public void mo28795Sr(C8144b c8144b) {
        s1.z.c.l.e(c8144b, "govServicesContact");
        C8160h c8160h = this.f25329f;
        if (c8160h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c8160h);
        s1.z.c.l.e(c8144b, "govServicesContact");
        String str = c8160h.f25273f;
        if (str == null) {
            s1.z.c.l.l("stateName");
            throw null;
        }
        HashMap m8667T = C22128a.m8667T("State", str);
        m8667T.put("Type", c8144b.f25228d + "," + c8144b.f25229e);
        C22128a.m8711G0("GOVT_SERVICE_CALL_CLICKED", null, m8667T, null, "eventBuilder.build()", c8160h.f25278k);
        AbstractC8157f abstractC8157f = (AbstractC8157f) c8160h.f57683a;
        if (abstractC8157f == null) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("tel:");
        m8728C.append(c8144b.f25227c);
        abstractC8157f.mo28790z5(m8728C.toString());
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p367b.C8166a.AbstractC8167a
    /* renamed from: fo */
    public void mo28794fo(C8144b c8144b) {
        s1.z.c.l.e(c8144b, "govServicesContact");
        C8160h c8160h = this.f25329f;
        if (c8160h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Objects.requireNonNull(c8160h);
        s1.z.c.l.e(c8144b, "govServicesContact");
        String str = c8160h.f25273f;
        if (str == null) {
            s1.z.c.l.l("stateName");
            throw null;
        }
        HashMap m8667T = C22128a.m8667T("State", str);
        m8667T.put("Type", c8144b.f25228d + "," + c8144b.f25229e);
        AbstractC19462a abstractC19462a = c8160h.f25278k;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("GOVT_SERVICE_CONTACT_CLICKED", null, m8667T, null);
        s1.z.c.l.d(c19505a, "eventBuilder.build()");
        abstractC19462a.mo13271e(c19505a);
        c8160h.f25280m.mo28345i(C18334g0.m15253O(c8144b), '+' + c8144b.f25227c);
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: o */
    public void mo28793o(String str) {
        s1.z.c.l.e(str, "stateName");
        h activity = getActivity();
        if (activity != null) {
            activity.setSupportActionBar(m28796QA().f25012e);
            AbstractC25393a supportActionBar = activity.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.mo3542y(str);
                supportActionBar.mo3553n(true);
                supportActionBar.mo3552o(true);
            }
        }
        m28796QA().f25012e.setNavigationOnClickListener(new View$OnClickListenerC8196d());
    }

    public void onCreate(Bundle bundle) {
        C8192c.super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuInflater menuInflater2;
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C8160h c8160h = this.f25329f;
        if (c8160h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        if (!c8160h.f25271d.isEmpty()) {
            n3.r.a.l activity = getActivity();
            if (activity != null && (menuInflater2 = activity.getMenuInflater()) != null) {
                menuInflater2.inflate(C3478R.C3482menu.menu_search, menu);
            }
            MenuItem findItem = menu.findItem(C3478R.C3480id.actionSearch);
            s1.z.c.l.d(findItem, "mSearch");
            findItem.setVisible(true);
            View actionView = findItem.getActionView();
            Objects.requireNonNull(actionView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
            this.f25331h = (SearchView) actionView;
            C8160h c8160h2 = this.f25329f;
            if (c8160h2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC8157f abstractC8157f = (AbstractC8157f) c8160h2.f57683a;
            if (abstractC8157f != null) {
                String mo13768b = c8160h2.f25274g.mo13768b(C3478R.string.biz_govt_search, new Object[0]);
                s1.z.c.l.d(mo13768b, "resourceProvider.getStri…R.string.biz_govt_search)");
                abstractC8157f.mo28802K(mo13768b);
            }
            SearchView searchView = this.f25331h;
            if (searchView == null) {
                s1.z.c.l.l("mSearchView");
                throw null;
            }
            searchView.m43120B(this.f25332i, false);
            SearchView searchView2 = this.f25331h;
            if (searchView2 == null) {
                s1.z.c.l.l("mSearchView");
                throw null;
            }
            searchView2.setIconified(r.p(this.f25332i));
        }
        C8192c.super.onCreateOptionsMenu(menu, menuInflater);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.fragment_gove_services_contact_list, viewGroup, false);
    }

    public void onDestroyView() {
        C8192c.super.onDestroyView();
        C8160h c8160h = this.f25329f;
        if (c8160h != null) {
            c8160h.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C8192c.super.onResume();
        C8160h c8160h = this.f25329f;
        if (c8160h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC8157f abstractC8157f = (AbstractC8157f) c8160h.f57683a;
        if (abstractC8157f == null) {
            return;
        }
        abstractC8157f.mo28793o(c8160h.f25272e);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8192c.super.onViewCreated(view, bundle);
        C8160h c8160h = this.f25329f;
        if (c8160h != null) {
            c8160h.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: v */
    public void mo28792v() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: y */
    public void mo28791y(String str) {
        s1.z.c.l.e(str, "text");
        C8166a c8166a = this.f25330g;
        if (c8166a != null) {
            new C8166a.C8168b().filter(str);
        } else {
            s1.z.c.l.l("govServicesContactListAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p357o.p364e.AbstractC8157f
    /* renamed from: z5 */
    public void mo28790z5(String str) {
        s1.z.c.l.e(str, "phoneUri");
        Intent intent = new Intent("android.intent.action.CALL");
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }
}
