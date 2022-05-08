package org.tensorflow.lite.nnapi;

import org.tensorflow.lite.TensorFlowLite;
import p646n.p649b.p650a.AbstractC15202b;
/* loaded from: classes3-dex2jar.jar:org/tensorflow/lite/nnapi/NnApiDelegate.class */
public class NnApiDelegate implements AbstractC15202b, AutoCloseable {

    /* renamed from: a */
    public long f33454a;

    /* renamed from: org.tensorflow.lite.nnapi.NnApiDelegate$a */
    /* loaded from: classes3-dex2jar.jar:org/tensorflow/lite/nnapi/NnApiDelegate$a.class */
    public static final class C15378a {

        /* renamed from: a */
        public int f33455a = -1;

        /* renamed from: b */
        public String f33456b = null;

        /* renamed from: c */
        public String f33457c = null;

        /* renamed from: d */
        public String f33458d = null;

        /* renamed from: e */
        public Integer f33459e = null;

        /* renamed from: f */
        public Boolean f33460f = null;

        /* renamed from: g */
        public Boolean f33461g = null;
    }

    public NnApiDelegate() {
        this(new C15378a());
    }

    public NnApiDelegate(C15378a aVar) {
        TensorFlowLite.m12a();
        boolean z = true;
        this.f33454a = createDelegate(aVar.f33455a, aVar.f33456b, aVar.f33457c, aVar.f33458d, aVar.f33459e != null ? aVar.f33459e.intValue() : -1, aVar.f33460f != null, (aVar.f33460f == null || aVar.f33460f.booleanValue()) ? false : z, aVar.f33461g != null ? aVar.f33461g.booleanValue() : false);
    }

    public static native long createDelegate(int i, String str, String str2, String str3, int i2, boolean z, boolean z2, boolean z3);

    public static native void deleteDelegate(long j);

    @Override // p646n.p649b.p650a.AbstractC15202b
    /* renamed from: a */
    public long mo8a() {
        return this.f33454a;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        long j = this.f33454a;
        if (j != 0) {
            deleteDelegate(j);
            this.f33454a = 0L;
        }
    }
}
