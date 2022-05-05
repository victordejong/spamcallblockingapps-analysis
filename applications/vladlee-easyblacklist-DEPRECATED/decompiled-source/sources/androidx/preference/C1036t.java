package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.p037g.C0741t;
import androidx.preference.C1001ac;
import androidx.preference.Preference;
import androidx.recyclerview.widget.C1111b;
import androidx.recyclerview.widget.C1127n;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.preference.t */
/* loaded from: classes-dex2jar.jar:androidx/preference/t.class */
public final class C1036t extends RecyclerView.AbstractC1056a<C1000ab> implements Preference.AbstractC0990a {

    /* renamed from: a */
    private PreferenceGroup f4368a;

    /* renamed from: f */
    private Runnable f4373f = new RunnableC1038u(this);

    /* renamed from: e */
    private Handler f4372e = new Handler();

    /* renamed from: b */
    private List<Preference> f4369b = new ArrayList();

    /* renamed from: c */
    private List<Preference> f4370c = new ArrayList();

    /* renamed from: d */
    private List<C1037a> f4371d = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.preference.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/t$a.class */
    public static final class C1037a {

        /* renamed from: a */
        int f4374a;

        /* renamed from: b */
        int f4375b;

        /* renamed from: c */
        String f4376c;

        C1037a(Preference preference) {
            this.f4376c = preference.getClass().getName();
            this.f4374a = preference.m7451s();
            this.f4375b = preference.m7450t();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C1037a)) {
                return false;
            }
            C1037a aVar = (C1037a) obj;
            return this.f4374a == aVar.f4374a && this.f4375b == aVar.f4375b && TextUtils.equals(this.f4376c, aVar.f4376c);
        }

        public final int hashCode() {
            return ((((this.f4374a + 527) * 31) + this.f4375b) * 31) + this.f4376c.hashCode();
        }
    }

    public C1036t(PreferenceGroup preferenceGroup) {
        this.f4368a = preferenceGroup;
        this.f4368a.m7481a((Preference.AbstractC0990a) this);
        PreferenceGroup preferenceGroup2 = this.f4368a;
        m7180a(preferenceGroup2 instanceof PreferenceScreen ? ((PreferenceScreen) preferenceGroup2).m7426f() : true);
        m7372b();
    }

    /* renamed from: a */
    private List<Preference> m7374a(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int c = preferenceGroup.m7432c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            Preference i3 = preferenceGroup.m7428i(i2);
            i = i;
            if (i3.m7447x()) {
                if (!m7371b(preferenceGroup) || i < preferenceGroup.m7437b()) {
                    arrayList.add(i3);
                } else {
                    arrayList2.add(i3);
                }
                if (!(i3 instanceof PreferenceGroup)) {
                    i++;
                } else {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) i3;
                    i = i;
                    if (!preferenceGroup2.mo7427d()) {
                        continue;
                    } else if (!m7371b(preferenceGroup) || !m7371b(preferenceGroup2)) {
                        Iterator<Preference> it = m7374a(preferenceGroup2).iterator();
                        while (true) {
                            i = i;
                            if (it.hasNext()) {
                                Preference next = it.next();
                                if (!m7371b(preferenceGroup) || i < preferenceGroup.m7437b()) {
                                    arrayList.add(next);
                                } else {
                                    arrayList2.add(next);
                                }
                                i++;
                            }
                        }
                    } else {
                        throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                    }
                }
            }
        }
        if (m7371b(preferenceGroup) && i > preferenceGroup.m7437b()) {
            C1016d dVar = new C1016d(preferenceGroup.m7491D(), arrayList2, preferenceGroup.mo7400i_());
            dVar.m7479a((Preference.AbstractC0992c) new C1040w(this, preferenceGroup));
            arrayList.add(dVar);
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m7373a(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.m7430e();
        int c = preferenceGroup.m7432c();
        for (int i = 0; i < c; i++) {
            Preference i2 = preferenceGroup.m7428i(i);
            list.add(i2);
            C1037a aVar = new C1037a(i2);
            if (!this.f4371d.contains(aVar)) {
                this.f4371d.add(aVar);
            }
            if (i2 instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) i2;
                if (preferenceGroup2.mo7427d()) {
                    m7373a(list, preferenceGroup2);
                }
            }
            i2.m7481a((Preference.AbstractC0990a) this);
        }
    }

    /* renamed from: b */
    private static boolean m7371b(PreferenceGroup preferenceGroup) {
        return preferenceGroup.m7437b() != Integer.MAX_VALUE;
    }

    /* renamed from: a */
    public final Preference m7376a(int i) {
        if (i < 0 || i >= mo979c()) {
            return null;
        }
        return this.f4370c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
    /* renamed from: a */
    public final /* synthetic */ C1000ab mo986a(ViewGroup viewGroup, int i) {
        C1037a aVar = this.f4371d.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, C1001ac.C1009h.f4316p);
        Drawable drawable = obtainStyledAttributes.getDrawable(C1001ac.C1009h.f4317q);
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = C0258a.m9951b(viewGroup.getContext(), 17301602);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(aVar.f4374a, viewGroup, false);
        if (inflate.getBackground() == null) {
            C0741t.m8351a(inflate, drawable2);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(16908312);
        if (viewGroup2 != null) {
            if (aVar.f4375b != 0) {
                from.inflate(aVar.f4375b, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new C1000ab(inflate);
    }

    @Override // androidx.preference.Preference.AbstractC0990a
    /* renamed from: a */
    public final void mo7377a() {
        this.f4372e.removeCallbacks(this.f4373f);
        this.f4372e.post(this.f4373f);
    }

    @Override // androidx.preference.Preference.AbstractC0990a
    /* renamed from: a */
    public final void mo7375a(Preference preference) {
        int indexOf = this.f4370c.indexOf(preference);
        if (indexOf != -1) {
            m7182a(indexOf, preference);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo983a(C1000ab abVar, int i) {
        m7376a(i).mo7401a(abVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
    /* renamed from: b */
    public final long mo981b(int i) {
        if (!m7174d()) {
            return -1L;
        }
        return m7376a(i).mo7400i_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m7372b() {
        for (Preference preference : this.f4369b) {
            preference.m7481a((Preference.AbstractC0990a) null);
        }
        this.f4369b = new ArrayList(this.f4369b.size());
        m7373a(this.f4369b, this.f4368a);
        List<Preference> list = this.f4370c;
        List<Preference> a = m7374a(this.f4368a);
        this.f4370c = a;
        C1042y F = this.f4368a.m7489F();
        if (F == null || F.m7350g() == null) {
            m7173e();
        } else {
            C1127n.m6757a(new C1039v(this, list, a, F.m7350g())).m6749a(new C1111b(this));
        }
        for (Preference preference2 : this.f4369b) {
            preference2.m7488I();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
    /* renamed from: c */
    public final int mo979c() {
        return this.f4370c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1056a
    /* renamed from: c */
    public final int mo978c(int i) {
        C1037a aVar = new C1037a(m7376a(i));
        int indexOf = this.f4371d.indexOf(aVar);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.f4371d.size();
        this.f4371d.add(aVar);
        return size;
    }
}
