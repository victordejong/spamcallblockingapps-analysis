package p646n.p649b.p650a.p651d;

import java.nio.ByteBuffer;
import p081h.p203i.p383d.C10083d;
/* renamed from: n.b.a.d.d */
/* loaded from: classes3-dex2jar.jar:n/b/a/d/d.class */
public final class C15208d extends C10083d {
    public C15208d __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    /* renamed from: a */
    public int m228a() {
        int __offset = __offset(6);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    /* renamed from: a */
    public int m227a(int i) {
        int __offset = __offset(6);
        return __offset != 0 ? this.f22804bb.getInt(__vector(__offset) + (i * 4)) : 0;
    }

    /* renamed from: a */
    public C15209e m226a(C15209e eVar, int i) {
        int __offset = __offset(4);
        if (__offset != 0) {
            eVar.__assign(__indirect(__vector(__offset) + (i * 4)), this.f22804bb);
        } else {
            eVar = null;
        }
        return eVar;
    }

    /* renamed from: b */
    public int m225b() {
        int __offset = __offset(8);
        return __offset != 0 ? __vector_len(__offset) : 0;
    }

    /* renamed from: b */
    public int m224b(int i) {
        int __offset = __offset(8);
        return __offset != 0 ? this.f22804bb.getInt(__vector(__offset) + (i * 4)) : 0;
    }

    /* renamed from: c */
    public C15209e m223c(int i) {
        return m226a(new C15209e(), i);
    }
}
