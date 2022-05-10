package p012b.p076s.p078b.p079a.p086s0.p088s;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1164c;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* renamed from: b.s.b.a.s0.s.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/s/a.class */
public final class C1366a extends TagPayloadReader {

    /* renamed from: e */
    public static final int[] f5388e = {5512, 11025, 22050, 44100};

    /* renamed from: b */
    public boolean f5389b;

    /* renamed from: c */
    public boolean f5390c;

    /* renamed from: d */
    public int f5391d;

    public C1366a(AbstractC1362q qVar) {
        super(qVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: a */
    public boolean mo33574a(C1184p pVar) throws TagPayloadReader.UnsupportedFormatException {
        if (!this.f5389b) {
            int r = pVar.m34344r();
            int i = (r >> 4) & 15;
            this.f5391d = i;
            if (i == 2) {
                this.f1671a.mo32623a(Format.m38180a((String) null, "audio/mpeg", (String) null, -1, -1, 1, f5388e[(r >> 2) & 3], (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f5390c = true;
            } else if (i == 7 || i == 8) {
                this.f1671a.mo32623a(Format.m38181a((String) null, this.f5391d == 7 ? "audio/g711-alaw" : "audio/g711-mlaw", (String) null, -1, -1, 1, 8000, (r & 1) == 1 ? 2 : 3, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
                this.f5390c = true;
            } else if (i != 10) {
                int i2 = this.f5391d;
                StringBuilder sb = new StringBuilder(39);
                sb.append("Audio format not supported: ");
                sb.append(i2);
                throw new TagPayloadReader.UnsupportedFormatException(sb.toString());
            }
            this.f5389b = true;
            return true;
        }
        pVar.m34356f(1);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.flv.TagPayloadReader
    /* renamed from: b */
    public void mo33573b(C1184p pVar, long j) throws ParserException {
        if (this.f5391d == 2) {
            int a = pVar.m34372a();
            this.f1671a.mo32827a(pVar, a);
            this.f1671a.mo32832a(j, 1, a, 0, null);
            return;
        }
        int r = pVar.m34344r();
        if (r == 0 && !this.f5390c) {
            int a2 = pVar.m34372a();
            byte[] bArr = new byte[a2];
            pVar.m34366a(bArr, 0, a2);
            Pair<Integer, Integer> a3 = C1164c.m34504a(bArr);
            this.f1671a.mo32623a(Format.m38180a((String) null, "audio/mp4a-latm", (String) null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), Collections.singletonList(bArr), (DrmInitData) null, 0, (String) null));
            this.f5390c = true;
        } else if (this.f5391d != 10 || r == 1) {
            int a4 = pVar.m34372a();
            this.f1671a.mo32827a(pVar, a4);
            this.f1671a.mo32832a(j, 1, a4, 0, null);
        }
    }
}
