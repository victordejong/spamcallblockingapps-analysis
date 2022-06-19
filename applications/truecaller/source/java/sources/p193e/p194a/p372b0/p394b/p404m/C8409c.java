package p193e.p194a.p372b0.p394b.p404m;

import android.graphics.Bitmap;
import java.io.IOException;
import p193e.p194a.p372b0.p394b.p395a.C8366c;
import s1.z.c.l;
import u3.c0;
import u3.j0;
import v3.g;
/* renamed from: e.a.b0.b.m.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/m/c.class */
public final class C8409c extends j0 {

    /* renamed from: b */
    public final Bitmap f26086b;

    /* renamed from: c */
    public final int f26087c;

    public C8409c(Bitmap bitmap, int i) {
        l.e(bitmap, "bitmap");
        this.f26086b = bitmap;
        this.f26087c = i;
    }

    /* renamed from: b */
    public c0 m28601b() {
        return C8366c.f25724b;
    }

    /* renamed from: c */
    public void m28600c(g gVar) throws IOException {
        l.e(gVar, "sink");
        this.f26086b.compress(Bitmap.CompressFormat.JPEG, this.f26087c, gVar.j2());
    }
}
