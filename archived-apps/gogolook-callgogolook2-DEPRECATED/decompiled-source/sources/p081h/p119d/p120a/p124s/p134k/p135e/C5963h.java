package p081h.p119d.p120a.p124s.p134k.p135e;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
/* renamed from: h.d.a.s.k.e.h */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/h.class */
public class C5963h implements AbstractC5808e<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a */
    public final C5975r f14883a;

    /* renamed from: b */
    public final AbstractC5856c f14884b;

    /* renamed from: c */
    public EnumC5804a f14885c;

    public C5963h(AbstractC5856c cVar, EnumC5804a aVar) {
        this(new C5975r(), cVar, aVar);
    }

    public C5963h(C5975r rVar, AbstractC5856c cVar, EnumC5804a aVar) {
        this.f14883a = rVar;
        this.f14884b = cVar;
        this.f14885c = aVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5848l<Bitmap> mo24025a(ParcelFileDescriptor parcelFileDescriptor, int i, int i2) throws IOException {
        return C5955c.m24121a(this.f14883a.m24090a(parcelFileDescriptor, this.f14884b, i, i2, this.f14885c), this.f14884b);
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        return "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap";
    }
}
