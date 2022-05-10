package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzie;
import com.google.android.gms.internal.ads.zzih;
import java.nio.ByteBuffer;
/* renamed from: c.d.b.d.g.a.kc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/kc0.class */
public final class kc0 implements zzie {

    /* renamed from: b */
    public int f13864b = -1;

    /* renamed from: c */
    public int f13865c = -1;

    /* renamed from: d */
    public int f13866d = 0;

    /* renamed from: e */
    public ByteBuffer f13867e;

    /* renamed from: f */
    public ByteBuffer f13868f;

    /* renamed from: g */
    public boolean f13869g;

    public kc0() {
        ByteBuffer byteBuffer = zzie.f28318a;
        this.f13867e = byteBuffer;
        this.f13868f = byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final void mo11930a() {
        flush();
        this.f13867e = zzie.f28318a;
        this.f13864b = -1;
        this.f13865c = -1;
        this.f13866d = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed A[LOOP:2: B:31:0x00ed->B:33:0x00f3, LOOP_START, PHI: r11 
      PHI: (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:18:0x007d, B:33:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo11927a(java.nio.ByteBuffer r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.kc0.mo11927a(java.nio.ByteBuffer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: a */
    public final boolean mo11928a(int i, int i2, int i3) throws zzih {
        if (i3 != 3 && i3 != 2 && i3 != Integer.MIN_VALUE && i3 != 1073741824) {
            throw new zzih(i, i2, i3);
        } else if (this.f13864b == i && this.f13865c == i2 && this.f13866d == i3) {
            return false;
        } else {
            this.f13864b = i;
            this.f13865c = i2;
            this.f13866d = i3;
            if (i3 != 2) {
                return true;
            }
            this.f13867e = zzie.f28318a;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: b */
    public final boolean mo11926b() {
        int i = this.f13866d;
        return (i == 0 || i == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: c */
    public final boolean mo11924c() {
        return this.f13869g && this.f13868f == zzie.f28318a;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: d */
    public final void mo11923d() {
        this.f13869g = true;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: e */
    public final ByteBuffer mo11922e() {
        ByteBuffer byteBuffer = this.f13868f;
        this.f13868f = zzie.f28318a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: f */
    public final int mo11921f() {
        return this.f13865c;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    public final void flush() {
        this.f13868f = zzie.f28318a;
        this.f13869g = false;
    }

    @Override // com.google.android.gms.internal.ads.zzie
    /* renamed from: g */
    public final int mo11920g() {
        return 2;
    }
}
