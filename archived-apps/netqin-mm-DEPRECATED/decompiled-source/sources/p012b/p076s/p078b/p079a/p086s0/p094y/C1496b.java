package p012b.p076s.p078b.p079a.p086s0.p094y;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import com.google.common.collect.RegularImmutableMap;
import java.io.IOException;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.y.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/y/b.class */
public final class C1496b implements AbstractC1350g {

    /* renamed from: a */
    public AbstractC1352i f6143a;

    /* renamed from: b */
    public AbstractC1362q f6144b;

    /* renamed from: c */
    public C1497c f6145c;

    /* renamed from: d */
    public int f6146d;

    /* renamed from: e */
    public int f6147e;

    static {
        AbstractC1353j jVar = C1495a.f6142a;
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33123b() {
        return new AbstractC1350g[]{new C1496b()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        if (this.f6145c == null) {
            C1497c a = C1498d.m33110a(hVar);
            this.f6145c = a;
            if (a != null) {
                this.f6144b.mo32623a(Format.m38181a((String) null, "audio/raw", (String) null, a.m33122a(), (int) RegularImmutableMap.SHORT_MAX_SIZE, this.f6145c.m33113h(), this.f6145c.m33112i(), this.f6145c.m33114g(), (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f6146d = this.f6145c.m33116e();
            } else {
                throw new ParserException("Unsupported or unrecognized wav header.");
            }
        }
        if (!this.f6145c.m33111j()) {
            C1498d.m33109a(hVar, this.f6145c);
            this.f6143a.mo32656a(this.f6145c);
        }
        long f = this.f6145c.m33115f();
        int i = 0;
        C1160a.m34518b(f != -1);
        long position = f - hVar.getPosition();
        if (position <= 0) {
            return -1;
        }
        int a2 = this.f6144b.mo32825a(hVar, (int) Math.min(RegularImmutableMap.SHORT_MAX_SIZE - this.f6147e, position), true);
        if (a2 != -1) {
            this.f6147e += a2;
        }
        int i2 = this.f6147e / this.f6146d;
        if (i2 > 0) {
            long a3 = this.f6145c.m33121a(hVar.getPosition() - this.f6147e);
            int i3 = i2 * this.f6146d;
            int i4 = this.f6147e - i3;
            this.f6147e = i4;
            this.f6144b.mo32832a(a3, 1, i3, i4, null);
        }
        if (a2 == -1) {
            i = -1;
        }
        return i;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f6147e = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f6143a = iVar;
        this.f6144b = iVar.mo32666a(0, 1);
        this.f6145c = null;
        iVar.mo32639e();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        return C1498d.m33110a(hVar) != null;
    }
}
