package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataDecoder;
import androidx.media2.exoplayer.external.metadata.MetadataDecoderFactory;
import androidx.media2.exoplayer.external.metadata.MetadataInputBuffer;
import androidx.media2.exoplayer.external.util.MimeTypes;
import java.util.Arrays;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/Id3MetadataDecoderFactory.class */
public final class Id3MetadataDecoderFactory implements MetadataDecoderFactory {
    @Override // androidx.media2.exoplayer.external.metadata.MetadataDecoderFactory
    public MetadataDecoder createDecoder(Format format) {
        return new MetadataDecoder() { // from class: androidx.media2.player.exoplayer.Id3MetadataDecoderFactory.1
            @Override // androidx.media2.exoplayer.external.metadata.MetadataDecoder
            public Metadata decode(MetadataInputBuffer metadataInputBuffer) {
                long j = metadataInputBuffer.timeUs;
                byte[] array = metadataInputBuffer.data.array();
                return new Metadata(new ByteArrayFrame(j, Arrays.copyOf(array, array.length)));
            }
        };
    }

    @Override // androidx.media2.exoplayer.external.metadata.MetadataDecoderFactory
    public boolean supportsFormat(Format format) {
        return MimeTypes.APPLICATION_ID3.equals(format.sampleMimeType);
    }
}
