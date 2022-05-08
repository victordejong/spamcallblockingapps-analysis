package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import java.io.IOException;
import p459j.p460a.p474c0.p475c.p479z.C11683x;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12242z;
import p459j.p460a.p474c0.p499h.p500x0.C12227c;
/* renamed from: j.a.c0.c.z.j */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/j.class */
public class C11663j extends C11639a0 {

    /* renamed from: d */
    public final String f26176d;

    /* renamed from: e */
    public final boolean f26177e;

    public C11663j(Context context, C11664k kVar) {
        super(context, kVar);
        this.f26176d = kVar.f26178l;
        this.f26177e = kVar.f26179m;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: j */
    public Bitmap mo8639j() throws IOException {
        byte[] bArr;
        if (this.f26177e) {
            try {
                ExifInterface exifInterface = new ExifInterface(this.f26176d);
                bArr = null;
                if (exifInterface.hasThumbnail()) {
                    bArr = exifInterface.getThumbnail();
                }
            } catch (IOException e) {
                bArr = null;
            }
            if (bArr != null) {
                BitmapFactory.Options a = C11683x.m8636a(false, 0, 0);
                a.inJustDecodeBounds = true;
                BitmapFactory.decodeByteArray(bArr, 0, bArr.length, a);
                C12242z a2 = C12242z.m6564a();
                D d = this.f26182b;
                a.inSampleSize = a2.m6557a(a, d.f26184a, d.f26185b);
                a.inJustDecodeBounds = false;
                try {
                    this.f26183c = C12242z.m6555a(mo8641g());
                    if (C12227c.m6665g(this.f26183c).f27534d) {
                        this.f26182b.mo8643a(a.outHeight, a.outWidth);
                    } else {
                        this.f26182b.mo8643a(a.outWidth, a.outHeight);
                    }
                    C11683x.C11684a e2 = m8686e();
                    return e2 == null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length, a) : e2.m8626a(bArr, a, a.outWidth / a.inSampleSize, a.outHeight / a.inSampleSize);
                } catch (IOException e3) {
                    C12153d0.m6986b("MessagingAppImage", "FileImageRequest: failed to load thumbnail from Exif", e3);
                }
            }
        }
        return super.mo8639j();
    }
}
