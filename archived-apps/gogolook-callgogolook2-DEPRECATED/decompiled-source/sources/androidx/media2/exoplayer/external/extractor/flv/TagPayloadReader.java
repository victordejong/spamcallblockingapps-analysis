package androidx.media2.exoplayer.external.extractor.flv;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader.class */
public abstract class TagPayloadReader {
    public final TrackOutput output;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException.class */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    public TagPayloadReader(TrackOutput trackOutput) {
        this.output = trackOutput;
    }

    public final void consume(ParsableByteArray parsableByteArray, long j) throws ParserException {
        if (parseHeader(parsableByteArray)) {
            parsePayload(parsableByteArray, j);
        }
    }

    public abstract boolean parseHeader(ParsableByteArray parsableByteArray) throws ParserException;

    public abstract void parsePayload(ParsableByteArray parsableByteArray, long j) throws ParserException;

    public abstract void seek();
}
