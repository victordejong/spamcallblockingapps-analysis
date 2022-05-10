package p012b.p076s.p078b.p079a.p102w0.p105n0;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.source.hls.HlsChunkSource;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.C1244l0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1558g;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n;
import p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1620e;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1700u;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.b.a.w0.n0.h */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/n0/h.class */
public final class C1602h implements AbstractC1631p, C1610n.AbstractC1611a, HlsPlaylistTracker.AbstractC0334b {

    /* renamed from: a */
    public final AbstractC1598e f6534a;

    /* renamed from: b */
    public final HlsPlaylistTracker f6535b;

    /* renamed from: c */
    public final AbstractC1597d f6536c;

    /* renamed from: d */
    public final AbstractC1704x f6537d;

    /* renamed from: e */
    public final AbstractC1700u f6538e;

    /* renamed from: f */
    public final AbstractC1533a0.C1534a f6539f;

    /* renamed from: g */
    public final AbstractC1678b f6540g;

    /* renamed from: j */
    public final AbstractC1558g f6543j;

    /* renamed from: k */
    public final boolean f6544k;

    /* renamed from: l */
    public final boolean f6545l;

    /* renamed from: m */
    public AbstractC1631p.AbstractC1632a f6546m;

    /* renamed from: n */
    public int f6547n;

    /* renamed from: o */
    public TrackGroupArray f6548o;

    /* renamed from: r */
    public AbstractC1573i0 f6551r;

    /* renamed from: s */
    public boolean f6552s;

    /* renamed from: h */
    public final IdentityHashMap<AbstractC1563h0, Integer> f6541h = new IdentityHashMap<>();

    /* renamed from: i */
    public final C1613o f6542i = new C1613o();

    /* renamed from: p */
    public C1610n[] f6549p = new C1610n[0];

    /* renamed from: q */
    public C1610n[] f6550q = new C1610n[0];

    public C1602h(AbstractC1598e eVar, HlsPlaylistTracker hlsPlaylistTracker, AbstractC1597d dVar, AbstractC1704x xVar, AbstractC1700u uVar, AbstractC1533a0.C1534a aVar, AbstractC1678b bVar, AbstractC1558g gVar, boolean z, boolean z2) {
        this.f6534a = eVar;
        this.f6535b = hlsPlaylistTracker;
        this.f6536c = dVar;
        this.f6537d = xVar;
        this.f6538e = uVar;
        this.f6539f = aVar;
        this.f6540g = bVar;
        this.f6543j = gVar;
        this.f6544k = z;
        this.f6545l = z2;
        this.f6551r = gVar.mo32755a(new AbstractC1573i0[0]);
        aVar.m32955a();
    }

    /* renamed from: a */
    public static Format m32688a(Format format) {
        String a = C1167d0.m34476a(format.f1559f, 2);
        return Format.m38174a(format.f1554a, format.f1555b, format.f1561h, C1178m.m34406d(a), a, format.f1558e, format.f1567n, format.f1568o, format.f1569p, (List<byte[]>) null, format.f1556c, format.f1557d);
    }

    /* renamed from: a */
    public static Format m32687a(Format format, Format format2, boolean z) {
        String str;
        int i;
        int i2;
        int i3;
        String str2;
        String str3;
        if (format2 != null) {
            str2 = format2.f1559f;
            i3 = format2.f1575v;
            i2 = format2.f1556c;
            i = format2.f1557d;
            str = format2.f1551A;
            str3 = format2.f1555b;
        } else {
            str2 = C1167d0.m34476a(format.f1559f, 1);
            if (z) {
                i3 = format.f1575v;
                i2 = format.f1556c;
                i = format.f1557d;
                str = format.f1551A;
                str3 = format.f1555b;
            } else {
                str3 = null;
                str = null;
                i3 = -1;
                i2 = 0;
                i = 0;
            }
        }
        return Format.m38171a(format.f1554a, str3, format.f1561h, C1178m.m34406d(str2), str2, z ? format.f1558e : -1, i3, -1, (List<byte[]>) null, i2, i, str);
    }

    /* renamed from: a */
    public static Map<String, DrmInitData> m32683a(List<DrmInitData> list) {
        ArrayList arrayList = new ArrayList(list);
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < arrayList.size()) {
            DrmInitData drmInitData = list.get(i);
            String str = drmInitData.f1664c;
            i++;
            int i2 = i;
            while (i2 < arrayList.size()) {
                DrmInitData drmInitData2 = (DrmInitData) arrayList.get(i2);
                if (TextUtils.equals(drmInitData2.f1664c, str)) {
                    drmInitData = drmInitData.m38099a(drmInitData2);
                    arrayList.remove(i2);
                } else {
                    i2++;
                }
            }
            hashMap.put(str, drmInitData);
        }
        return hashMap;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public long mo32521a() {
        return this.f6551r.mo32521a();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public long mo32519a(long j, C1244l0 l0Var) {
        return j;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public long mo32516a(AbstractC1668i[] iVarArr, boolean[] zArr, AbstractC1563h0[] h0VarArr, boolean[] zArr2, long j) {
        int[] iArr = new int[iVarArr.length];
        int[] iArr2 = new int[iVarArr.length];
        for (int i = 0; i < iVarArr.length; i++) {
            iArr[i] = h0VarArr[i] == null ? -1 : this.f6541h.get(h0VarArr[i]).intValue();
            iArr2[i] = -1;
            if (iVarArr[i] != null) {
                TrackGroup a = iVarArr[i].mo32425a();
                int i2 = 0;
                while (true) {
                    C1610n[] nVarArr = this.f6549p;
                    if (i2 >= nVarArr.length) {
                        break;
                    } else if (nVarArr[i2].m32637g().m37989a(a) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
        this.f6541h.clear();
        int length = iVarArr.length;
        AbstractC1563h0[] h0VarArr2 = new AbstractC1563h0[length];
        AbstractC1563h0[] h0VarArr3 = new AbstractC1563h0[iVarArr.length];
        AbstractC1668i[] iVarArr2 = new AbstractC1668i[iVarArr.length];
        C1610n[] nVarArr2 = new C1610n[this.f6549p.length];
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        while (i4 < this.f6549p.length) {
            for (int i5 = 0; i5 < iVarArr.length; i5++) {
                AbstractC1668i iVar = null;
                h0VarArr3[i5] = iArr[i5] == i4 ? h0VarArr[i5] : null;
                if (iArr2[i5] == i4) {
                    iVar = iVarArr[i5];
                }
                iVarArr2[i5] = iVar;
            }
            C1610n nVar = this.f6549p[i4];
            boolean a2 = nVar.m32648a(iVarArr2, zArr, h0VarArr3, zArr2, j, z);
            int i6 = 0;
            boolean z2 = false;
            while (true) {
                boolean z3 = true;
                if (i6 >= iVarArr.length) {
                    break;
                }
                if (iArr2[i6] == i4) {
                    C1160a.m34518b(h0VarArr3[i6] != null);
                    h0VarArr2[i6] = h0VarArr3[i6];
                    this.f6541h.put(h0VarArr3[i6], Integer.valueOf(i4));
                    z2 = true;
                } else {
                    z2 = z2;
                    if (iArr[i6] == i4) {
                        if (h0VarArr3[i6] != null) {
                            z3 = false;
                        }
                        C1160a.m34518b(z3);
                        z2 = z2;
                    }
                }
                i6++;
            }
            if (z2) {
                nVarArr2[i3] = nVar;
                int i7 = i3 + 1;
                if (i3 == 0) {
                    nVar.m32650a(true);
                    if (!a2) {
                        C1610n[] nVarArr3 = this.f6550q;
                        if (nVarArr3.length != 0) {
                            i3 = i7;
                            if (nVar == nVarArr3[0]) {
                            }
                        }
                    }
                    this.f6542i.m32621a();
                    z = true;
                    i3 = i7;
                } else {
                    nVar.m32650a(false);
                    i3 = i7;
                }
            }
            i4++;
        }
        System.arraycopy(h0VarArr2, 0, h0VarArr, 0, length);
        C1610n[] nVarArr4 = (C1610n[]) Arrays.copyOf(nVarArr2, i3);
        this.f6550q = nVarArr4;
        this.f6551r = this.f6543j.mo32755a(nVarArr4);
        return j;
    }

    /* renamed from: a */
    public final C1610n m32691a(int i, Uri[] uriArr, Format[] formatArr, Format format, List<Format> list, Map<String, DrmInitData> map, long j) {
        return new C1610n(i, this, new HlsChunkSource(this.f6534a, this.f6535b, uriArr, formatArr, this.f6536c, this.f6537d, this.f6542i, list), map, this.f6540g, j, format, this.f6538e, this.f6539f);
    }

    /* renamed from: a */
    public final void m32690a(long j, List<C1620e.C1621a> list, List<C1610n> list2, List<int[]> list3, Map<String, DrmInitData> map) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        ArrayList arrayList3 = new ArrayList(list.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i).f6676c;
            if (hashSet.add(str)) {
                arrayList.clear();
                arrayList2.clear();
                arrayList3.clear();
                boolean z = true;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    z = z;
                    if (C1167d0.m34478a((Object) str, (Object) list.get(i2).f6676c)) {
                        C1620e.C1621a aVar = list.get(i2);
                        arrayList3.add(Integer.valueOf(i2));
                        arrayList.add(aVar.f6674a);
                        arrayList2.add(aVar.f6675b);
                        z &= aVar.f6675b.f1559f != null;
                    }
                }
                C1610n a = m32691a(1, (Uri[]) arrayList.toArray(new Uri[0]), (Format[]) arrayList2.toArray(new Format[0]), null, Collections.emptyList(), map, j);
                list3.add(C1167d0.m34472a((List<Integer>) arrayList3));
                list2.add(a);
                if (this.f6544k && z) {
                    a.m32657a(new TrackGroupArray(new TrackGroup((Format[]) arrayList2.toArray(new Format[0]))), 0, TrackGroupArray.f1858d);
                }
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public void mo32518a(long j, boolean z) {
        for (C1610n nVar : this.f6550q) {
            nVar.m32662a(j, z);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n.AbstractC1611a
    /* renamed from: a */
    public void mo32624a(Uri uri) {
        this.f6535b.mo32589c(uri);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32686a(C1610n nVar) {
        this.f6546m.mo32686a((AbstractC1631p.AbstractC1632a) this);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32684a(p012b.p076s.p078b.p079a.p102w0.p105n0.p106q.C1620e r12, long r13, java.util.List<p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n> r15, java.util.List<int[]> r16, java.util.Map<java.lang.String, androidx.media2.exoplayer.external.drm.DrmInitData> r17) {
        /*
            Method dump skipped, instructions count: 784
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.p105n0.C1602h.m32684a(b.s.b.a.w0.n0.q.e, long, java.util.List, java.util.List, java.util.Map):void");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public void mo32517a(AbstractC1631p.AbstractC1632a aVar, long j) {
        this.f6546m = aVar;
        this.f6535b.mo32605a(this);
        m32681d(j);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public boolean mo32520a(long j) {
        if (this.f6548o != null) {
            return this.f6551r.mo32520a(j);
        }
        for (C1610n nVar : this.f6549p) {
            nVar.m32633k();
        }
        return false;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.AbstractC0334b
    /* renamed from: a */
    public boolean mo32689a(Uri uri, long j) {
        boolean z = true;
        for (C1610n nVar : this.f6549p) {
            z &= nVar.m32661a(uri, j);
        }
        this.f6546m.mo32686a((AbstractC1631p.AbstractC1632a) this);
        return z;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public long mo32515b() {
        return this.f6551r.mo32515b();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public void mo32514b(long j) {
        this.f6551r.mo32514b(j);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: c */
    public long mo32513c(long j) {
        C1610n[] nVarArr = this.f6550q;
        if (nVarArr.length > 0) {
            boolean b = nVarArr[0].m32645b(j, false);
            int i = 1;
            while (true) {
                C1610n[] nVarArr2 = this.f6550q;
                if (i >= nVarArr2.length) {
                    break;
                }
                nVarArr2[i].m32645b(j, b);
                i++;
            }
            if (b) {
                this.f6542i.m32621a();
            }
        }
        return j;
    }

    @Override // androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker.AbstractC0334b
    /* renamed from: c */
    public void mo32682c() {
        this.f6546m.mo32686a((AbstractC1631p.AbstractC1632a) this);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: d */
    public void mo32512d() throws IOException {
        for (C1610n nVar : this.f6549p) {
            nVar.m32642d();
        }
    }

    /* renamed from: d */
    public final void m32681d(long j) {
        C1620e c = this.f6535b.mo32590c();
        C1160a.m34522a(c);
        C1620e eVar = c;
        Map<String, DrmInitData> a = this.f6545l ? m32683a(eVar.f6673k) : Collections.emptyMap();
        boolean isEmpty = eVar.f6667e.isEmpty();
        List<C1620e.C1621a> list = eVar.f6668f;
        List<C1620e.C1621a> list2 = eVar.f6669g;
        this.f6547n = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!isEmpty) {
            m32684a(eVar, j, arrayList, arrayList2, a);
        }
        m32690a(j, list, arrayList, arrayList2, a);
        for (int i = 0; i < list2.size(); i++) {
            C1620e.C1621a aVar = list2.get(i);
            C1610n a2 = m32691a(3, new Uri[]{aVar.f6674a}, new Format[]{aVar.f6675b}, null, Collections.emptyList(), a, j);
            arrayList2.add(new int[]{i});
            arrayList.add(a2);
            a2.m32657a(new TrackGroupArray(new TrackGroup(aVar.f6675b)), 0, TrackGroupArray.f1858d);
        }
        this.f6549p = (C1610n[]) arrayList.toArray(new C1610n[0]);
        int[][] iArr = (int[][]) arrayList2.toArray(new int[0]);
        C1610n[] nVarArr = this.f6549p;
        this.f6547n = nVarArr.length;
        nVarArr[0].m32650a(true);
        for (C1610n nVar : this.f6549p) {
            nVar.m32633k();
        }
        this.f6550q = this.f6549p;
    }

    /* renamed from: e */
    public void m32680e() {
        this.f6535b.mo32593b(this);
        for (C1610n nVar : this.f6549p) {
            nVar.m32626r();
        }
        this.f6546m = null;
        this.f6539f.m32935b();
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: f */
    public long mo32511f() {
        if (this.f6552s) {
            return -9223372036854775807L;
        }
        this.f6539f.m32929c();
        this.f6552s = true;
        return -9223372036854775807L;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: g */
    public TrackGroupArray mo32510g() {
        return this.f6548o;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.p105n0.C1610n.AbstractC1611a
    public void onPrepared() {
        C1610n[] nVarArr;
        int i = this.f6547n - 1;
        this.f6547n = i;
        if (i <= 0) {
            int i2 = 0;
            for (C1610n nVar : this.f6549p) {
                i2 += nVar.m32637g().f1859a;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i2];
            int i3 = 0;
            for (C1610n nVar2 : this.f6549p) {
                int i4 = nVar2.m32637g().f1859a;
                int i5 = 0;
                while (i5 < i4) {
                    trackGroupArr[i3] = nVar2.m32637g().m37990a(i5);
                    i5++;
                    i3++;
                }
            }
            this.f6548o = new TrackGroupArray(trackGroupArr);
            this.f6546m.mo32509a((AbstractC1631p) this);
        }
    }
}
