package p646n.p649b.p650a.p651d;

import java.nio.ByteBuffer;
import p081h.p203i.p383d.C10083d;
/* renamed from: n.b.a.d.b */
/* loaded from: classes3-dex2jar.jar:n/b/a/d/b.class */
public final class C15206b extends C10083d {
    public C15206b __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: a */
    public long m241a() {
        int __offset = __offset(6);
        return __offset != 0 ? this.f22804bb.getInt(__offset + this.bb_pos) & 4294967295L : 0L;
    }

    /* renamed from: b */
    public String m240b() {
        int __offset = __offset(4);
        return __offset != 0 ? __string(__offset + this.bb_pos) : null;
    }
}
