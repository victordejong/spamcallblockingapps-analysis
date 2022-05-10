package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.w0.n0.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/e.class */
public interface AbstractC1598e {

    /* renamed from: a */
    public static final AbstractC1598e f6505a = new C1596c();

    /* renamed from: b.s.b.a.w0.n0.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/e$a.class */
    public static final class C1599a {

        /* renamed from: a */
        public final AbstractC1350g f6506a;

        /* renamed from: b */
        public final boolean f6507b;

        /* renamed from: c */
        public final boolean f6508c;

        public C1599a(AbstractC1350g gVar, boolean z, boolean z2) {
            this.f6506a = gVar;
            this.f6507b = z;
            this.f6508c = z2;
        }
    }

    /* renamed from: a */
    C1599a mo32702a(AbstractC1350g gVar, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, C1196z zVar, Map<String, List<String>> map, AbstractC1351h hVar) throws InterruptedException, IOException;
}
