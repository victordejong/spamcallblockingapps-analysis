package androidx.media2.exoplayer.external.extractor.p007ts;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.ExtractorOutput;
import androidx.media2.exoplayer.external.extractor.TrackOutput;
import androidx.media2.exoplayer.external.extractor.p007ts.TsPayloadReader;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.TimestampAdjuster;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.extractor.ts.SpliceInfoSectionReader */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader.class */
public final class SpliceInfoSectionReader implements SectionPayloadReader {
    public boolean formatDeclared;
    public TrackOutput output;
    public TimestampAdjuster timestampAdjuster;

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.SectionPayloadReader
    public void consume(ParsableByteArray parsableByteArray) {
        if (!this.formatDeclared) {
            if (this.timestampAdjuster.getTimestampOffsetUs() != C0463C.TIME_UNSET) {
                this.output.format(Format.createSampleFormat(null, MimeTypes.APPLICATION_SCTE35, this.timestampAdjuster.getTimestampOffsetUs()));
                this.formatDeclared = true;
            } else {
                return;
            }
        }
        int bytesLeft = parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, bytesLeft);
        this.output.sampleMetadata(this.timestampAdjuster.getLastAdjustedTimestampUs(), 1, bytesLeft, 0, null);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p007ts.SectionPayloadReader
    public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.timestampAdjuster = timestampAdjuster;
        trackIdGenerator.generateNewId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 4);
        this.output.format(Format.createSampleFormat(trackIdGenerator.getFormatId(), MimeTypes.APPLICATION_SCTE35, null, -1, null));
    }
}
