package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqc.class */
public final class zzqc {

    /* renamed from: a */
    private final int f15361a;

    /* renamed from: b */
    private final int f15362b;

    /* renamed from: c */
    private final int f15363c;

    /* renamed from: d */
    private final boolean f15364d;

    /* renamed from: e */
    private final zzqr f15365e;

    /* renamed from: f */
    private final zzqy f15366f;

    /* renamed from: n */
    private int f15374n;

    /* renamed from: g */
    private final Object f15367g = new Object();

    /* renamed from: h */
    private ArrayList<String> f15368h = new ArrayList<>();

    /* renamed from: i */
    private ArrayList<String> f15369i = new ArrayList<>();

    /* renamed from: j */
    private ArrayList<zzqp> f15370j = new ArrayList<>();

    /* renamed from: k */
    private int f15371k = 0;

    /* renamed from: l */
    private int f15372l = 0;

    /* renamed from: m */
    private int f15373m = 0;

    /* renamed from: o */
    private String f15375o = "";

    /* renamed from: p */
    private String f15376p = "";

    /* renamed from: q */
    private String f15377q = "";

    public zzqc(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f15361a = i;
        this.f15362b = i2;
        this.f15363c = i3;
        this.f15364d = z;
        this.f15365e = new zzqr(i4);
        this.f15366f = new zzqy(i5, i6, i7);
    }

    /* renamed from: a */
    private final int m3108a(int i, int i2) {
        return this.f15364d ? this.f15362b : (i * this.f15361a) + (i2 * this.f15362b);
    }

    /* renamed from: a */
    private static String m3106a(ArrayList<String> arrayList) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
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
    private final void m3107a(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.f15363c) {
            synchronized (this.f15367g) {
                this.f15368h.add(str);
                this.f15371k += str.length();
                if (z) {
                    this.f15369i.add(str);
                    this.f15370j.add(new zzqp(f, f2, f3, f4, this.f15369i.size() - 1));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m3109a() {
        return this.f15371k;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzqc)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzqc) obj).f15375o;
        return str != null && str.equals(this.f15375o);
    }

    public final int getScore() {
        return this.f15374n;
    }

    public final int hashCode() {
        return this.f15375o.hashCode();
    }

    public final String toString() {
        int i = this.f15372l;
        int i2 = this.f15374n;
        int i3 = this.f15371k;
        String a = m3106a(this.f15368h);
        String a2 = m3106a(this.f15369i);
        String str = this.f15375o;
        String str2 = this.f15376p;
        String str3 = this.f15377q;
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

    public final void zza(String str, boolean z, float f, float f2, float f3, float f4) {
        m3107a(str, z, f, f2, f3, f4);
        synchronized (this.f15367g) {
            if (this.f15373m < 0) {
                zzavs.zzea("ActivityContent: negative number of WebViews.");
            }
            zzlz();
        }
    }

    public final void zzb(String str, boolean z, float f, float f2, float f3, float f4) {
        m3107a(str, z, f, f2, f3, f4);
    }

    public final void zzbp(int i) {
        this.f15372l = i;
    }

    public final boolean zzlr() {
        boolean z;
        synchronized (this.f15367g) {
            z = this.f15373m == 0;
        }
        return z;
    }

    public final String zzls() {
        return this.f15375o;
    }

    public final String zzlt() {
        return this.f15376p;
    }

    public final String zzlu() {
        return this.f15377q;
    }

    public final void zzlv() {
        synchronized (this.f15367g) {
            this.f15374n -= 100;
        }
    }

    public final void zzlw() {
        synchronized (this.f15367g) {
            this.f15373m--;
        }
    }

    public final void zzlx() {
        synchronized (this.f15367g) {
            this.f15373m++;
        }
    }

    public final void zzly() {
        synchronized (this.f15367g) {
            int a = m3108a(this.f15371k, this.f15372l);
            if (a > this.f15374n) {
                this.f15374n = a;
            }
        }
    }

    public final void zzlz() {
        synchronized (this.f15367g) {
            int a = m3108a(this.f15371k, this.f15372l);
            if (a > this.f15374n) {
                this.f15374n = a;
                if (!zzq.zzku().zzvf().zzvu()) {
                    this.f15375o = this.f15365e.zza(this.f15368h);
                    this.f15376p = this.f15365e.zza(this.f15369i);
                }
                if (!zzq.zzku().zzvf().zzvw()) {
                    this.f15377q = this.f15366f.zza(this.f15369i, this.f15370j);
                }
            }
        }
    }
}
