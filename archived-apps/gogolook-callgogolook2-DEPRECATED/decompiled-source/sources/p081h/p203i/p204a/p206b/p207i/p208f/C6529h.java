package p081h.p203i.p204a.p206b.p207i.p208f;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: h.i.a.b.i.f.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/h.class */
public final class C6529h extends AbstractC6541n {

    /* renamed from: a */
    public final long f16265a;

    public C6529h(long j) {
        this.f16265a = j;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6541n
    /* renamed from: a */
    public long mo22365a() {
        return this.f16265a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6541n)) {
            return false;
        }
        if (this.f16265a != ((AbstractC6541n) obj).mo22365a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f16265a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f16265a + CssParser.BLOCK_END;
    }
}
