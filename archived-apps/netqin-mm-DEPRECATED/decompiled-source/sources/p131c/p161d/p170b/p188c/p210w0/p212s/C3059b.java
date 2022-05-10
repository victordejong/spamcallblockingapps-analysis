package p131c.p161d.p170b.p188c.p210w0.p212s;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2884h;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.w0.s.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/s/b.class */
public final class C3059b extends TagPayloadReader {

    /* renamed from: e */
    public static final int[] f11023e = {5512, 11025, 22050, 44100};

    /* renamed from: b */
    public boolean f11024b;

    /* renamed from: c */
    public boolean f11025c;

    /* renamed from: d */
    public int f11026d;

    public C3059b(AbstractC3054q qVar) {
        super(qVar);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: a */
    public boolean mo18610a(C2904v vVar) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.f11024b) {
            int r = vVar.m28524r();
            int i = (r >> 4) & 15;
            this.f11026d = i;
            if (i == 2) {
                this.f22051a.mo28034a(Format.m18698a(null, "audio/mpeg", null, -1, -1, 1, f11023e[(r >> 2) & 3], null, null, 0, null));
                this.f11025c = true;
            } else if (i == 7 || i == 8) {
                this.f22051a.mo28034a(Format.m18699a((String) null, this.f11026d == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", (String) null, -1, -1, 1, 8000, (r & 1) == 1 ? 2 : 3, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f11025c = true;
            } else if (i != 10) {
                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + this.f11026d);
            }
            this.f11024b = true;
            return true;
        }
        vVar.m28536f(1);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public boolean mo18608b(C2904v vVar, long j) throws ParserException {
        if (this.f11026d == 2) {
            int a = vVar.m28552a();
            this.f22051a.mo28036a(vVar, a);
            this.f22051a.mo28037a(j, 1, a, 0, null);
            return true;
        }
        int r = vVar.m28524r();
        if (r == 0 && !this.f11025c) {
            int a2 = vVar.m28552a();
            byte[] bArr = new byte[a2];
            vVar.m28546a(bArr, 0, a2);
            Pair<Integer, Integer> a3 = C2884h.m28694a(bArr);
            this.f22051a.mo28034a(Format.m18698a(null, "audio/mp4a-latm", null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), Collections.singletonList(bArr), null, 0, null));
            this.f11025c = true;
            return false;
        } else if (this.f11026d == 10 && r != 1) {
            return false;
        } else {
            int a4 = vVar.m28552a();
            this.f22051a.mo28036a(vVar, a4);
            this.f22051a.mo28037a(j, 1, a4, 0, null);
            return true;
        }
    }
}
