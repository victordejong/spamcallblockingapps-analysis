package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.graphics.Bitmap;
import android.provider.MediaStore;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.AbstractC12165g0;
import p459j.p460a.p474c0.p499h.C12162f0;
/* renamed from: j.a.c0.c.z.g0 */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/g0.class */
public class C11658g0 extends AbstractC11666m<C11641b0> {
    public C11658g0(Context context, C11641b0 b0Var) {
        super(context, b0Var);
    }

    /* renamed from: k */
    public static boolean m8693k() {
        return AbstractC12165g0.m6945a();
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: d */
    public Bitmap mo8687d() throws IOException {
        Bitmap bitmap;
        Long c = ((C11641b0) this.f26182b).m8728c();
        if (c != null) {
            bitmap = MediaStore.Video.Thumbnails.getThumbnail(AbstractC11516a.m9413n().mo9412a().getContentResolver(), c.longValue(), 3, null);
        } else {
            C12162f0 f0Var = new C12162f0();
            try {
                f0Var.m6949a(((C11641b0) this.f26182b).f26138i);
                bitmap = f0Var.m6953a();
            } finally {
                f0Var.m6948b();
            }
        }
        if (bitmap != null) {
            ((C11641b0) this.f26182b).mo8643a(bitmap.getWidth(), bitmap.getHeight());
        }
        return bitmap;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: g */
    public InputStream mo8641g() throws FileNotFoundException {
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: h */
    public boolean mo8685h() {
        return true;
    }
}
