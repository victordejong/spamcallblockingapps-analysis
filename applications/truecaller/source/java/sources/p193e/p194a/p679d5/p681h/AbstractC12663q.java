package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import e.m.e.f0.a;
import e.m.e.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p679d5.AbstractC12607b;
import s1.u.i;
import s1.w.d;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.d5.h.q */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/q.class */
public abstract class AbstractC12663q implements AbstractC12607b {

    /* renamed from: a */
    public final boolean f36913a = true;

    /* renamed from: b */
    public final int f36914b = -1;

    /* renamed from: c */
    public final k f36915c = new k();

    /* renamed from: d */
    public List<C12642c> f36916d;

    /* renamed from: e */
    public final AbstractC20597i f36917e;

    /* renamed from: f */
    public final String f36918f;

    /* renamed from: g */
    public final C8601l0 f36919g;

    /* renamed from: h */
    public final AbstractC21881d f36920h;

    /* renamed from: i */
    public final AbstractC18951b0 f36921i;

    /* renamed from: e.a.d5.h.q$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/q$a.class */
    public static final class C12664a extends a<List<? extends Map<String, ? extends String>>> {
    }

    public AbstractC12663q(AbstractC20597i abstractC20597i, String str, C8601l0 c8601l0, AbstractC21881d abstractC21881d, AbstractC18951b0 abstractC18951b0) {
        l.e(abstractC20597i, "feature");
        l.e(str, "timeStampKey");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC18951b0, "dateHelper");
        this.f36917e = abstractC20597i;
        this.f36918f = str;
        this.f36919g = c8601l0;
        this.f36920h = abstractC21881d;
        this.f36921i = abstractC18951b0;
        List<C12642c> emptyList = Collections.emptyList();
        l.d(emptyList, "Collections.emptyList()");
        this.f36916d = emptyList;
    }

    /* renamed from: m */
    public static /* synthetic */ C12642c m22779m(AbstractC12663q abstractC12663q, long j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return abstractC12663q.m22780l(j, z);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        C17422k.m16063o(activity);
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36920h.putLong(this.f36918f, this.f36919g.m28258c());
        this.f36920h.putLong("promo_popup_last_shown_timestamp", this.f36919g.m28258c());
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        Boolean bool;
        boolean z;
        boolean z2;
        long j = this.f36920h.getLong(this.f36918f, 0L);
        b D = new b(this.f36920h.getLong("promo_popup_last_shown_timestamp", 0L)).D(2);
        l.d(D, "DateTime(lastPromoShownTime).plusDays(2)");
        boolean g = D.g();
        StringBuilder m8728C = C22128a.m8728C("shouldShow:: ");
        m8728C.append(mo22768b());
        m8728C.append(" in cooloff : ");
        m8728C.append(g);
        m8728C.append(" isEligible: ");
        m8728C.append(mo22771u());
        m8728C.append(" period: ");
        m8728C.append(m22781k(j));
        m8728C.toString();
        if (g) {
            bool = Boolean.FALSE;
        } else {
            if (mo22771u() && (!m22777o().isEmpty())) {
                if (!mo22774r()) {
                    z2 = m22782j(j);
                } else {
                    int mo22778n = mo22778n();
                    if (mo22778n == -1) {
                        z2 = m22782j(j);
                    } else if (mo22778n == 0) {
                        z2 = m22783i(j);
                    } else if (mo22775q() > mo22778n()) {
                        z2 = m22783i(j);
                    } else {
                        boolean m22782j = m22782j(j);
                        z2 = m22782j;
                        if (m22782j) {
                            mo22772t();
                            z2 = m22782j;
                        }
                    }
                }
                if (z2) {
                    z = true;
                    bool = Boolean.valueOf(z);
                }
            }
            z = false;
            bool = Boolean.valueOf(z);
        }
        return bool;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return false;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }

    /* renamed from: i */
    public final boolean m22783i(long j) {
        return (this.f36921i.mo14277r(this.f36919g.m28258c()) == this.f36921i.mo14277r(j) && this.f36921i.mo14282m(this.f36919g.m28258c()) == this.f36921i.mo14282m(j)) ? false : true;
    }

    /* renamed from: j */
    public final boolean m22782j(long j) {
        return j == 0 ? true : m22781k(j);
    }

    /* renamed from: k */
    public final boolean m22781k(long j) {
        boolean z;
        C12642c m22779m = m22779m(this, this.f36919g.m28258c(), false, 2, null);
        C12642c m22780l = m22780l(j, true);
        C12642c c12642c = C12665r.f36922a;
        if (l.a(m22779m, c12642c) || l.a(m22780l, c12642c)) {
            return false;
        }
        if (m22779m.f36828a == -1 && m22780l.f36828a == ((C12642c) i.Q(m22777o())).f36828a) {
            if (Math.abs(this.f36921i.mo14277r(this.f36919g.m28258c()) - this.f36921i.mo14277r(j)) != 1) {
                z = true;
                return z;
            }
            z = false;
            return z;
        }
        z = true;
        if (!(!l.a(m22779m, m22780l))) {
            z = true;
            if (this.f36921i.mo14277r(this.f36919g.m28258c()) == this.f36921i.mo14277r(j)) {
                if (this.f36921i.mo14282m(this.f36919g.m28258c()) != this.f36921i.mo14282m(j)) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    /* renamed from: l */
    public final C12642c m22780l(long j, boolean z) {
        C12642c c12642c;
        C12642c c12642c2;
        if (m22777o().isEmpty()) {
            return C12665r.f36922a;
        }
        int mo14292c = this.f36921i.mo14292c(j);
        if (!z && mo22773s() && !mo22770v()) {
            List<C12642c> m22777o = m22777o();
            ListIterator<C12642c> listIterator = m22777o.listIterator(m22777o.size());
            do {
                c12642c2 = null;
                if (!listIterator.hasPrevious()) {
                    break;
                }
                c12642c2 = listIterator.previous();
            } while (!(c12642c2.f36828a == mo14292c));
            C12642c c12642c3 = c12642c2;
            if (c12642c3 == null) {
                c12642c3 = C12665r.f36922a;
            }
            return c12642c3;
        }
        List<C12642c> m22777o2 = m22777o();
        ListIterator<C12642c> listIterator2 = m22777o2.listIterator(m22777o2.size());
        do {
            c12642c = null;
            if (!listIterator2.hasPrevious()) {
                break;
            }
            c12642c = listIterator2.previous();
        } while (!(c12642c.f36828a <= mo14292c));
        C12642c c12642c4 = c12642c;
        if (c12642c4 == null) {
            C12642c c12642c5 = (C12642c) i.Q(m22777o());
            String str = c12642c5.f36829b;
            Objects.requireNonNull(c12642c5);
            l.e(str, "type");
            c12642c4 = new C12642c(-1, str);
        }
        return c12642c4;
    }

    /* renamed from: n */
    public int mo22778n() {
        return this.f36914b;
    }

    /* renamed from: o */
    public final List<C12642c> m22777o() {
        List<C12642c> list;
        if (this.f36916d.isEmpty()) {
            if (!(this.f36917e.mo10938g().length() == 0)) {
                try {
                    Object g = this.f36915c.g(this.f36917e.mo10938g(), new C12664a().getType());
                    l.d(g, "gson.fromJson(feature.fi…ing, String>>>() {}.type)");
                    List<Map> list2 = (List) g;
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(list2, 10));
                    for (Map map : list2) {
                        Set<Map.Entry> entrySet = map.entrySet();
                        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(entrySet, 10));
                        for (Map.Entry entry : entrySet) {
                            arrayList2.add(new C12642c(Integer.parseInt((String) entry.getKey()), (String) entry.getValue()));
                        }
                        arrayList.add((C12642c) i.B(arrayList2));
                    }
                    list = i.E0(arrayList);
                    this.f36916d = list;
                } catch (Exception e) {
                    list = this.f36916d;
                }
                return list;
            }
        }
        return this.f36916d;
    }

    /* renamed from: p */
    public final String m22776p() {
        return m22779m(this, this.f36919g.m28258c(), false, 2, null).f36829b;
    }

    /* renamed from: q */
    public int mo22775q() {
        return 0;
    }

    /* renamed from: r */
    public boolean mo22774r() {
        return false;
    }

    /* renamed from: s */
    public boolean mo22773s() {
        return false;
    }

    /* renamed from: t */
    public void mo22772t() {
    }

    /* renamed from: u */
    public abstract boolean mo22771u();

    /* renamed from: v */
    public boolean mo22770v() {
        return this.f36913a;
    }
}
