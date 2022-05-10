package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1163b0;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1587a;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1588b;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1589c;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1590d;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1591e;
import p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1597d;
import p012b.p076s.p078b.p079a.p102w0.p105n0.AbstractC1598e;
import p012b.p076s.p078b.p079a.p102w0.p105n0.C1601g;
import p012b.p076s.p078b.p079a.p102w0.p105n0.C1613o;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1658b;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource.class */
public class HlsChunkSource {

    /* renamed from: a */
    public final AbstractC1598e f1862a;

    /* renamed from: b */
    public final AbstractC1684g f1863b;

    /* renamed from: c */
    public final AbstractC1684g f1864c;

    /* renamed from: d */
    public final C1613o f1865d;

    /* renamed from: e */
    public final Uri[] f1866e;

    /* renamed from: f */
    public final Format[] f1867f;

    /* renamed from: g */
    public final HlsPlaylistTracker f1868g;

    /* renamed from: h */
    public final TrackGroup f1869h;

    /* renamed from: i */
    public final List<Format> f1870i;

    /* renamed from: k */
    public boolean f1872k;

    /* renamed from: l */
    public byte[] f1873l;

    /* renamed from: m */
    public IOException f1874m;

    /* renamed from: n */
    public Uri f1875n;

    /* renamed from: o */
    public boolean f1876o;

    /* renamed from: p */
    public AbstractC1668i f1877p;

    /* renamed from: r */
    public boolean f1879r;

    /* renamed from: j */
    public final FullSegmentEncryptionKeyCache f1871j = new FullSegmentEncryptionKeyCache();

    /* renamed from: q */
    public long f1878q = -9223372036854775807L;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache.class */
    public static final class FullSegmentEncryptionKeyCache extends LinkedHashMap<Uri, byte[]> {
        public FullSegmentEncryptionKeyCache() {
            super(8, 1.0f, false);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }

        public byte[] put(Uri uri, byte[] bArr) {
            C1160a.m34522a(bArr);
            return (byte[]) super.put((FullSegmentEncryptionKeyCache) uri, (Uri) bArr);
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsChunkSource$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$a.class */
    public static final class C0327a extends AbstractC1589c {

        /* renamed from: k */
        public byte[] f1880k;

        public C0327a(AbstractC1684g gVar, C1687i iVar, Format format, int i, Object obj, byte[] bArr) {
            super(gVar, iVar, 3, format, i, obj, bArr);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1589c
        /* renamed from: a */
        public void mo32722a(byte[] bArr, int i) {
            this.f1880k = Arrays.copyOf(bArr, i);
        }

        /* renamed from: h */
        public byte[] m37972h() {
            return this.f1880k;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsChunkSource$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$b.class */
    public static final class C0328b {

        /* renamed from: a */
        public AbstractC1588b f1881a;

        /* renamed from: b */
        public boolean f1882b;

        /* renamed from: c */
        public Uri f1883c;

        public C0328b() {
            m37971a();
        }

        /* renamed from: a */
        public void m37971a() {
            this.f1881a = null;
            this.f1882b = false;
            this.f1883c = null;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsChunkSource$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$c.class */
    public static final class C0329c extends AbstractC1587a {
        public C0329c(C1623f fVar, long j, int i) {
            super(i, fVar.f6694o.size() - 1);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsChunkSource$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$d.class */
    public static final class C0330d extends AbstractC1658b {

        /* renamed from: g */
        public int f1884g;

        public C0330d(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.f1884g = m32441a(trackGroup.m37992a(0));
        }

        @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1658b, p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
        /* renamed from: a */
        public void mo32420a(long j, long j2, long j3, List<? extends AbstractC1590d> list, AbstractC1591e[] eVarArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (m32440b(this.f1884g, elapsedRealtime)) {
                for (int i = this.f6833b - 1; i >= 0; i--) {
                    if (!m32440b(i, elapsedRealtime)) {
                        this.f1884g = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
        /* renamed from: b */
        public int mo32419b() {
            return this.f1884g;
        }

        @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
        /* renamed from: h */
        public int mo32411h() {
            return 0;
        }

        @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
        /* renamed from: i */
        public Object mo32410i() {
            return null;
        }
    }

    public HlsChunkSource(AbstractC1598e eVar, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, AbstractC1597d dVar, AbstractC1704x xVar, C1613o oVar, List<Format> list) {
        this.f1862a = eVar;
        this.f1868g = hlsPlaylistTracker;
        this.f1866e = uriArr;
        this.f1867f = formatArr;
        this.f1865d = oVar;
        this.f1870i = list;
        AbstractC1684g a = dVar.mo32703a(1);
        this.f1863b = a;
        if (xVar != null) {
            a.mo32326a(xVar);
        }
        this.f1864c = dVar.mo32703a(3);
        this.f1869h = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i = 0; i < uriArr.length; i++) {
            iArr[i] = i;
        }
        this.f1877p = new C0330d(this.f1869h, iArr);
    }

    /* renamed from: a */
    public static Uri m37978a(C1623f fVar, C1623f.C1624a aVar) {
        String str;
        if (aVar == null || (str = aVar.f6702g) == null) {
            return null;
        }
        return C1163b0.m34509b(fVar.f6707a, str);
    }

    /* renamed from: a */
    public final long m37987a(long j) {
        long j2 = -9223372036854775807L;
        if (this.f1878q != -9223372036854775807L) {
            j2 = this.f1878q - j;
        }
        return j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m37980a(p012b.p076s.p078b.p079a.p102w0.p105n0.C1601g r8, boolean r9, p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1623f r10, long r11, long r13) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0010
            r0 = r9
            if (r0 == 0) goto L_0x000b
            goto L_0x0010
        L_0x000b:
            r0 = r8
            long r0 = r0.m32720g()
            return r0
        L_0x0010:
            r0 = r10
            long r0 = r0.f6695p
            r15 = r0
            r0 = r13
            r17 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0032
            r0 = r7
            boolean r0 = r0.f1876o
            if (r0 == 0) goto L_0x002c
            r0 = r13
            r17 = r0
            goto L_0x0032
        L_0x002c:
            r0 = r8
            long r0 = r0.f6490f
            r17 = r0
        L_0x0032:
            r0 = r10
            boolean r0 = r0.f6691l
            if (r0 != 0) goto L_0x005c
            r0 = r17
            r1 = r15
            r2 = r11
            long r1 = r1 + r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x005c
            r0 = r10
            long r0 = r0.f6688i
            r13 = r0
            r0 = r10
            java.util.List<b.s.b.a.w0.n0.q.f$a> r0 = r0.f6694o
            int r0 = r0.size()
            long r0 = (long) r0
            r11 = r0
        L_0x0056:
            r0 = r13
            r1 = r11
            long r0 = r0 + r1
            return r0
        L_0x005c:
            r0 = r10
            java.util.List<b.s.b.a.w0.n0.q.f$a> r0 = r0.f6694o
            r19 = r0
            r0 = r7
            androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker r0 = r0.f1868g
            boolean r0 = r0.mo32595b()
            if (r0 == 0) goto L_0x007a
            r0 = r8
            if (r0 != 0) goto L_0x0075
            goto L_0x007a
        L_0x0075:
            r0 = 0
            r9 = r0
            goto L_0x007c
        L_0x007a:
            r0 = 1
            r9 = r0
        L_0x007c:
            r0 = r19
            r1 = r17
            r2 = r11
            long r1 = r1 - r2
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r2 = 1
            r3 = r9
            int r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34470a(r0, r1, r2, r3)
            long r0 = (long) r0
            r13 = r0
            r0 = r10
            long r0 = r0.f6688i
            r11 = r0
            goto L_0x0056
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsChunkSource.m37980a(b.s.b.a.w0.n0.g, boolean, b.s.b.a.w0.n0.q.f, long, long):long");
    }

    /* renamed from: a */
    public TrackGroup m37988a() {
        return this.f1869h;
    }

    /* renamed from: a */
    public final AbstractC1588b m37985a(Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        if (this.f1871j.containsKey(uri)) {
            FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache = this.f1871j;
            fullSegmentEncryptionKeyCache.put(uri, fullSegmentEncryptionKeyCache.remove(uri));
            return null;
        }
        return new C0327a(this.f1864c, new C1687i(uri, 0L, -1L, null, 1), this.f1867f[i], this.f1877p.mo32411h(), this.f1877p.mo32410i(), this.f1873l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0100  */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0, types: [androidx.media2.exoplayer.external.source.hls.HlsChunkSource] */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r28v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m37986a(long r20, long r22, java.util.List<p012b.p076s.p078b.p079a.p102w0.p105n0.C1601g> r24, androidx.media2.exoplayer.external.source.hls.HlsChunkSource.C0328b r25) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsChunkSource.m37986a(long, long, java.util.List, androidx.media2.exoplayer.external.source.hls.HlsChunkSource$b):void");
    }

    /* renamed from: a */
    public void m37983a(AbstractC1588b bVar) {
        if (bVar instanceof C0327a) {
            C0327a aVar = (C0327a) bVar;
            this.f1873l = aVar.m32721g();
            this.f1871j.put(aVar.f6485a.f6883a, aVar.m37972h());
        }
    }

    /* renamed from: a */
    public final void m37979a(C1623f fVar) {
        this.f1878q = fVar.f6691l ? -9223372036854775807L : fVar.m32549b() - this.f1868g.mo32611a();
    }

    /* renamed from: a */
    public void m37977a(AbstractC1668i iVar) {
        this.f1877p = iVar;
    }

    /* renamed from: a */
    public void m37976a(boolean z) {
        this.f1872k = z;
    }

    /* renamed from: a */
    public boolean m37984a(Uri uri, long j) {
        int c;
        boolean z = false;
        int i = 0;
        while (true) {
            Uri[] uriArr = this.f1866e;
            if (i >= uriArr.length) {
                i = -1;
                break;
            } else if (uriArr[i].equals(uri)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1 || (c = this.f1877p.mo32416c(i)) == -1) {
            return true;
        }
        this.f1879r = uri.equals(this.f1875n) | this.f1879r;
        if (j == -9223372036854775807L || this.f1877p.mo32422a(c, j)) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m37982a(AbstractC1588b bVar, long j) {
        AbstractC1668i iVar = this.f1877p;
        return iVar.mo32422a(iVar.mo32416c(this.f1869h.m37991a(bVar.f6487c)), j);
    }

    /* renamed from: a */
    public AbstractC1591e[] m37981a(C1601g gVar, long j) {
        int a = gVar == null ? -1 : this.f1869h.m37991a(gVar.f6487c);
        int length = this.f1877p.length();
        AbstractC1591e[] eVarArr = new AbstractC1591e[length];
        for (int i = 0; i < length; i++) {
            int b = this.f1877p.mo32418b(i);
            Uri uri = this.f1866e[b];
            if (!this.f1868g.mo32610a(uri)) {
                eVarArr[i] = AbstractC1591e.f6496a;
            } else {
                C1623f a2 = this.f1868g.mo32606a(uri, false);
                long a3 = a2.f6685f - this.f1868g.mo32611a();
                long a4 = m37980a(gVar, b != a, a2, a3, j);
                long j2 = a2.f6688i;
                if (a4 < j2) {
                    eVarArr[i] = AbstractC1591e.f6496a;
                } else {
                    eVarArr[i] = new C0329c(a2, a3, (int) (a4 - j2));
                }
            }
        }
        return eVarArr;
    }

    /* renamed from: b */
    public AbstractC1668i m37975b() {
        return this.f1877p;
    }

    /* renamed from: c */
    public void m37974c() throws IOException {
        IOException iOException = this.f1874m;
        if (iOException == null) {
            Uri uri = this.f1875n;
            if (uri != null && this.f1879r) {
                this.f1868g.mo32594b(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: d */
    public void m37973d() {
        this.f1874m = null;
    }
}
