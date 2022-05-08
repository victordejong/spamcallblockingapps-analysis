package p081h.p203i.p204a.p224e.p259j.p260a;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
/* renamed from: h.i.a.e.j.a.x5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/x5.class */
public final class C7456x5 {

    /* renamed from: g */
    public Date f17539g;

    /* renamed from: h */
    public String f17540h;

    /* renamed from: j */
    public Location f17542j;

    /* renamed from: l */
    public String f17544l;

    /* renamed from: m */
    public String f17545m;

    /* renamed from: o */
    public boolean f17547o;

    /* renamed from: a */
    public final HashSet<String> f17533a = new HashSet<>();

    /* renamed from: b */
    public final Bundle f17534b = new Bundle();

    /* renamed from: c */
    public final HashMap<Class<? extends NetworkExtras>, NetworkExtras> f17535c = new HashMap<>();

    /* renamed from: d */
    public final HashSet<String> f17536d = new HashSet<>();

    /* renamed from: e */
    public final Bundle f17537e = new Bundle();

    /* renamed from: f */
    public final HashSet<String> f17538f = new HashSet<>();

    /* renamed from: i */
    public int f17541i = -1;

    /* renamed from: k */
    public boolean f17543k = false;

    /* renamed from: n */
    public int f17546n = -1;

    /* renamed from: p */
    public int f17548p = -1;

    @Deprecated
    /* renamed from: a */
    public final void m20564a(int i) {
        this.f17541i = i;
    }

    /* renamed from: a */
    public final void m20563a(Location location) {
        this.f17542j = location;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    /* renamed from: a */
    public final void m20562a(NetworkExtras networkExtras) {
        if (networkExtras instanceof AdMobExtras) {
            m20560a(AdMobAdapter.class, ((AdMobExtras) networkExtras).getExtras());
        } else {
            this.f17535c.put(networkExtras.getClass(), networkExtras);
        }
    }

    /* renamed from: a */
    public final void m20560a(Class<? extends MediationAdapter> cls, Bundle bundle) {
        this.f17534b.putBundle(cls.getName(), bundle);
    }

    /* renamed from: a */
    public final void m20559a(String str) {
        this.f17533a.add(str);
    }

    /* renamed from: a */
    public final void m20558a(String str, String str2) {
        this.f17537e.putString(str, str2);
    }

    @Deprecated
    /* renamed from: a */
    public final void m20557a(Date date) {
        this.f17539g = date;
    }

    /* renamed from: a */
    public final void m20556a(boolean z) {
        this.f17543k = z;
    }

    /* renamed from: b */
    public final void m20554b(Class<? extends CustomEvent> cls, Bundle bundle) {
        if (this.f17534b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
            this.f17534b.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
        }
        this.f17534b.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(cls.getName(), bundle);
    }

    /* renamed from: b */
    public final void m20553b(String str) {
        this.f17536d.add(str);
    }

    /* renamed from: b */
    public final void m20552b(boolean z) {
        this.f17546n = z ? 1 : 0;
    }

    /* renamed from: c */
    public final void m20550c(String str) {
        this.f17536d.remove(str);
    }

    @Deprecated
    /* renamed from: c */
    public final void m20549c(boolean z) {
        this.f17547o = z;
    }

    /* renamed from: d */
    public final void m20547d(String str) {
        this.f17540h = str;
    }

    /* renamed from: e */
    public final void m20545e(String str) {
        this.f17544l = str;
    }

    /* renamed from: f */
    public final void m20543f(String str) {
        this.f17545m = str;
    }

    /* renamed from: g */
    public final void m20541g(String str) {
        this.f17538f.add(str);
    }
}
