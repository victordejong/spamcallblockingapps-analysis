package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.view.menu.SubMenuC0395z;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C2913a;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i.class */
public final class C3032i implements AbstractC0386s {

    /* renamed from: a */
    LinearLayout f18457a;

    /* renamed from: b */
    C0371k f18458b;

    /* renamed from: c */
    C3034b f18459c;

    /* renamed from: d */
    LayoutInflater f18460d;

    /* renamed from: e */
    int f18461e;

    /* renamed from: f */
    boolean f18462f;

    /* renamed from: g */
    ColorStateList f18463g;

    /* renamed from: h */
    ColorStateList f18464h;

    /* renamed from: i */
    Drawable f18465i;

    /* renamed from: j */
    int f18466j;

    /* renamed from: k */
    int f18467k;

    /* renamed from: l */
    int f18468l;

    /* renamed from: m */
    final View.OnClickListener f18469m = new View$OnClickListenerC3043j(this);

    /* renamed from: n */
    private NavigationMenuView f18470n;

    /* renamed from: o */
    private AbstractC0386s.AbstractC0387a f18471o;

    /* renamed from: p */
    private int f18472p;

    /* renamed from: q */
    private int f18473q;

    /* renamed from: com.google.android.material.internal.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$a.class */
    private static final class C3033a extends AbstractC3042j {
        public C3033a(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.i$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$b.class */
    public final class C3034b extends RecyclerView.AbstractC1056a<AbstractC3042j> {

        /* renamed from: b */
        private final ArrayList<AbstractC3036d> f18475b = new ArrayList<>();

        /* renamed from: c */
        private C0375m f18476c;

        /* renamed from: d */
        private boolean f18477d;

        C3034b() {
            m976f();
        }

        /* renamed from: d */
        private void m977d(int i, int i2) {
            while (i < i2) {
                ((C3038f) this.f18475b.get(i)).f18480a = true;
                i++;
            }
        }

        /* renamed from: f */
        private void m976f() {
            boolean z;
            if (!this.f18477d) {
                this.f18477d = true;
                this.f18475b.clear();
                this.f18475b.add(new C3035c());
                int size = C3032i.this.f18458b.m9595l().size();
                int i = -1;
                boolean z2 = false;
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    C0375m mVar = C3032i.this.f18458b.m9595l().get(i3);
                    if (mVar.isChecked()) {
                        m985a(mVar);
                    }
                    if (mVar.isCheckable()) {
                        mVar.m9582a(false);
                    }
                    if (mVar.hasSubMenu()) {
                        SubMenu subMenu = mVar.getSubMenu();
                        i = i;
                        z2 = z2;
                        i2 = i2;
                        if (subMenu.hasVisibleItems()) {
                            if (i3 != 0) {
                                this.f18475b.add(new C3037e(C3032i.this.f18468l, 0));
                            }
                            this.f18475b.add(new C3038f(mVar));
                            int size2 = this.f18475b.size();
                            int size3 = subMenu.size();
                            boolean z3 = false;
                            for (int i4 = 0; i4 < size3; i4++) {
                                C0375m mVar2 = (C0375m) subMenu.getItem(i4);
                                z3 = z3;
                                if (mVar2.isVisible()) {
                                    z3 = z3;
                                    if (!z3) {
                                        z3 = z3;
                                        if (mVar2.getIcon() != null) {
                                            z3 = true;
                                        }
                                    }
                                    if (mVar2.isCheckable()) {
                                        mVar2.m9582a(false);
                                    }
                                    if (mVar.isChecked()) {
                                        m985a(mVar);
                                    }
                                    this.f18475b.add(new C3038f(mVar2));
                                }
                            }
                            i = i;
                            z2 = z2;
                            i2 = i2;
                            if (z3) {
                                m977d(size2, this.f18475b.size());
                                i = i;
                                z2 = z2;
                                i2 = i2;
                            }
                        }
                    } else {
                        i = mVar.getGroupId();
                        if (i != i) {
                            int size4 = this.f18475b.size();
                            z = mVar.getIcon() != null;
                            i2 = size4;
                            if (i3 != 0) {
                                i2 = size4 + 1;
                                this.f18475b.add(new C3037e(C3032i.this.f18468l, C3032i.this.f18468l));
                            }
                        } else {
                            z = z2;
                            i2 = i2;
                            if (!z2) {
                                z = z2;
                                i2 = i2;
                                if (mVar.getIcon() != null) {
                                    m977d(i2, this.f18475b.size());
                                    z = true;
                                    i2 = i2;
                                }
                            }
                        }
                        C3038f fVar = new C3038f(mVar);
                        fVar.f18480a = z;
                        this.f18475b.add(fVar);
                        z2 = z;
                    }
                }
                this.f18477d = false;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
        /* renamed from: a */
        public final /* synthetic */ AbstractC3042j mo986a(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return new C3039g(C3032i.this.f18460d, viewGroup, C3032i.this.f18469m);
            }
            if (i == 1) {
                return new C3041i(C3032i.this.f18460d, viewGroup);
            }
            if (i == 2) {
                return new C3040h(C3032i.this.f18460d, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new C3033a(C3032i.this.f18457a);
        }

        /* renamed from: a */
        public final void m988a() {
            m976f();
            m7173e();
        }

        /* renamed from: a */
        public final void m987a(Bundle bundle) {
            C0375m a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            C0375m a2;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.f18477d = true;
                int size = this.f18475b.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    AbstractC3036d dVar = this.f18475b.get(i2);
                    if ((dVar instanceof C3038f) && (a2 = ((C3038f) dVar).m973a()) != null && a2.getItemId() == i) {
                        m985a(a2);
                        break;
                    }
                    i2++;
                }
                this.f18477d = false;
                m976f();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f18475b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC3036d dVar2 = this.f18475b.get(i3);
                    if (!(!(dVar2 instanceof C3038f) || (a = ((C3038f) dVar2).m973a()) == null || (actionView = a.getActionView()) == null || (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a.getItemId())) == null)) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        /* renamed from: a */
        public final void m985a(C0375m mVar) {
            if (this.f18476c != mVar && mVar.isCheckable()) {
                C0375m mVar2 = this.f18476c;
                if (mVar2 != null) {
                    mVar2.setChecked(false);
                }
                this.f18476c = mVar;
                mVar.setChecked(true);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
        /* renamed from: a */
        public final /* synthetic */ void mo984a(AbstractC3042j jVar) {
            AbstractC3042j jVar2 = jVar;
            if (jVar2 instanceof C3039g) {
                ((NavigationMenuItemView) jVar2.f4658a).m1065c();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
        /* renamed from: a */
        public final /* synthetic */ void mo983a(AbstractC3042j jVar, int i) {
            AbstractC3042j jVar2 = jVar;
            int c = mo978c(i);
            if (c == 0) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) jVar2.f4658a;
                navigationMenuItemView.m1071a(C3032i.this.f18464h);
                if (C3032i.this.f18462f) {
                    navigationMenuItemView.m1072a(C3032i.this.f18461e);
                }
                if (C3032i.this.f18463g != null) {
                    navigationMenuItemView.m1067b(C3032i.this.f18463g);
                }
                C0741t.m8351a(navigationMenuItemView, C3032i.this.f18465i != null ? C3032i.this.f18465i.getConstantState().newDrawable() : null);
                C3038f fVar = (C3038f) this.f18475b.get(i);
                navigationMenuItemView.m1068a(fVar.f18480a);
                int i2 = C3032i.this.f18466j;
                navigationMenuItemView.setPadding(i2, 0, i2, 0);
                navigationMenuItemView.m1064d(C3032i.this.f18467k);
                navigationMenuItemView.mo1069a(fVar.m973a());
            } else if (c == 1) {
                ((TextView) jVar2.f4658a).setText(((C3038f) this.f18475b.get(i)).m973a().getTitle());
            } else if (c == 2) {
                C3037e eVar = (C3037e) this.f18475b.get(i);
                jVar2.f4658a.setPadding(0, eVar.m975a(), 0, eVar.m974b());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
        /* renamed from: b */
        public final long mo981b(int i) {
            return i;
        }

        /* renamed from: b */
        public final Bundle m982b() {
            Bundle bundle = new Bundle();
            C0375m mVar = this.f18476c;
            if (mVar != null) {
                bundle.putInt("android:menu:checked", mVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f18475b.size();
            for (int i = 0; i < size; i++) {
                AbstractC3036d dVar = this.f18475b.get(i);
                if (dVar instanceof C3038f) {
                    C0375m a = ((C3038f) dVar).m973a();
                    View actionView = a != null ? a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        /* renamed from: b */
        public final void m980b(boolean z) {
            this.f18477d = z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
        /* renamed from: c */
        public final int mo979c() {
            return this.f18475b.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
        /* renamed from: c */
        public final int mo978c(int i) {
            AbstractC3036d dVar = this.f18475b.get(i);
            if (dVar instanceof C3037e) {
                return 2;
            }
            if (dVar instanceof C3035c) {
                return 3;
            }
            if (dVar instanceof C3038f) {
                return ((C3038f) dVar).m973a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.i$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$c.class */
    public static final class C3035c implements AbstractC3036d {
        C3035c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.i$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$d.class */
    public interface AbstractC3036d {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.i$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$e.class */
    public static final class C3037e implements AbstractC3036d {

        /* renamed from: a */
        private final int f18478a;

        /* renamed from: b */
        private final int f18479b;

        public C3037e(int i, int i2) {
            this.f18478a = i;
            this.f18479b = i2;
        }

        /* renamed from: a */
        public final int m975a() {
            return this.f18478a;
        }

        /* renamed from: b */
        public final int m974b() {
            return this.f18479b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.i$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$f.class */
    public static final class C3038f implements AbstractC3036d {

        /* renamed from: a */
        boolean f18480a;

        /* renamed from: b */
        private final C0375m f18481b;

        C3038f(C0375m mVar) {
            this.f18481b = mVar;
        }

        /* renamed from: a */
        public final C0375m m973a() {
            return this.f18481b;
        }
    }

    /* renamed from: com.google.android.material.internal.i$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$g.class */
    private static final class C3039g extends AbstractC3042j {
        public C3039g(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C2913a.C2921h.f17508d, viewGroup, false));
            this.f4658a.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.internal.i$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$h.class */
    private static final class C3040h extends AbstractC3042j {
        public C3040h(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C2913a.C2921h.f17510f, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.i$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$i.class */
    private static final class C3041i extends AbstractC3042j {
        public C3041i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C2913a.C2921h.f17511g, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.i$j */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/i$j.class */
    private static abstract class AbstractC3042j extends RecyclerView.AbstractC1082t {
        public AbstractC3042j(View view) {
            super(view);
        }
    }

    /* renamed from: a */
    public final View m1009a(int i) {
        View inflate = this.f18460d.inflate(i, (ViewGroup) this.f18457a, false);
        this.f18457a.addView(inflate);
        NavigationMenuView navigationMenuView = this.f18470n;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
        return inflate;
    }

    /* renamed from: a */
    public final AbstractC0388t m1004a(ViewGroup viewGroup) {
        if (this.f18470n == null) {
            this.f18470n = (NavigationMenuView) this.f18460d.inflate(C2913a.C2921h.f17512h, viewGroup, false);
            if (this.f18459c == null) {
                this.f18459c = new C3034b();
            }
            this.f18457a = (LinearLayout) this.f18460d.inflate(C2913a.C2921h.f17509e, (ViewGroup) this.f18470n, false);
            this.f18470n.m7254a(this.f18459c);
        }
        return this.f18470n;
    }

    /* renamed from: a */
    public final void m1010a() {
        this.f18472p = 1;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1008a(Context context, C0371k kVar) {
        this.f18460d = LayoutInflater.from(context);
        this.f18458b = kVar;
        this.f18468l = context.getResources().getDimensionPixelOffset(C2913a.C2917d.f17478m);
    }

    /* renamed from: a */
    public final void m1007a(ColorStateList colorStateList) {
        this.f18464h = colorStateList;
        mo999a(false);
    }

    /* renamed from: a */
    public final void m1006a(Drawable drawable) {
        this.f18465i = drawable;
        mo999a(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1005a(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f18470n.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f18459c.m987a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f18457a.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1003a(C0371k kVar, boolean z) {
        AbstractC0386s.AbstractC0387a aVar = this.f18471o;
        if (aVar != null) {
            aVar.mo9453a(kVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
        this.f18471o = aVar;
    }

    /* renamed from: a */
    public final void m1000a(C0719ag agVar) {
        int b = agVar.m8434b();
        if (this.f18473q != b) {
            this.f18473q = b;
            if (this.f18457a.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.f18470n;
                navigationMenuView.setPadding(0, this.f18473q, 0, navigationMenuView.getPaddingBottom());
            }
        }
        C0741t.m8335b(this.f18457a, agVar);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo999a(boolean z) {
        C3034b bVar = this.f18459c;
        if (bVar != null) {
            bVar.m988a();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final boolean mo1001a(SubMenuC0395z zVar) {
        return false;
    }

    /* renamed from: b */
    public final void m997b(int i) {
        this.f18461e = i;
        this.f18462f = true;
        mo999a(false);
    }

    /* renamed from: b */
    public final void m996b(ColorStateList colorStateList) {
        this.f18463g = colorStateList;
        mo999a(false);
    }

    /* renamed from: b */
    public final void m994b(boolean z) {
        C3034b bVar = this.f18459c;
        if (bVar != null) {
            bVar.m980b(z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo998b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo995b(C0375m mVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final int mo993c() {
        return this.f18472p;
    }

    /* renamed from: c */
    public final void m992c(int i) {
        this.f18466j = i;
        mo999a(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final boolean mo991c(C0375m mVar) {
        return false;
    }

    /* renamed from: d */
    public final void m990d(int i) {
        this.f18467k = i;
        mo999a(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: f */
    public final Parcelable mo989f() {
        Bundle bundle = new Bundle();
        if (this.f18470n != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            this.f18470n.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        C3034b bVar = this.f18459c;
        if (bVar != null) {
            bundle.putBundle("android:menu:adapter", bVar.m982b());
        }
        if (this.f18457a != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f18457a.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }
}
