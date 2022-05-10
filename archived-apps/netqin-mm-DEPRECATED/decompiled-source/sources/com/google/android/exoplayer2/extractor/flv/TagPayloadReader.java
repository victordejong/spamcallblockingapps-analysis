package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader.class */
public abstract class TagPayloadReader {

    /* renamed from: a */
    public final AbstractC3054q f22051a;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(AbstractC3054q qVar) {
        this.f22051a = qVar;
    }

    /* renamed from: a */
    public abstract boolean mo18610a(C2904v vVar) throws ParserException;

    /* renamed from: a */
    public final boolean m18609a(C2904v vVar, long j) throws ParserException {
        return mo18610a(vVar) && mo18608b(vVar, j);
    }

    /* renamed from: b */
    public abstract boolean mo18608b(C2904v vVar, long j) throws ParserException;
}
