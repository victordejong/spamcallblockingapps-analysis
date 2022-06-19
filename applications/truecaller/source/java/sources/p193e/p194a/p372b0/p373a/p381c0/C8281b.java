package p193e.p194a.p372b0.p373a.p381c0;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.truecaller.common.p156ui.C3700R;
import e.m.a.g.x.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b0.a.c0.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b.class */
public final class C8281b {

    /* renamed from: a */
    public final C8284c f25531a;

    /* renamed from: b */
    public final List<C8285d> f25532b;

    /* renamed from: c */
    public ViewPager2 f25533c;

    /* renamed from: d */
    public TabLayout f25534d;

    /* renamed from: e */
    public C8286e f25535e;

    /* renamed from: f */
    public p<? super C8280a, ? super Integer, s> f25536f;

    /* renamed from: g */
    public int f25537g;

    /* renamed from: h */
    public boolean f25538h;

    /* renamed from: e.a.b0.a.c0.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b$a.class */
    public static final class C8282a {

        /* renamed from: a */
        public final a<Fragment> f25539a;

        /* renamed from: b */
        public Fragment f25540b = null;

        public C8282a(a<? extends Fragment> aVar, Fragment fragment) {
            l.e(aVar, "provider");
            this.f25539a = aVar;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8282a)) {
                    return false;
                }
                C8282a c8282a = (C8282a) obj;
                return l.a(this.f25539a, c8282a.f25539a) && l.a(this.f25540b, c8282a.f25540b);
            }
            return true;
        }

        public int hashCode() {
            a<Fragment> aVar = this.f25539a;
            int i = 0;
            int hashCode = aVar != null ? aVar.hashCode() : 0;
            Fragment fragment = this.f25540b;
            if (fragment != null) {
                i = fragment.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FragmentEntry(provider=");
            m8728C.append(this.f25539a);
            m8728C.append(", fragment=");
            m8728C.append(this.f25540b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"e/a/b0/a/c0/b$b", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "<init>", "()V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.b0.a.c0.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b$b.class */
    public static final class C8283b extends Fragment {
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            l.e(layoutInflater, "inflater");
            return viewGroup != null ? new View(viewGroup.getContext()) : null;
        }
    }

    /* renamed from: e.a.b0.a.c0.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b$c.class */
    public final class C8284c extends FragmentStateAdapter {

        /* renamed from: i */
        public final List<C8282a> f25541i = new ArrayList();

        /* renamed from: j */
        public final /* synthetic */ C8281b f25542j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8284c(C8281b c8281b, Fragment fragment) {
            super(fragment.getChildFragmentManager(), fragment.getLifecycle());
            l.e(fragment, "hostFragment");
            this.f25542j = c8281b;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        /* renamed from: g */
        public boolean mo28689g(long j) {
            long j2 = j / 2;
            boolean z = false;
            if (j2 >= this.f25541i.size()) {
                return false;
            }
            if (getItemId((int) j2) == j) {
                z = true;
            }
            return z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f25541i.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public long getItemId(int i) {
            Fragment fragment = this.f25541i.get(i).f25540b;
            C8281b c8281b = this.f25542j;
            return (c8281b.f25537g == i || (fragment != null && !(fragment instanceof C8283b)) || c8281b.f25538h) ? i * 2 : (i * 2) + 1;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        /* renamed from: h */
        public Fragment mo16623h(int i) {
            C8282a c8282a = this.f25541i.get(i);
            C8281b c8281b = this.f25542j;
            C8283b c8283b = (i == c8281b.f25537g || c8281b.f25538h) ? (Fragment) c8282a.f25539a.invoke() : new C8283b();
            c8282a.f25540b = c8283b;
            return c8283b;
        }
    }

    /* renamed from: e.a.b0.a.c0.b$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b$d.class */
    public static final class C8285d {

        /* renamed from: a */
        public final String f25543a;

        /* renamed from: b */
        public final int f25544b;

        /* renamed from: c */
        public final int f25545c;

        /* renamed from: d */
        public final int f25546d;

        /* renamed from: e */
        public final int f25547e;

        /* renamed from: f */
        public final String f25548f;

        /* renamed from: g */
        public final a<Fragment> f25549g;

        /* renamed from: h */
        public final s1.z.b.l<Integer, s> f25550h;

        public C8285d(String str, int i, int i2, int i3, int i4, String str2, a aVar, s1.z.b.l lVar, int i5) {
            i3 = (i5 & 8) != 0 ? C3700R.attr.tcx_textSecondary : i3;
            i4 = (i5 & 16) != 0 ? C3700R.attr.tcx_brandBackgroundBlue : i4;
            str2 = (i5 & 32) != 0 ? str : str2;
            s1.z.b.l<Integer, s> lVar2 = (i5 & 128) != 0 ? C8288c.f25556b : null;
            l.e(str, "title");
            l.e(str2, "tabTag");
            l.e(aVar, "fragmentFactory");
            l.e(lVar2, "onTabSelectedAction");
            this.f25543a = str;
            this.f25544b = i;
            this.f25545c = i2;
            this.f25546d = i3;
            this.f25547e = i4;
            this.f25548f = str2;
            this.f25549g = aVar;
            this.f25550h = lVar2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C8285d)) {
                    return false;
                }
                C8285d c8285d = (C8285d) obj;
                return l.a(this.f25543a, c8285d.f25543a) && this.f25544b == c8285d.f25544b && this.f25545c == c8285d.f25545c && this.f25546d == c8285d.f25546d && this.f25547e == c8285d.f25547e && l.a(this.f25548f, c8285d.f25548f) && l.a(this.f25549g, c8285d.f25549g) && l.a(this.f25550h, c8285d.f25550h);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f25543a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int i2 = this.f25544b;
            int i3 = this.f25545c;
            int i4 = this.f25546d;
            int i5 = this.f25547e;
            String str2 = this.f25548f;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            a<Fragment> aVar = this.f25549g;
            int hashCode3 = aVar != null ? aVar.hashCode() : 0;
            s1.z.b.l<Integer, s> lVar = this.f25550h;
            if (lVar != null) {
                i = lVar.hashCode();
            }
            return (((((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TabLayoutXItem(title=");
            m8728C.append(this.f25543a);
            m8728C.append(", iconNormal=");
            m8728C.append(this.f25544b);
            m8728C.append(", iconSelected=");
            m8728C.append(this.f25545c);
            m8728C.append(", normalColorAttr=");
            m8728C.append(this.f25546d);
            m8728C.append(", selectedColorAttr=");
            m8728C.append(this.f25547e);
            m8728C.append(", tabTag=");
            m8728C.append(this.f25548f);
            m8728C.append(", fragmentFactory=");
            m8728C.append(this.f25549g);
            m8728C.append(", onTabSelectedAction=");
            m8728C.append(this.f25550h);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.b0.a.c0.b$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b$e.class */
    public final class C8286e extends ViewPager2.AbstractC0407e implements ViewPager.AbstractC0396i {

        /* renamed from: a */
        public int f25551a;

        /* renamed from: b */
        public final TabLayout f25552b;

        /* renamed from: c */
        public final /* synthetic */ C8281b f25553c;

        public C8286e(C8281b c8281b, TabLayout tabLayout) {
            l.e(tabLayout, "tabs");
            this.f25553c = c8281b;
            this.f25552b = tabLayout;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e, androidx.viewpager.widget.ViewPager.AbstractC0396i
        /* renamed from: b */
        public void mo1514b(int i) {
            this.f25551a = i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
        /* renamed from: g */
        public void mo1513g(int i) {
            this.f25552b.setSelectedTabIndicatorColor(C19291g.m13612L(this.f25552b.getContext(), this.f25553c.f25532b.get(i).f25547e));
            C8281b c8281b = this.f25553c;
            int i2 = c8281b.f25537g;
            c8281b.f25537g = i;
            if (c8281b.f25531a.f25541i.get(i).f25540b instanceof C8283b) {
                C8281b c8281b2 = this.f25553c;
                c8281b2.f25531a.notifyItemChanged(c8281b2.f25537g);
            }
            TabLayout.C2114g m38389h = this.f25552b.m38389h(i);
            C8280a c8280a = (C8280a) (m38389h != null ? m38389h.f6852e : null);
            if (c8280a != null) {
                p<? super C8280a, ? super Integer, s> pVar = this.f25553c.f25536f;
                if (pVar != null) {
                    s sVar = (s) pVar.k(c8280a, Integer.valueOf(i));
                }
                this.f25553c.f25532b.get(i).f25550h.d(Integer.valueOf(i));
                Fragment fragment = this.f25553c.f25531a.f25541i.get(i).f25540b;
                if (fragment == null) {
                    return;
                }
                fragment.setUserVisibleHint(true);
            }
        }
    }

    /* renamed from: e.a.b0.a.c0.b$f */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c0/b$f.class */
    public static final class C8287f implements e.b {

        /* renamed from: b */
        public final /* synthetic */ ViewPager2 f25555b;

        public C8287f(ViewPager2 viewPager2) {
            C8281b.this = r4;
            this.f25555b = viewPager2;
        }

        /* renamed from: a */
        public final void m28688a(TabLayout.C2114g c2114g, int i) {
            l.e(c2114g, "tab");
            C8285d c8285d = C8281b.this.f25532b.get(i);
            Context context = this.f25555b.getContext();
            l.d(context, "pager.context");
            C8280a c8280a = new C8280a(context, null, 0, 6);
            c8280a.m28697h1(c8285d.f25543a, c8285d.f25544b, c8285d.f25545c, c8285d.f25546d, c8285d.f25547e, c8285d.f25548f);
            c2114g.f6852e = c8280a;
            c2114g.m38371c();
        }
    }

    public C8281b(Fragment fragment, boolean z) {
        l.e(fragment, "hostFragment");
        this.f25538h = z;
        this.f25532b = new ArrayList();
        this.f25531a = new C8284c(this, fragment);
    }

    public /* synthetic */ C8281b(Fragment fragment, boolean z, int i) {
        this(fragment, (i & 2) != 0 ? true : z);
    }

    /* renamed from: a */
    public final C8281b m28694a(C8285d c8285d) {
        l.e(c8285d, "item");
        if (this.f25532b.size() < 4) {
            this.f25532b.add(c8285d);
            C8284c c8284c = this.f25531a;
            a<Fragment> aVar = c8285d.f25549g;
            Objects.requireNonNull(c8284c);
            l.e(aVar, "fragmentBuilder");
            c8284c.f25541i.add(new C8282a(aVar, null));
            c8284c.notifyDataSetChanged();
            return this;
        }
        throw new Exception("Our Custom TabLayout doesn't support more than 4 tabs :)\nif you really want to add more than 3 tabs you will need to do some effort\nto support that and make sure that the animation\nis working as expected check onPageScrolled()");
    }

    /* renamed from: b */
    public final void m28693b(ViewPager2 viewPager2, TabLayout tabLayout) {
        l.e(viewPager2, "pager");
        l.e(tabLayout, "tabs");
        this.f25534d = tabLayout;
        viewPager2.setAdapter(this.f25531a);
        this.f25533c = viewPager2;
        C8286e c8286e = new C8286e(this, tabLayout);
        viewPager2.f1520c.f74596a.add(c8286e);
        this.f25535e = c8286e;
        new e(tabLayout, viewPager2, false, new C8287f(viewPager2)).a();
    }

    /* renamed from: c */
    public final void m28692c() {
        ViewPager2 viewPager2;
        C8286e c8286e = this.f25535e;
        if (c8286e == null || (viewPager2 = this.f25533c) == null) {
            return;
        }
        viewPager2.f1520c.f74596a.remove(c8286e);
    }

    /* renamed from: d */
    public final C8280a m28691d(int i) {
        TabLayout.C2114g m38389h;
        TabLayout tabLayout = this.f25534d;
        KeyEvent.Callback callback = (tabLayout == null || (m38389h = tabLayout.m38389h(i)) == null) ? null : m38389h.f6852e;
        if (!(callback instanceof C8280a)) {
            callback = null;
        }
        return (C8280a) callback;
    }

    /* renamed from: e */
    public final void m28690e(p<? super C8280a, ? super Integer, s> pVar) {
        l.e(pVar, "onTabSelected");
        this.f25536f = pVar;
    }
}
