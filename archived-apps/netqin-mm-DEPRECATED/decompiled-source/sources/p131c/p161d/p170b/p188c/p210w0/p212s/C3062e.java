package p131c.p161d.p170b.p188c.p210w0.p212s;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p204h1.C2918h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.w0.s.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/s/e.class */
public final class C3062e extends TagPayloadReader {

    /* renamed from: b */
    public final C2904v f11044b = new C2904v(C2899s.f10506a);

    /* renamed from: c */
    public final C2904v f11045c = new C2904v(4);

    /* renamed from: d */
    public int f11046d;

    /* renamed from: e */
    public boolean f11047e;

    /* renamed from: f */
    public boolean f11048f;

    /* renamed from: g */
    public int f11049g;

    public C3062e(AbstractC3054q qVar) {
        super(qVar);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    public boolean mo18610a(C2904v vVar) throws TagPayloadReader.UnsupportedFormatException {
        int r = vVar.m28524r();
        int i = (r >> 4) & 15;
        int i2 = r & 15;
        if (i2 == 7) {
            this.f11049g = i;
            return i != 5;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i2);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public boolean mo18608b(C2904v vVar, long j) throws ParserException {
        int r = vVar.m28524r();
        long h = vVar.m28534h();
        if (r == 0 && !this.f11047e) {
            C2904v vVar2 = new C2904v(new byte[vVar.m28552a()]);
            vVar.m28546a(vVar2.f10530a, 0, vVar.m28552a());
            C2918h b = C2918h.m28497b(vVar2);
            this.f11046d = b.f10565b;
            this.f22051a.mo28034a(Format.m18702a((String) null, "video/avc", (String) null, -1, -1, b.f10566c, b.f10567d, -1.0f, b.f10564a, -1, b.f10568e, (DrmInitData) null));
            this.f11047e = true;
            return false;
        } else if (r != 1 || !this.f11047e) {
            return false;
        } else {
            int i = this.f11049g == 1 ? 1 : 0;
            if (!this.f11048f && i == 0) {
                return false;
            }
            byte[] bArr = this.f11045c.f10530a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i2 = this.f11046d;
            int i3 = 0;
            while (vVar.m28552a() > 0) {
                vVar.m28546a(this.f11045c.f10530a, 4 - i2, this.f11046d);
                this.f11045c.m28538e(0);
                int v = this.f11045c.m28520v();
                this.f11044b.m28538e(0);
                this.f22051a.mo28036a(this.f11044b, 4);
                this.f22051a.mo28036a(vVar, v);
                i3 = i3 + 4 + v;
            }
            this.f22051a.mo28037a(j + (h * 1000), i, i3, 0, null);
            this.f11048f = true;
            return true;
        }
    }
}
