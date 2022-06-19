package p193e.p194a.p437c.p438a.p521s;

import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.truecaller.common.p156ui.C3700R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import n3.r.a.l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.u.i;
import s1.z.b.p;
/* renamed from: e.a.c.a.s.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/d.class */
public final class C9593d {

    /* renamed from: a */
    public final C9594a f29009a;

    /* renamed from: b */
    public final List<C9597d> f29010b = new ArrayList();

    /* renamed from: c */
    public p<? super C9592c, ? super Integer, s> f29011c;

    /* renamed from: e.a.c.a.s.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/s/d$a.class */
    public final class C9594a extends FragmentStateAdapter {

        /* renamed from: i */
        public final List<Fragment> f29012i = new ArrayList();

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9594a(C9593d c9593d, l lVar) {
            super(lVar.getSupportFragmentManager(), lVar.getLifecycle());
            s1.z.c.l.e(lVar, "activity");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f29012i.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        /* renamed from: h */
        public Fragment mo16623h(int i) {
            List<Fragment> list = this.f29012i;
            int F = i.F(list);
            int i2 = i;
            if (i > F) {
                i2 = F;
            }
            return list.get(i2);
        }
    }

    /* renamed from: e.a.c.a.s.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/s/d$b.class */
    public final class C9595b extends ViewPager2.AbstractC0407e implements ViewPager.AbstractC0396i {

        /* renamed from: a */
        public int f29013a;

        /* renamed from: b */
        public int f29014b;

        /* renamed from: c */
        public final TabLayout f29015c;

        /* renamed from: d */
        public final /* synthetic */ C9593d f29016d;

        public C9595b(C9593d c9593d, TabLayout tabLayout) {
            s1.z.c.l.e(tabLayout, "tabs");
            this.f29016d = c9593d;
            this.f29015c = tabLayout;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e, androidx.viewpager.widget.ViewPager.AbstractC0396i
        /* renamed from: b */
        public void mo1514b(int i) {
            this.f29014b = i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
        /* renamed from: g */
        public void mo1513g(int i) {
            if (i > i.F(this.f29016d.f29010b)) {
                return;
            }
            this.f29015c.setSelectedTabIndicatorColor(C19291g.m13612L(this.f29015c.getContext(), this.f29016d.f29010b.get(i).f29019c));
            this.f29013a = i;
            TabLayout.C2114g m38389h = this.f29015c.m38389h(i);
            C9592c c9592c = (C9592c) (m38389h != null ? m38389h.f6852e : null);
            if (c9592c == null) {
                return;
            }
            p<? super C9592c, ? super Integer, s> pVar = this.f29016d.f29011c;
            if (pVar != null) {
                s sVar = (s) pVar.k(c9592c, Integer.valueOf(i));
            }
            this.f29016d.f29010b.get(i).f29021e.d(Integer.valueOf(i));
            this.f29016d.f29010b.get(i).f29020d.setUserVisibleHint(true);
        }
    }

    /* renamed from: e.a.c.a.s.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/s/d$c.class */
    public interface AbstractC9596c {
        String tag();

        String title();
    }

    /* renamed from: e.a.c.a.s.d$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/s/d$d.class */
    public static final class C9597d {

        /* renamed from: a */
        public final AbstractC9596c f29017a;

        /* renamed from: b */
        public final int f29018b;

        /* renamed from: c */
        public final int f29019c;

        /* renamed from: d */
        public final Fragment f29020d;

        /* renamed from: e */
        public final s1.z.b.l<Integer, s> f29021e;

        public C9597d(AbstractC9596c abstractC9596c, int i, int i2, Fragment fragment, s1.z.b.l lVar, int i3) {
            i = (i3 & 2) != 0 ? C3700R.attr.tcx_textSecondary : i;
            i2 = (i3 & 4) != 0 ? C3700R.attr.tcx_brandBackgroundBlue : i2;
            s1.z.b.l<Integer, s> lVar2 = (i3 & 16) != 0 ? C9598e.f29022b : null;
            s1.z.c.l.e(abstractC9596c, "tabName");
            s1.z.c.l.e(fragment, "fragment");
            s1.z.c.l.e(lVar2, "onTabSelectedAction");
            this.f29017a = abstractC9596c;
            this.f29018b = i;
            this.f29019c = i2;
            this.f29020d = fragment;
            this.f29021e = lVar2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C9597d)) {
                    return false;
                }
                C9597d c9597d = (C9597d) obj;
                return s1.z.c.l.a(this.f29017a, c9597d.f29017a) && this.f29018b == c9597d.f29018b && this.f29019c == c9597d.f29019c && s1.z.c.l.a(this.f29020d, c9597d.f29020d) && s1.z.c.l.a(this.f29021e, c9597d.f29021e);
            }
            return true;
        }

        public int hashCode() {
            AbstractC9596c abstractC9596c = this.f29017a;
            int i = 0;
            int hashCode = abstractC9596c != null ? abstractC9596c.hashCode() : 0;
            int i2 = this.f29018b;
            int i3 = this.f29019c;
            Fragment fragment = this.f29020d;
            int hashCode2 = fragment != null ? fragment.hashCode() : 0;
            s1.z.b.l<Integer, s> lVar = this.f29021e;
            if (lVar != null) {
                i = lVar.hashCode();
            }
            return (((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TitleTabLayoutXItem(tabName=");
            m8728C.append(this.f29017a);
            m8728C.append(", normalColorAttr=");
            m8728C.append(this.f29018b);
            m8728C.append(", selectedColorAttr=");
            m8728C.append(this.f29019c);
            m8728C.append(", fragment=");
            m8728C.append(this.f29020d);
            m8728C.append(", onTabSelectedAction=");
            m8728C.append(this.f29021e);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C9593d(l lVar) {
        s1.z.c.l.e(lVar, "activity");
        this.f29009a = new C9594a(this, lVar);
    }

    /* renamed from: a */
    public final C9593d m27403a(C9597d c9597d) {
        s1.z.c.l.e(c9597d, "item");
        if (this.f29010b.size() < 4) {
            this.f29010b.add(c9597d);
            C9594a c9594a = this.f29009a;
            Fragment fragment = c9597d.f29020d;
            Objects.requireNonNull(c9594a);
            s1.z.c.l.e(fragment, "fragment");
            c9594a.f29012i.add(fragment);
            c9594a.notifyDataSetChanged();
            return this;
        }
        throw new Exception("Our Custom TabLayout doesn't support more than 4 tabs :)\nif you really want to add more than 3 tabs you will need to do some effort\nto support that and make sure that the animation\nis working as expected check onPageScrolled()");
    }
}
