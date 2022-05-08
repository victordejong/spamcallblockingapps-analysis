package p081h.p203i.p204a.p206b.p209j.p212u;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6599g;
/* renamed from: h.i.a.b.j.u.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/b.class */
public final class C6593b extends AbstractC6599g {

    /* renamed from: a */
    public final AbstractC6599g.EnumC6600a f16400a;

    /* renamed from: b */
    public final long f16401b;

    public C6593b(AbstractC6599g.EnumC6600a aVar, long j) {
        if (aVar != null) {
            this.f16400a = aVar;
            this.f16401b = j;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6599g
    /* renamed from: a */
    public long mo22264a() {
        return this.f16401b;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6599g
    /* renamed from: b */
    public AbstractC6599g.EnumC6600a mo22262b() {
        return this.f16400a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6599g)) {
            return false;
        }
        AbstractC6599g gVar = (AbstractC6599g) obj;
        if (!this.f16400a.equals(gVar.mo22262b()) || this.f16401b != gVar.mo22264a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f16400a.hashCode();
        long j = this.f16401b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f16400a + ", nextRequestWaitMillis=" + this.f16401b + CssParser.BLOCK_END;
    }
}
