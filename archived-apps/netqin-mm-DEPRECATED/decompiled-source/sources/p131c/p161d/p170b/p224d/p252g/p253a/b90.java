package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzelj;
/* renamed from: c.d.b.d.g.a.b90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b90.class */
public final class b90 implements m80 {

    /* renamed from: a */
    public final zzelj f12347a;

    /* renamed from: b */
    public final String f12348b;

    /* renamed from: c */
    public final Object[] f12349c;

    /* renamed from: d */
    public final int f12350d;

    public b90(zzelj zzeljVar, String str, Object[] objArr) {
        this.f12347a = zzeljVar;
        this.f12348b = str;
        this.f12349c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f12350d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f12350d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.m80
    /* renamed from: a */
    public final int mo26280a() {
        return (this.f12350d & 1) == 1 ? zzejz.zze.f28082i : zzejz.zze.f28083j;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.m80
    /* renamed from: b */
    public final boolean mo26279b() {
        return (this.f12350d & 2) == 2;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.m80
    /* renamed from: c */
    public final zzelj mo26278c() {
        return this.f12347a;
    }

    /* renamed from: d */
    public final String m27178d() {
        return this.f12348b;
    }

    /* renamed from: e */
    public final Object[] m27177e() {
        return this.f12349c;
    }
}
