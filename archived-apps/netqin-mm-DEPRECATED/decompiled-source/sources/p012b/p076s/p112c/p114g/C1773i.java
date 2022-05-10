package p012b.p076s.p112c.p114g;

import android.content.Context;
import android.os.Handler;
import androidx.media2.exoplayer.external.audio.AudioSink;
import p012b.p076s.p078b.p079a.AbstractC1236h0;
import p012b.p076s.p078b.p079a.AbstractC1242k0;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1218o;
import p012b.p076s.p078b.p079a.p081b1.C1202d;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1286m;
import p012b.p076s.p078b.p079a.p083p0.C1297u;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p085r0.C1333o;
import p012b.p076s.p078b.p079a.p095t0.AbstractC1502b;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1519d;
import p012b.p076s.p078b.p079a.p096u0.C1520e;
import p012b.p076s.p078b.p079a.p107x0.AbstractC1647b;
/* renamed from: b.s.c.g.i */
/* loaded from: classes-dex2jar.jar:b/s/c/g/i.class */
public final class C1773i implements AbstractC1242k0 {

    /* renamed from: a */
    public final Context f7140a;

    /* renamed from: b */
    public final AudioSink f7141b;

    /* renamed from: c */
    public final C1774j f7142c;

    public C1773i(Context context, AudioSink audioSink, C1774j jVar) {
        this.f7140a = context;
        this.f7141b = audioSink;
        this.f7142c = jVar;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1242k0
    /* renamed from: a */
    public AbstractC1236h0[] mo32134a(Handler handler, AbstractC1218o oVar, AbstractC1286m mVar, AbstractC1647b bVar, AbstractC1519d dVar, AbstractC1327k<C1333o> kVar) {
        return new AbstractC1236h0[]{new C1202d(this.f7140a, AbstractC1502b.f6167a, 5000L, kVar, false, handler, oVar, 50), new C1297u(this.f7140a, AbstractC1502b.f6167a, kVar, false, handler, mVar, this.f7141b), this.f7142c, new C1520e(dVar, handler.getLooper(), new C1771h())};
    }
}
