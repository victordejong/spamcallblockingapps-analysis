package p646n.p649b.p650a.p652e.p653a;

import java.nio.ByteBuffer;
/* renamed from: n.b.a.e.a.a */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/a.class */
public final class C15210a implements AbstractC15215f {

    /* renamed from: a */
    public final ByteBuffer f33227a;

    public C15210a(ByteBuffer byteBuffer) {
        C15214e.m198a(byteBuffer, "The ByteBuffer cannot be null.");
        this.f33227a = byteBuffer;
    }

    /* renamed from: a */
    public int m220a(ByteBuffer byteBuffer) {
        synchronized (this) {
            if (this.f33227a.remaining() == 0) {
                return -1;
            }
            int min = Math.min(byteBuffer.remaining(), this.f33227a.remaining());
            if (min > 0) {
                ByteBuffer slice = this.f33227a.slice();
                slice.order(this.f33227a.order()).limit(min);
                byteBuffer.put(slice);
                this.f33227a.position(this.f33227a.position() + min);
            }
            return min;
        }
    }

    /* renamed from: a */
    public long m222a() {
        return this.f33227a.position();
    }

    /* renamed from: a */
    public C15210a m221a(long j) {
        synchronized (this) {
            C15214e.m197a(j >= 0 && j <= 2147483647L, "The new position should be non-negative and be less than Integer.MAX_VALUE.");
            this.f33227a.position((int) j);
        }
        return this;
    }

    /* renamed from: b */
    public long m219b() {
        return this.f33227a.limit();
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }
}
