package androidx.media2.exoplayer.external.extractor.flv;

import androidx.media2.exoplayer.external.ParserException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader.class */
public abstract class TagPayloadReader {

    /* renamed from: a */
    public final AbstractC1362q f1671a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(AbstractC1362q qVar) {
        this.f1671a = qVar;
    }

    /* renamed from: a */
    public final void m38091a(C1184p pVar, long j) throws ParserException {
        if (mo33574a(pVar)) {
            mo33573b(pVar, j);
        }
    }

    /* renamed from: a */
    public abstract boolean mo33574a(C1184p pVar) throws ParserException;

    /* renamed from: b */
    public abstract void mo33573b(C1184p pVar, long j) throws ParserException;
}
