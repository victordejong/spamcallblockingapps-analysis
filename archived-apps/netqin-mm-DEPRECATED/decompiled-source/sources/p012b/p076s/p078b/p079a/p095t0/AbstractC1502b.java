package p012b.p076s.p078b.p079a.p095t0;

import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import java.util.List;
/* renamed from: b.s.b.a.t0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/t0/b.class */
public interface AbstractC1502b {

    /* renamed from: a */
    public static final AbstractC1502b f6167a = new C1503a();

    /* renamed from: b.s.b.a.t0.b$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/t0/b$a.class */
    public class C1503a implements AbstractC1502b {
        @Override // p012b.p076s.p078b.p079a.p095t0.AbstractC1502b
        /* renamed from: a */
        public C1501a mo33085a() throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.m38046a();
        }

        @Override // p012b.p076s.p078b.p079a.p095t0.AbstractC1502b
        /* renamed from: a */
        public List<C1501a> mo33084a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.m38029b(str, z, z2);
        }
    }

    /* renamed from: a */
    C1501a mo33085a() throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    List<C1501a> mo33084a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException;
}
