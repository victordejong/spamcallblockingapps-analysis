package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.content.p004c.C0221g;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/preference/Preference.class */
public class Preference implements Comparable<Preference> {

    /* renamed from: A */
    private List<Preference> f1727A;

    /* renamed from: B */
    private PreferenceGroup f1728B;

    /* renamed from: C */
    private AbstractC0351c f1729C;

    /* renamed from: f */
    private Context f1730f;

    /* renamed from: g */
    private C0354c f1731g;

    /* renamed from: h */
    private AbstractC0352a f1732h;

    /* renamed from: i */
    private boolean f1733i;

    /* renamed from: j */
    private AbstractC0350b f1734j;

    /* renamed from: k */
    private int f1735k;

    /* renamed from: l */
    private CharSequence f1736l;

    /* renamed from: m */
    private CharSequence f1737m;

    /* renamed from: n */
    private String f1738n;

    /* renamed from: o */
    private Intent f1739o;

    /* renamed from: p */
    private String f1740p;

    /* renamed from: q */
    private Bundle f1741q;

    /* renamed from: r */
    private boolean f1742r;

    /* renamed from: s */
    private boolean f1743s;

    /* renamed from: t */
    private boolean f1744t;

    /* renamed from: u */
    private String f1745u;

    /* renamed from: v */
    private Object f1746v;

    /* renamed from: w */
    private boolean f1747w;

    /* renamed from: x */
    private boolean f1748x;

    /* renamed from: y */
    private boolean f1749y;

    /* renamed from: z */
    private AbstractC0349a f1750z;

    /* renamed from: androidx.preference.Preference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$a.class */
    public interface AbstractC0349a {
        /* renamed from: a */
        void m5358a(Preference preference);

        /* renamed from: b */
        void m5357b(Preference preference);
    }

    /* renamed from: androidx.preference.Preference$b */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$b.class */
    public interface AbstractC0350b {
        /* renamed from: a */
        boolean m5356a(Preference preference, Object obj);
    }

    /* renamed from: androidx.preference.Preference$c */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$c.class */
    public interface AbstractC0351c<T extends Preference> {
        /* renamed from: a */
        CharSequence m5355a(T t);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0221g.m5991a(context, C0355d.f1775g, 16842894));
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1735k = Integer.MAX_VALUE;
        this.f1742r = true;
        this.f1743s = true;
        this.f1744t = true;
        this.f1747w = true;
        this.f1748x = true;
        int i3 = C0356e.f1779a;
        this.f1730f = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0358g.f1795H, i, i2);
        C0221g.m5978n(obtainStyledAttributes, C0358g.f1845f0, C0358g.f1797I, 0);
        this.f1738n = C0221g.m5977o(obtainStyledAttributes, C0358g.f1851i0, C0358g.f1809O);
        this.f1736l = C0221g.m5976p(obtainStyledAttributes, C0358g.f1867q0, C0358g.f1805M);
        this.f1737m = C0221g.m5976p(obtainStyledAttributes, C0358g.f1865p0, C0358g.f1811P);
        this.f1735k = C0221g.m5988d(obtainStyledAttributes, C0358g.f1855k0, C0358g.f1813Q, Integer.MAX_VALUE);
        this.f1740p = C0221g.m5977o(obtainStyledAttributes, C0358g.f1843e0, C0358g.f1823V);
        C0221g.m5978n(obtainStyledAttributes, C0358g.f1853j0, C0358g.f1803L, i3);
        C0221g.m5978n(obtainStyledAttributes, C0358g.f1869r0, C0358g.f1815R, 0);
        this.f1742r = C0221g.m5990b(obtainStyledAttributes, C0358g.f1841d0, C0358g.f1801K, true);
        this.f1743s = C0221g.m5990b(obtainStyledAttributes, C0358g.f1859m0, C0358g.f1807N, true);
        this.f1744t = C0221g.m5990b(obtainStyledAttributes, C0358g.f1857l0, C0358g.f1799J, true);
        this.f1745u = C0221g.m5977o(obtainStyledAttributes, C0358g.f1837b0, C0358g.f1817S);
        int i4 = C0358g.f1829Y;
        C0221g.m5990b(obtainStyledAttributes, i4, i4, this.f1743s);
        int i5 = C0358g.f1831Z;
        C0221g.m5990b(obtainStyledAttributes, i5, i5, this.f1743s);
        int i6 = C0358g.f1834a0;
        if (obtainStyledAttributes.hasValue(i6)) {
            this.f1746v = m5390T(obtainStyledAttributes, i6);
        } else {
            int i7 = C0358g.f1819T;
            if (obtainStyledAttributes.hasValue(i7)) {
                this.f1746v = m5390T(obtainStyledAttributes, i7);
            }
        }
        C0221g.m5990b(obtainStyledAttributes, C0358g.f1861n0, C0358g.f1821U, true);
        int i8 = C0358g.f1863o0;
        boolean hasValue = obtainStyledAttributes.hasValue(i8);
        this.f1749y = hasValue;
        if (hasValue) {
            C0221g.m5990b(obtainStyledAttributes, i8, C0358g.f1825W, true);
        }
        C0221g.m5990b(obtainStyledAttributes, C0358g.f1847g0, C0358g.f1827X, false);
        int i9 = C0358g.f1849h0;
        C0221g.m5990b(obtainStyledAttributes, i9, i9, true);
        int i10 = C0358g.f1839c0;
        C0221g.m5990b(obtainStyledAttributes, i10, i10, false);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: d0 */
    private void m5380d0() {
        if (TextUtils.isEmpty(this.f1745u)) {
            return;
        }
        Preference m5371k = m5371k(this.f1745u);
        if (m5371k != null) {
            m5371k.m5379e0(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.f1745u + "\" not found for preference \"" + this.f1738n + "\" (title: \"" + ((Object) this.f1736l) + "\"");
    }

    /* renamed from: e0 */
    private void m5379e0(Preference preference) {
        if (this.f1727A == null) {
            this.f1727A = new ArrayList();
        }
        this.f1727A.add(preference);
        preference.m5391S(this, m5374i0());
    }

    /* renamed from: j */
    private void m5373j() {
        if (m5359y() != null) {
            m5387W(true, this.f1746v);
        } else if (m5372j0() && m5404D().contains(this.f1738n)) {
            m5387W(true, null);
        } else {
            Object obj = this.f1746v;
            if (obj == null) {
                return;
            }
            m5387W(false, obj);
        }
    }

    /* renamed from: k0 */
    private void m5370k0(SharedPreferences.Editor editor) {
        if (this.f1731g.m5321o()) {
            editor.apply();
        }
    }

    /* renamed from: B */
    public C0354c m5405B() {
        return this.f1731g;
    }

    /* renamed from: D */
    public SharedPreferences m5404D() {
        if (this.f1731g == null || m5359y() != null) {
            return null;
        }
        return this.f1731g.m5328h();
    }

    /* renamed from: E */
    public CharSequence m5403E() {
        return m5402F() != null ? m5402F().m5355a(this) : this.f1737m;
    }

    /* renamed from: F */
    public final AbstractC0351c m5402F() {
        return this.f1729C;
    }

    /* renamed from: G */
    public CharSequence m5401G() {
        return this.f1736l;
    }

    /* renamed from: H */
    public boolean m5400H() {
        return !TextUtils.isEmpty(this.f1738n);
    }

    /* renamed from: I */
    public boolean m5399I() {
        return this.f1742r && this.f1747w && this.f1748x;
    }

    /* renamed from: J */
    public boolean m5398J() {
        return this.f1744t;
    }

    /* renamed from: K */
    protected void m5397K() {
        AbstractC0349a abstractC0349a = this.f1750z;
        if (abstractC0349a != null) {
            abstractC0349a.m5357b(this);
        }
    }

    /* renamed from: M */
    public void m5396M(boolean z) {
        List<Preference> list = this.f1727A;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).m5391S(this, z);
        }
    }

    /* renamed from: O */
    protected void m5395O() {
        AbstractC0349a abstractC0349a = this.f1750z;
        if (abstractC0349a != null) {
            abstractC0349a.m5358a(this);
        }
    }

    /* renamed from: P */
    public void m5394P() {
        m5380d0();
    }

    /* renamed from: Q */
    public void m5393Q(C0354c c0354c) {
        this.f1731g = c0354c;
        if (!this.f1733i) {
            c0354c.m5330f();
        }
        m5373j();
    }

    /* renamed from: R */
    protected void m5392R(C0354c c0354c, long j) {
        this.f1733i = true;
        try {
            m5393Q(c0354c);
        } finally {
            this.f1733i = false;
        }
    }

    /* renamed from: S */
    public void m5391S(Preference preference, boolean z) {
        if (this.f1747w == z) {
            this.f1747w = !z;
            m5396M(m5374i0());
            m5397K();
        }
    }

    /* renamed from: T */
    protected Object m5390T(TypedArray typedArray, int i) {
        return null;
    }

    /* renamed from: U */
    public void m5389U(Preference preference, boolean z) {
        if (this.f1748x == z) {
            this.f1748x = !z;
            m5396M(m5374i0());
            m5397K();
        }
    }

    /* renamed from: V */
    protected void m5388V(Object obj) {
    }

    @Deprecated
    /* renamed from: W */
    protected void m5387W(boolean z, Object obj) {
        m5388V(obj);
    }

    /* renamed from: Z */
    protected boolean m5386Z(boolean z) {
        if (!m5372j0()) {
            return false;
        }
        if (z == m5363u(!z)) {
            return true;
        }
        AbstractC0352a m5359y = m5359y();
        if (m5359y != null) {
            m5359y.m5350e(this.f1738n, z);
            return true;
        }
        SharedPreferences.Editor m5331e = this.f1731g.m5331e();
        m5331e.putBoolean(this.f1738n, z);
        m5370k0(m5331e);
        return true;
    }

    /* renamed from: a0 */
    protected boolean m5385a0(int i) {
        if (!m5372j0()) {
            return false;
        }
        if (i == m5362v(i ^ (-1))) {
            return true;
        }
        AbstractC0352a m5359y = m5359y();
        if (m5359y != null) {
            m5359y.m5349f(this.f1738n, i);
            return true;
        }
        SharedPreferences.Editor m5331e = this.f1731g.m5331e();
        m5331e.putInt(this.f1738n, i);
        m5370k0(m5331e);
        return true;
    }

    /* renamed from: b0 */
    protected boolean m5384b0(String str) {
        if (!m5372j0()) {
            return false;
        }
        if (TextUtils.equals(str, m5361w(null))) {
            return true;
        }
        AbstractC0352a m5359y = m5359y();
        if (m5359y != null) {
            m5359y.m5348g(this.f1738n, str);
            return true;
        }
        SharedPreferences.Editor m5331e = this.f1731g.m5331e();
        m5331e.putString(this.f1738n, str);
        m5370k0(m5331e);
        return true;
    }

    /* renamed from: c */
    void m5383c(PreferenceGroup preferenceGroup) {
        if (preferenceGroup == null || this.f1728B == null) {
            this.f1728B = preferenceGroup;
            return;
        }
        throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
    }

    /* renamed from: c0 */
    public boolean m5382c0(Set<String> set) {
        if (!m5372j0()) {
            return false;
        }
        if (set.equals(m5360x(null))) {
            return true;
        }
        AbstractC0352a m5359y = m5359y();
        if (m5359y != null) {
            m5359y.m5347h(this.f1738n, set);
            return true;
        }
        SharedPreferences.Editor m5331e = this.f1731g.m5331e();
        m5331e.putStringSet(this.f1738n, set);
        m5370k0(m5331e);
        return true;
    }

    /* renamed from: d */
    public boolean m5381d(Object obj) {
        AbstractC0350b abstractC0350b = this.f1734j;
        return abstractC0350b == null || abstractC0350b.m5356a(this, obj);
    }

    /* renamed from: f0 */
    public void m5378f0(Intent intent) {
        this.f1739o = intent;
    }

    /* renamed from: g0 */
    public void m5377g0(int i) {
        if (i != this.f1735k) {
            this.f1735k = i;
            m5395O();
        }
    }

    /* renamed from: h */
    public int compareTo(Preference preference) {
        int i = this.f1735k;
        int i2 = preference.f1735k;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.f1736l;
        CharSequence charSequence2 = preference.f1736l;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 != null) {
            return charSequence.toString().compareToIgnoreCase(preference.f1736l.toString());
        }
        return -1;
    }

    /* renamed from: h0 */
    public final void m5375h0(AbstractC0351c abstractC0351c) {
        this.f1729C = abstractC0351c;
        m5397K();
    }

    /* renamed from: i0 */
    public boolean m5374i0() {
        return !m5399I();
    }

    /* renamed from: j0 */
    protected boolean m5372j0() {
        return this.f1731g != null && m5398J() && m5400H();
    }

    /* renamed from: k */
    protected <T extends Preference> T m5371k(String str) {
        C0354c c0354c = this.f1731g;
        if (c0354c == null) {
            return null;
        }
        return (T) c0354c.m5335a(str);
    }

    /* renamed from: m */
    public Context m5369m() {
        return this.f1730f;
    }

    /* renamed from: n */
    public Bundle m5368n() {
        if (this.f1741q == null) {
            this.f1741q = new Bundle();
        }
        return this.f1741q;
    }

    /* renamed from: p */
    StringBuilder m5367p() {
        StringBuilder sb = new StringBuilder();
        CharSequence m5401G = m5401G();
        if (!TextUtils.isEmpty(m5401G)) {
            sb.append(m5401G);
            sb.append(' ');
        }
        CharSequence m5403E = m5403E();
        if (!TextUtils.isEmpty(m5403E)) {
            sb.append(m5403E);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    /* renamed from: q */
    public String m5366q() {
        return this.f1738n;
    }

    /* renamed from: s */
    public int m5365s() {
        return this.f1735k;
    }

    /* renamed from: t */
    public PreferenceGroup m5364t() {
        return this.f1728B;
    }

    public String toString() {
        return m5367p().toString();
    }

    /* renamed from: u */
    protected boolean m5363u(boolean z) {
        if (!m5372j0()) {
            return z;
        }
        AbstractC0352a m5359y = m5359y();
        return m5359y != null ? m5359y.m5354a(this.f1738n, z) : this.f1731g.m5328h().getBoolean(this.f1738n, z);
    }

    /* renamed from: v */
    protected int m5362v(int i) {
        if (!m5372j0()) {
            return i;
        }
        AbstractC0352a m5359y = m5359y();
        return m5359y != null ? m5359y.m5353b(this.f1738n, i) : this.f1731g.m5328h().getInt(this.f1738n, i);
    }

    /* renamed from: w */
    protected String m5361w(String str) {
        if (!m5372j0()) {
            return str;
        }
        AbstractC0352a m5359y = m5359y();
        return m5359y != null ? m5359y.m5352c(this.f1738n, str) : this.f1731g.m5328h().getString(this.f1738n, str);
    }

    /* renamed from: x */
    public Set<String> m5360x(Set<String> set) {
        if (!m5372j0()) {
            return set;
        }
        AbstractC0352a m5359y = m5359y();
        return m5359y != null ? m5359y.m5351d(this.f1738n, set) : this.f1731g.m5328h().getStringSet(this.f1738n, set);
    }

    /* renamed from: y */
    public AbstractC0352a m5359y() {
        AbstractC0352a abstractC0352a = this.f1732h;
        if (abstractC0352a != null) {
            return abstractC0352a;
        }
        C0354c c0354c = this.f1731g;
        if (c0354c == null) {
            return null;
        }
        return c0354c.m5329g();
    }
}
