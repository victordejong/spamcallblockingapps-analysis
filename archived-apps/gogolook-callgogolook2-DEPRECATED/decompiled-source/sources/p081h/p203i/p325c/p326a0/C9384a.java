package p081h.p203i.p325c.p326a0;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import javax.annotation.Nonnull;
/* renamed from: h.i.c.a0.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/a0/a.class */
public final class C9384a extends AbstractC9389f {

    /* renamed from: a */
    public final String f21422a;

    /* renamed from: b */
    public final String f21423b;

    public C9384a(String str, String str2) {
        if (str != null) {
            this.f21422a = str;
            if (str2 != null) {
                this.f21423b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    @Override // p081h.p203i.p325c.p326a0.AbstractC9389f
    @Nonnull
    /* renamed from: a */
    public String mo15329a() {
        return this.f21422a;
    }

    @Override // p081h.p203i.p325c.p326a0.AbstractC9389f
    @Nonnull
    /* renamed from: b */
    public String mo15327b() {
        return this.f21423b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9389f)) {
            return false;
        }
        AbstractC9389f fVar = (AbstractC9389f) obj;
        if (!this.f21422a.equals(fVar.mo15329a()) || !this.f21423b.equals(fVar.mo15327b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f21422a.hashCode() ^ 1000003) * 1000003) ^ this.f21423b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f21422a + ", version=" + this.f21423b + CssParser.BLOCK_END;
    }
}
