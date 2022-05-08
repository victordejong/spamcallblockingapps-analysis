package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d;
/* renamed from: h.i.a.b.j.y.k.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/a.class */
public final class C6651a extends AbstractC6663d {

    /* renamed from: b */
    public final long f16514b;

    /* renamed from: c */
    public final int f16515c;

    /* renamed from: d */
    public final int f16516d;

    /* renamed from: e */
    public final long f16517e;

    /* renamed from: f */
    public final int f16518f;

    /* renamed from: h.i.a.b.j.y.k.a$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/a$b.class */
    public static final class C6653b extends AbstractC6663d.AbstractC6664a {

        /* renamed from: a */
        public Long f16519a;

        /* renamed from: b */
        public Integer f16520b;

        /* renamed from: c */
        public Integer f16521c;

        /* renamed from: d */
        public Long f16522d;

        /* renamed from: e */
        public Integer f16523e;

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d.AbstractC6664a
        /* renamed from: a */
        public AbstractC6663d.AbstractC6664a mo22116a(int i) {
            this.f16521c = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d.AbstractC6664a
        /* renamed from: a */
        public AbstractC6663d.AbstractC6664a mo22115a(long j) {
            this.f16522d = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d.AbstractC6664a
        /* renamed from: a */
        public AbstractC6663d mo22117a() {
            String str = "";
            if (this.f16519a == null) {
                str = " maxStorageSizeInBytes";
            }
            String str2 = str;
            if (this.f16520b == null) {
                str2 = str + " loadBatchSize";
            }
            String str3 = str2;
            if (this.f16521c == null) {
                str3 = str2 + " criticalSectionEnterTimeoutMs";
            }
            String str4 = str3;
            if (this.f16522d == null) {
                str4 = str3 + " eventCleanUpAge";
            }
            String str5 = str4;
            if (this.f16523e == null) {
                str5 = str4 + " maxBlobByteSizePerRow";
            }
            if (str5.isEmpty()) {
                return new C6651a(this.f16519a.longValue(), this.f16520b.intValue(), this.f16521c.intValue(), this.f16522d.longValue(), this.f16523e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d.AbstractC6664a
        /* renamed from: b */
        public AbstractC6663d.AbstractC6664a mo22114b(int i) {
            this.f16520b = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d.AbstractC6664a
        /* renamed from: b */
        public AbstractC6663d.AbstractC6664a mo22113b(long j) {
            this.f16519a = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d.AbstractC6664a
        /* renamed from: c */
        public AbstractC6663d.AbstractC6664a mo22112c(int i) {
            this.f16523e = Integer.valueOf(i);
            return this;
        }
    }

    public C6651a(long j, int i, int i2, long j2, int i3) {
        this.f16514b = j;
        this.f16515c = i;
        this.f16516d = i2;
        this.f16517e = j2;
        this.f16518f = i3;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d
    /* renamed from: a */
    public int mo22123a() {
        return this.f16516d;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d
    /* renamed from: b */
    public long mo22122b() {
        return this.f16517e;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d
    /* renamed from: c */
    public int mo22121c() {
        return this.f16515c;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d
    /* renamed from: d */
    public int mo22120d() {
        return this.f16518f;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6663d
    /* renamed from: e */
    public long mo22119e() {
        return this.f16514b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC6663d)) {
            return false;
        }
        AbstractC6663d dVar = (AbstractC6663d) obj;
        if (!(this.f16514b == dVar.mo22119e() && this.f16515c == dVar.mo22121c() && this.f16516d == dVar.mo22123a() && this.f16517e == dVar.mo22122b() && this.f16518f == dVar.mo22120d())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f16514b;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.f16515c;
        int i3 = this.f16516d;
        long j2 = this.f16517e;
        return this.f16518f ^ ((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f16514b + ", loadBatchSize=" + this.f16515c + ", criticalSectionEnterTimeoutMs=" + this.f16516d + ", eventCleanUpAge=" + this.f16517e + ", maxBlobByteSizePerRow=" + this.f16518f + CssParser.BLOCK_END;
    }
}
