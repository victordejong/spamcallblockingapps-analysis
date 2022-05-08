package p081h.p119d.p120a.p124s.p131j.p133t;

import android.content.Context;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p125h.C5812b;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p131j.AbstractC5919m;
import p081h.p119d.p120a.p124s.p131j.C5902c;
/* renamed from: h.d.a.s.j.t.b */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/b.class */
public class C5936b implements AbstractC5940d<byte[]> {

    /* renamed from: a */
    public final String f14865a;

    /* renamed from: h.d.a.s.j.t.b$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/t/b$a.class */
    public static class C5937a implements AbstractC5919m<byte[], InputStream> {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public AbstractC5918l<byte[], InputStream> mo24128a(Context context, C5902c cVar) {
            return new C5936b();
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5919m
        /* renamed from: a */
        public void mo24129a() {
        }
    }

    public C5936b() {
        this("");
    }

    @Deprecated
    public C5936b(String str) {
        this.f14865a = str;
    }

    /* renamed from: a */
    public AbstractC5813c<InputStream> mo24060a(byte[] bArr, int i, int i2) {
        return new C5812b(bArr, this.f14865a);
    }
}
