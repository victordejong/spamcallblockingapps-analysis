package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.EOFException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.p090u.C1388e;
import p012b.p076s.p078b.p079a.p086s0.p091v.C1407f;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1446b;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1453e;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1458g0;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1461h;
import p012b.p076s.p078b.p079a.p086s0.p093x.C1469j;
import p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1598e;
/* renamed from: b.s.b.a.w0.n0.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/c.class */
public final class C1596c implements AbstractC1598e {

    /* renamed from: b */
    public final int f6503b;

    /* renamed from: c */
    public final boolean f6504c;

    public C1596c() {
        this(0, true);
    }

    public C1596c(int i, boolean z) {
        this.f6503b = i;
        this.f6504c = z;
    }

    /* renamed from: a */
    public static C1407f m32708a(C1196z zVar, DrmInitData drmInitData, List<Format> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        return new C1407f(0, zVar, null, drmInitData, list);
    }

    /* renamed from: a */
    public static C1458g0 m32710a(int i, boolean z, Format format, List<Format> list, C1196z zVar) {
        int i2 = i | 16;
        if (list != null) {
            i2 |= 32;
        } else {
            list = z ? Collections.singletonList(Format.m38187a(null, "application/cea-608", 0, null)) : Collections.emptyList();
        }
        String str = format.f1559f;
        int i3 = i2;
        if (!TextUtils.isEmpty(str)) {
            int i4 = i2;
            if (!"audio/mp4a-latm".equals(C1178m.m34409a(str))) {
                i4 = i2 | 2;
            }
            i3 = i4;
            if (!"video/avc".equals(C1178m.m34401i(str))) {
                i3 = i4 | 4;
            }
        }
        return new C1458g0(2, zVar, new C1469j(i3, list));
    }

    /* renamed from: a */
    public static AbstractC1598e.C1599a m32707a(AbstractC1350g gVar) {
        return new AbstractC1598e.C1599a(gVar, (gVar instanceof C1461h) || (gVar instanceof C1446b) || (gVar instanceof C1453e) || (gVar instanceof C1388e), m32704b(gVar));
    }

    /* renamed from: a */
    public static AbstractC1598e.C1599a m32706a(AbstractC1350g gVar, Format format, C1196z zVar) {
        if (gVar instanceof C1614p) {
            return m32707a(new C1614p(format.f1551A, zVar));
        }
        if (gVar instanceof C1461h) {
            return m32707a(new C1461h());
        }
        if (gVar instanceof C1446b) {
            return m32707a(new C1446b());
        }
        if (gVar instanceof C1453e) {
            return m32707a(new C1453e());
        }
        if (gVar instanceof C1388e) {
            return m32707a(new C1388e());
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static boolean m32705a(AbstractC1350g gVar, AbstractC1351h hVar) throws InterruptedException, IOException {
        boolean z;
        try {
            z = gVar.mo32616a(hVar);
            hVar.mo33614c();
        } catch (EOFException e) {
            hVar.mo33614c();
            z = false;
        } catch (Throwable th) {
            hVar.mo33614c();
            throw th;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m32704b(AbstractC1350g gVar) {
        return (gVar instanceof C1458g0) || (gVar instanceof C1407f);
    }

    /* renamed from: a */
    public final AbstractC1350g m32709a(Uri uri, Format format, List<Format> list, DrmInitData drmInitData, C1196z zVar) {
        String lastPathSegment = uri.getLastPathSegment();
        String str = lastPathSegment;
        if (lastPathSegment == null) {
            str = "";
        }
        return ("text/vtt".equals(format.f1562i) || str.endsWith(".webvtt") || str.endsWith(".vtt")) ? new C1614p(format.f1551A, zVar) : str.endsWith(".aac") ? new C1461h() : (str.endsWith(".ac3") || str.endsWith(".ec3")) ? new C1446b() : str.endsWith(".ac4") ? new C1453e() : str.endsWith(".mp3") ? new C1388e(0, 0L) : (str.endsWith(".mp4") || str.startsWith(".m4", str.length() - 4) || str.startsWith(".mp4", str.length() - 5) || str.startsWith(".cmf", str.length() - 5)) ? m32708a(zVar, drmInitData, list) : m32710a(this.f6503b, this.f6504c, format, list, zVar);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1598e
    /* renamed from: a */
    public AbstractC1598e.C1599a mo32702a(AbstractC1350g gVar, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, C1196z zVar, Map<String, List<String>> map, AbstractC1351h hVar) throws InterruptedException, IOException {
        if (gVar != null) {
            if (m32704b(gVar)) {
                return m32707a(gVar);
            }
            if (m32706a(gVar, format, zVar) == null) {
                String valueOf = String.valueOf(gVar.getClass().getSimpleName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unexpected previousExtractor type: ".concat(valueOf) : new String("Unexpected previousExtractor type: "));
            }
        }
        AbstractC1350g a = m32709a(uri, format, list, drmInitData, zVar);
        hVar.mo33614c();
        if (m32705a(a, hVar)) {
            return m32707a(a);
        }
        if (!(a instanceof C1614p)) {
            C1614p pVar = new C1614p(format.f1551A, zVar);
            if (m32705a(pVar, hVar)) {
                return m32707a(pVar);
            }
        }
        if (!(a instanceof C1461h)) {
            C1461h hVar2 = new C1461h();
            if (m32705a(hVar2, hVar)) {
                return m32707a(hVar2);
            }
        }
        if (!(a instanceof C1446b)) {
            C1446b bVar = new C1446b();
            if (m32705a(bVar, hVar)) {
                return m32707a(bVar);
            }
        }
        if (!(a instanceof C1453e)) {
            C1453e eVar = new C1453e();
            if (m32705a(eVar, hVar)) {
                return m32707a(eVar);
            }
        }
        if (!(a instanceof C1388e)) {
            C1388e eVar2 = new C1388e(0, 0L);
            if (m32705a(eVar2, hVar)) {
                return m32707a(eVar2);
            }
        }
        if (!(a instanceof C1407f)) {
            C1407f a2 = m32708a(zVar, drmInitData, list);
            if (m32705a(a2, hVar)) {
                return m32707a(a2);
            }
        }
        if (!(a instanceof C1458g0)) {
            C1458g0 a3 = m32710a(this.f6503b, this.f6504c, format, list, zVar);
            if (m32705a(a3, hVar)) {
                return m32707a(a3);
            }
        }
        return m32707a(a);
    }
}
