package p081h.p203i.p402h.p407l.p408b;

import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import com.mopub.mobileads.MoPubView;
import p081h.p203i.p402h.C10530b;
/* renamed from: h.i.h.l.b.k */
/* loaded from: classes2-dex2jar.jar:h/i/h/l/b/k.class */
public class C10565k {

    /* renamed from: i */
    public static C10565k[] f24049i = {new C10565k(false, 3, 5, 8, 8, 1), new C10565k(false, 5, 7, 10, 10, 1), new C10565k(true, 5, 7, 16, 6, 1), new C10565k(false, 8, 10, 12, 12, 1), new C10565k(true, 10, 11, 14, 6, 2), new C10565k(false, 12, 12, 14, 14, 1), new C10565k(true, 16, 14, 24, 10, 1), new C10565k(false, 18, 14, 16, 16, 1), new C10565k(false, 22, 18, 18, 18, 1), new C10565k(true, 22, 18, 16, 10, 2), new C10565k(false, 30, 20, 20, 20, 1), new C10565k(true, 32, 24, 16, 14, 2), new C10565k(false, 36, 24, 22, 22, 1), new C10565k(false, 44, 28, 24, 24, 1), new C10565k(true, 49, 28, 22, 14, 2), new C10565k(false, 62, 36, 14, 14, 4), new C10565k(false, 86, 42, 16, 16, 4), new C10565k(false, 114, 48, 18, 18, 4), new C10565k(false, 144, 56, 20, 20, 4), new C10565k(false, MatroskaExtractor.ID_TRACK_ENTRY, 68, 22, 22, 4), new C10565k(false, 204, 84, 24, 24, 4, 102, 42), new C10565k(false, MoPubView.AbstractC3840b.HEIGHT_280_INT, 112, 14, 14, 16, 140, 56), new C10565k(false, 368, 144, 16, 16, 16, 92, 36), new C10565k(false, 456, PsExtractor.AUDIO_STREAM, 18, 18, 16, 114, 48), new C10565k(false, 576, 224, 20, 20, 16, 144, 56), new C10565k(false, 696, 272, 22, 22, 16, MatroskaExtractor.ID_TRACK_ENTRY, 68), new C10565k(false, 816, 336, 24, 24, 16, 136, 56), new C10565k(false, 1050, 408, 18, 18, 36, 175, 68), new C10565k(false, 1304, 496, 20, 20, 36, MatroskaExtractor.ID_SIMPLE_BLOCK, 62), new C10558d()};

    /* renamed from: a */
    public final boolean f24050a;

    /* renamed from: b */
    public final int f24051b;

    /* renamed from: c */
    public final int f24052c;

    /* renamed from: d */
    public final int f24053d;

    /* renamed from: e */
    public final int f24054e;

    /* renamed from: f */
    public final int f24055f;

    /* renamed from: g */
    public final int f24056g;

    /* renamed from: h */
    public final int f24057h;

    public C10565k(boolean z, int i, int i2, int i3, int i4, int i5) {
        this(z, i, i2, i3, i4, i5, i, i2);
    }

    public C10565k(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f24050a = z;
        this.f24051b = i;
        this.f24052c = i2;
        this.f24053d = i3;
        this.f24054e = i4;
        this.f24055f = i5;
        this.f24056g = i6;
        this.f24057h = i7;
    }

    /* renamed from: a */
    public static C10565k m11358a(int i, EnumC10566l lVar, C10530b bVar, C10530b bVar2, boolean z) {
        C10565k[] kVarArr;
        for (C10565k kVar : f24049i) {
            if ((lVar != EnumC10566l.FORCE_SQUARE || !kVar.f24050a) && ((lVar != EnumC10566l.FORCE_RECTANGLE || kVar.f24050a) && ((bVar == null || (kVar.m11350h() >= bVar.m11497b() && kVar.m11351g() >= bVar.m11498a())) && ((bVar2 == null || (kVar.m11350h() <= bVar2.m11497b() && kVar.m11351g() <= bVar2.m11498a())) && i <= kVar.f24051b)))) {
                return kVar;
            }
        }
        if (!z) {
            return null;
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i)));
    }

    /* renamed from: a */
    public final int m11360a() {
        return this.f24051b;
    }

    /* renamed from: a */
    public int mo11359a(int i) {
        return this.f24056g;
    }

    /* renamed from: b */
    public final int m11357b() {
        return this.f24052c;
    }

    /* renamed from: b */
    public final int m11356b(int i) {
        return this.f24057h;
    }

    /* renamed from: c */
    public final int m11355c() {
        int i = this.f24055f;
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 2;
                if (i != 4) {
                    if (i == 16) {
                        return 4;
                    }
                    if (i == 36) {
                        return 6;
                    }
                    throw new IllegalStateException("Cannot handle this number of data regions");
                }
            }
        }
        return i2;
    }

    /* renamed from: d */
    public int mo11354d() {
        return this.f24051b / this.f24056g;
    }

    /* renamed from: e */
    public final int m11353e() {
        return m11349i() * this.f24054e;
    }

    /* renamed from: f */
    public final int m11352f() {
        return m11355c() * this.f24053d;
    }

    /* renamed from: g */
    public final int m11351g() {
        return m11353e() + (m11349i() << 1);
    }

    /* renamed from: h */
    public final int m11350h() {
        return m11352f() + (m11355c() << 1);
    }

    /* renamed from: i */
    public final int m11349i() {
        int i = this.f24055f;
        if (i == 1 || i == 2) {
            return 1;
        }
        if (i == 4) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f24050a ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.f24053d);
        sb.append('x');
        sb.append(this.f24054e);
        sb.append(", symbol size ");
        sb.append(m11350h());
        sb.append('x');
        sb.append(m11351g());
        sb.append(", symbol data size ");
        sb.append(m11352f());
        sb.append('x');
        sb.append(m11353e());
        sb.append(", codewords ");
        sb.append(this.f24051b);
        sb.append('+');
        sb.append(this.f24052c);
        return sb.toString();
    }
}
