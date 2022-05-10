package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzre.class */
public final class zzre {

    /* renamed from: a */
    public final int f28894a;

    /* renamed from: b */
    public final int f28895b;

    /* renamed from: c */
    public final int f28896c;

    /* renamed from: d */
    public final boolean f28897d;

    /* renamed from: e */
    public final zzrp f28898e;

    /* renamed from: f */
    public final zzsa f28899f;

    /* renamed from: n */
    public int f28907n;

    /* renamed from: g */
    public final Object f28900g = new Object();

    /* renamed from: h */
    public ArrayList<String> f28901h = new ArrayList<>();

    /* renamed from: i */
    public ArrayList<String> f28902i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<zzrn> f28903j = new ArrayList<>();

    /* renamed from: k */
    public int f28904k = 0;

    /* renamed from: l */
    public int f28905l = 0;

    /* renamed from: m */
    public int f28906m = 0;

    /* renamed from: o */
    public String f28908o = "";

    /* renamed from: p */
    public String f28909p = "";

    /* renamed from: q */
    public String f28910q = "";

    public zzre(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f28894a = i;
        this.f28895b = i2;
        this.f28896c = i3;
        this.f28897d = z;
        this.f28898e = new zzrp(i4);
        this.f28899f = new zzsa(i5, i6, i7);
    }

    /* renamed from: a */
    public static String m11524a(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList.get(i2);
            i2++;
            sb.append(str);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }

    /* renamed from: a */
    public final int m11528a() {
        return this.f28907n;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final int m11526a(int i, int i2) {
        return this.f28897d ? this.f28895b : (i * this.f28894a) + (i2 * this.f28895b);
    }

    /* renamed from: a */
    public final void m11527a(int i) {
        this.f28905l = i;
    }

    /* renamed from: a */
    public final void m11525a(String str, boolean z, float f, float f2, float f3, float f4) {
        m11520c(str, z, f, f2, f3, f4);
        synchronized (this.f28900g) {
            if (this.f28906m < 0) {
                zzbbq.m15858a("ActivityContent: negative number of WebViews.");
            }
            m11513j();
        }
    }

    /* renamed from: b */
    public final void m11522b(String str, boolean z, float f, float f2, float f3, float f4) {
        m11520c(str, z, f, f2, f3, f4);
    }

    /* renamed from: b */
    public final boolean m11523b() {
        boolean z;
        synchronized (this.f28900g) {
            z = this.f28906m == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final String m11521c() {
        return this.f28908o;
    }

    /* renamed from: c */
    public final void m11520c(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.f28896c) {
            synchronized (this.f28900g) {
                this.f28901h.add(str);
                this.f28904k += str.length();
                if (z) {
                    this.f28902i.add(str);
                    this.f28903j.add(new zzrn(f, f2, f3, f4, this.f28902i.size() - 1));
                }
            }
        }
    }

    /* renamed from: d */
    public final String m11519d() {
        return this.f28909p;
    }

    /* renamed from: e */
    public final String m11518e() {
        return this.f28910q;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzre)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzre) obj).f28908o;
        return str != null && str.equals(this.f28908o);
    }

    /* renamed from: f */
    public final void m11517f() {
        synchronized (this.f28900g) {
            this.f28907n -= 100;
        }
    }

    /* renamed from: g */
    public final void m11516g() {
        synchronized (this.f28900g) {
            this.f28906m--;
        }
    }

    /* renamed from: h */
    public final void m11515h() {
        synchronized (this.f28900g) {
            this.f28906m++;
        }
    }

    public final int hashCode() {
        return this.f28908o.hashCode();
    }

    /* renamed from: i */
    public final void m11514i() {
        synchronized (this.f28900g) {
            int a = m11526a(this.f28904k, this.f28905l);
            if (a > this.f28907n) {
                this.f28907n = a;
            }
        }
    }

    /* renamed from: j */
    public final void m11513j() {
        synchronized (this.f28900g) {
            int a = m11526a(this.f28904k, this.f28905l);
            if (a > this.f28907n) {
                this.f28907n = a;
                if (!zzp.m17965g().m16176i().mo16052k()) {
                    this.f28908o = this.f28898e.m11490a(this.f28901h);
                    this.f28909p = this.f28898e.m11490a(this.f28902i);
                }
                if (!zzp.m17965g().m16176i().mo16056g()) {
                    this.f28910q = this.f28899f.m11479a(this.f28902i, this.f28903j);
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: k */
    public final int m11512k() {
        return this.f28904k;
    }

    public final String toString() {
        int i = this.f28905l;
        int i2 = this.f28907n;
        int i3 = this.f28904k;
        String a = m11524a(this.f28901h, 100);
        String a2 = m11524a(this.f28902i, 100);
        String str = this.f28908o;
        String str2 = this.f28909p;
        String str3 = this.f28910q;
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 165 + String.valueOf(a2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(a);
        sb.append("\n viewableText");
        sb.append(a2);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }
}
