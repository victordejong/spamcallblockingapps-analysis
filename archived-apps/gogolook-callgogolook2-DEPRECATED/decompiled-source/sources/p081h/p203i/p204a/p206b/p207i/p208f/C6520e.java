package p081h.p203i.p204a.p206b.p207i.p208f;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k;
/* renamed from: h.i.a.b.i.f.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/e.class */
public final class C6520e extends AbstractC6534k {

    /* renamed from: a */
    public final AbstractC6534k.EnumC6536b f16233a;

    /* renamed from: b */
    public final AbstractC6507a f16234b;

    /* renamed from: h.i.a.b.i.f.e$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/f/e$b.class */
    public static final class C6522b extends AbstractC6534k.AbstractC6535a {

        /* renamed from: a */
        public AbstractC6534k.EnumC6536b f16235a;

        /* renamed from: b */
        public AbstractC6507a f16236b;

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k.AbstractC6535a
        /* renamed from: a */
        public AbstractC6534k.AbstractC6535a mo22403a(@Nullable AbstractC6507a aVar) {
            this.f16236b = aVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k.AbstractC6535a
        /* renamed from: a */
        public AbstractC6534k.AbstractC6535a mo22402a(@Nullable AbstractC6534k.EnumC6536b bVar) {
            this.f16235a = bVar;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k.AbstractC6535a
        /* renamed from: a */
        public AbstractC6534k mo22404a() {
            return new C6520e(this.f16235a, this.f16236b);
        }
    }

    public C6520e(@Nullable AbstractC6534k.EnumC6536b bVar, @Nullable AbstractC6507a aVar) {
        this.f16233a = bVar;
        this.f16234b = aVar;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k
    @Nullable
    /* renamed from: a */
    public AbstractC6507a mo22407a() {
        return this.f16234b;
    }

    @Override // p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k
    @Nullable
    /* renamed from: b */
    public AbstractC6534k.EnumC6536b mo22406b() {
        return this.f16233a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6534k)) {
            return false;
        }
        AbstractC6534k kVar = (AbstractC6534k) obj;
        AbstractC6534k.EnumC6536b bVar = this.f16233a;
        if (bVar != null ? bVar.equals(kVar.mo22406b()) : kVar.mo22406b() == null) {
            AbstractC6507a aVar = this.f16234b;
            if (aVar != null) {
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        AbstractC6534k.EnumC6536b bVar = this.f16233a;
        int i = 0;
        int hashCode = bVar == null ? 0 : bVar.hashCode();
        AbstractC6507a aVar = this.f16234b;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f16233a + ", androidClientInfo=" + this.f16234b + CssParser.BLOCK_END;
    }
}
