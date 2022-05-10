package p012b.p076s.p078b.p079a.p084q0;

import java.nio.ByteBuffer;
/* renamed from: b.s.b.a.q0.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/q0/d.class */
public class C1311d extends AbstractC1306a {

    /* renamed from: b */
    public final C1307b f5244b = new C1307b();

    /* renamed from: c */
    public ByteBuffer f5245c;

    /* renamed from: d */
    public long f5246d;

    /* renamed from: e */
    public final int f5247e;

    public C1311d(int i) {
        this.f5247e = i;
    }

    /* renamed from: h */
    public static C1311d m33728h() {
        return new C1311d(0);
    }

    @Override // p012b.p076s.p078b.p079a.p084q0.AbstractC1306a
    /* renamed from: a */
    public void mo33734a() {
        super.mo33734a();
        ByteBuffer byteBuffer = this.f5245c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    /* renamed from: d */
    public final ByteBuffer m33733d(int i) {
        int i2 = this.f5247e;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f5245c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: e */
    public final void m33732e() {
        this.f5245c.flip();
    }

    /* renamed from: e */
    public void m33731e(int i) {
        ByteBuffer byteBuffer = this.f5245c;
        if (byteBuffer == null) {
            this.f5245c = m33733d(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f5245c.position();
        int i2 = i + position;
        if (capacity < i2) {
            ByteBuffer d = m33733d(i2);
            if (position > 0) {
                this.f5245c.position(0);
                this.f5245c.limit(position);
                d.put(this.f5245c);
            }
            this.f5245c = d;
        }
    }

    /* renamed from: f */
    public final boolean m33730f() {
        return m33743b(1073741824);
    }

    /* renamed from: g */
    public final boolean m33729g() {
        return this.f5245c == null && this.f5247e == 0;
    }
}
