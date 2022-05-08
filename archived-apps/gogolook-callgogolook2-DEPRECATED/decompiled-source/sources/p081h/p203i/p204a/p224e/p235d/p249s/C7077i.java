package p081h.p203i.p204a.p224e.p235d.p249s;

import android.os.SystemClock;
/* renamed from: h.i.a.e.d.s.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/i.class */
public class C7077i implements AbstractC7074f {

    /* renamed from: a */
    public static final C7077i f17184a = new C7077i();

    /* renamed from: a */
    public static AbstractC7074f m21148a() {
        return f17184a;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f
    public long nanoTime() {
        return System.nanoTime();
    }
}
