package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.w5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w5.class */
public final class C7444w5 {

    /* renamed from: a */
    public final Date f17513a;

    /* renamed from: b */
    public final String f17514b;

    /* renamed from: c */
    public final int f17515c;

    /* renamed from: d */
    public final Set<String> f17516d;

    /* renamed from: e */
    public final Location f17517e;

    /* renamed from: f */
    public final boolean f17518f;

    /* renamed from: g */
    public final Bundle f17519g;

    /* renamed from: h */
    public final Map<Class<? extends NetworkExtras>, NetworkExtras> f17520h;

    /* renamed from: i */
    public final String f17521i;

    /* renamed from: j */
    public final String f17522j;

    /* renamed from: k */
    public final SearchAdRequest f17523k;

    /* renamed from: l */
    public final int f17524l;

    /* renamed from: m */
    public final Set<String> f17525m;

    /* renamed from: n */
    public final Bundle f17526n;

    /* renamed from: o */
    public final Set<String> f17527o;

    /* renamed from: p */
    public final boolean f17528p;

    /* renamed from: q */
    public final int f17529q;

    public C7444w5(C7456x5 x5Var) {
        this(x5Var, null);
    }

    public C7444w5(C7456x5 x5Var, SearchAdRequest searchAdRequest) {
        Date date;
        String str;
        int i;
        HashSet hashSet;
        Location location;
        boolean z;
        Bundle bundle;
        HashMap hashMap;
        String str2;
        String str3;
        int i2;
        HashSet hashSet2;
        Bundle bundle2;
        HashSet hashSet3;
        boolean z2;
        int i3;
        date = x5Var.f17539g;
        this.f17513a = date;
        str = x5Var.f17540h;
        this.f17514b = str;
        i = x5Var.f17541i;
        this.f17515c = i;
        hashSet = x5Var.f17533a;
        this.f17516d = Collections.unmodifiableSet(hashSet);
        location = x5Var.f17542j;
        this.f17517e = location;
        z = x5Var.f17543k;
        this.f17518f = z;
        bundle = x5Var.f17534b;
        this.f17519g = bundle;
        hashMap = x5Var.f17535c;
        this.f17520h = Collections.unmodifiableMap(hashMap);
        str2 = x5Var.f17544l;
        this.f17521i = str2;
        str3 = x5Var.f17545m;
        this.f17522j = str3;
        this.f17523k = searchAdRequest;
        i2 = x5Var.f17546n;
        this.f17524l = i2;
        hashSet2 = x5Var.f17536d;
        this.f17525m = Collections.unmodifiableSet(hashSet2);
        bundle2 = x5Var.f17537e;
        this.f17526n = bundle2;
        hashSet3 = x5Var.f17538f;
        this.f17527o = Collections.unmodifiableSet(hashSet3);
        z2 = x5Var.f17547o;
        this.f17528p = z2;
        i3 = x5Var.f17548p;
        this.f17529q = i3;
    }

    /* renamed from: a */
    public final Bundle m20612a(Class<? extends CustomEvent> cls) {
        Bundle bundle = this.f17519g.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
        if (bundle != null) {
            return bundle.getBundle(cls.getName());
        }
        return null;
    }

    @Deprecated
    /* renamed from: a */
    public final Date m20614a() {
        return this.f17513a;
    }

    /* renamed from: a */
    public final boolean m20613a(Context context) {
        Set<String> set = this.f17525m;
        C7430v3.m20640a();
        return set.contains(C7343o1.m20779a(context));
    }

    @Deprecated
    /* renamed from: b */
    public final <T extends NetworkExtras> T m20610b(Class<T> cls) {
        return (T) this.f17520h.get(cls);
    }

    /* renamed from: b */
    public final String m20611b() {
        return this.f17514b;
    }

    /* renamed from: c */
    public final Bundle m20609c() {
        return this.f17526n;
    }

    /* renamed from: c */
    public final Bundle m20608c(Class<? extends MediationAdapter> cls) {
        return this.f17519g.getBundle(cls.getName());
    }

    @Deprecated
    /* renamed from: d */
    public final int m20607d() {
        return this.f17515c;
    }

    /* renamed from: e */
    public final Set<String> m20606e() {
        return this.f17516d;
    }

    /* renamed from: f */
    public final Location m20605f() {
        return this.f17517e;
    }

    /* renamed from: g */
    public final boolean m20604g() {
        return this.f17518f;
    }

    /* renamed from: h */
    public final String m20603h() {
        return this.f17521i;
    }

    @Deprecated
    /* renamed from: i */
    public final boolean m20602i() {
        return this.f17528p;
    }

    /* renamed from: j */
    public final String m20601j() {
        return this.f17522j;
    }

    /* renamed from: k */
    public final SearchAdRequest m20600k() {
        return this.f17523k;
    }

    /* renamed from: l */
    public final Map<Class<? extends NetworkExtras>, NetworkExtras> m20599l() {
        return this.f17520h;
    }

    /* renamed from: m */
    public final Bundle m20598m() {
        return this.f17519g;
    }

    /* renamed from: n */
    public final int m20597n() {
        return this.f17524l;
    }

    /* renamed from: o */
    public final Set<String> m20596o() {
        return this.f17527o;
    }

    /* renamed from: p */
    public final int m20595p() {
        return this.f17529q;
    }
}
