package p081h.p119d.p120a.p124s.p125h;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
/* renamed from: h.d.a.s.h.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/d.class */
public class C5814d extends AbstractC5811a<ParcelFileDescriptor> {
    public C5814d(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5811a
    /* renamed from: a */
    public ParcelFileDescriptor mo24304a(AssetManager assetManager, String str) throws IOException {
        return assetManager.openFd(str).getParcelFileDescriptor();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo24302a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }
}
