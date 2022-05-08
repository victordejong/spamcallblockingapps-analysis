package androidx.media2.exoplayer.external.extractor;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.extractor.amr.AmrExtractor;
import androidx.media2.exoplayer.external.extractor.flv.FlvExtractor;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.mp3.Mp3Extractor;
import androidx.media2.exoplayer.external.extractor.mp4.FragmentedMp4Extractor;
import androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor;
import androidx.media2.exoplayer.external.extractor.ogg.OggExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.Ac3Extractor;
import androidx.media2.exoplayer.external.extractor.p007ts.Ac4Extractor;
import androidx.media2.exoplayer.external.extractor.p007ts.AdtsExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.TsExtractor;
import androidx.media2.exoplayer.external.extractor.wav.WavExtractor;
import java.lang.reflect.Constructor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/DefaultExtractorsFactory.class */
public final class DefaultExtractorsFactory implements ExtractorsFactory {
    public static final Constructor<? extends Extractor> FLAC_EXTRACTOR_CONSTRUCTOR;
    public int adtsFlags;
    public int amrFlags;
    public boolean constantBitrateSeekingEnabled;
    public int fragmentedMp4Flags;
    public int matroskaFlags;
    public int mp3Flags;
    public int mp4Flags;
    public int tsFlags;
    public int tsMode = 1;

    static {
        Constructor<? extends Extractor> constructor;
        try {
            constructor = Class.forName("androidx.media2.exoplayer.external.ext.flac.FlacExtractor").asSubclass(Extractor.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        FLAC_EXTRACTOR_CONSTRUCTOR = constructor;
    }

    @Override // androidx.media2.exoplayer.external.extractor.ExtractorsFactory
    public Extractor[] createExtractors() {
        Extractor[] extractorArr;
        synchronized (this) {
            extractorArr = new Extractor[FLAC_EXTRACTOR_CONSTRUCTOR == null ? 13 : 14];
            extractorArr[0] = new MatroskaExtractor(this.matroskaFlags);
            int i = 1;
            extractorArr[1] = new FragmentedMp4Extractor(this.fragmentedMp4Flags);
            extractorArr[2] = new Mp4Extractor(this.mp4Flags);
            extractorArr[3] = new Mp3Extractor(this.mp3Flags | (this.constantBitrateSeekingEnabled ? 1 : 0));
            extractorArr[4] = new AdtsExtractor(0L, this.adtsFlags | (this.constantBitrateSeekingEnabled ? 1 : 0));
            extractorArr[5] = new Ac3Extractor();
            extractorArr[6] = new TsExtractor(this.tsMode, this.tsFlags);
            extractorArr[7] = new FlvExtractor();
            extractorArr[8] = new OggExtractor();
            extractorArr[9] = new PsExtractor();
            extractorArr[10] = new WavExtractor();
            int i2 = this.amrFlags;
            if (!this.constantBitrateSeekingEnabled) {
                i = 0;
            }
            extractorArr[11] = new AmrExtractor(i | i2);
            extractorArr[12] = new Ac4Extractor();
            if (FLAC_EXTRACTOR_CONSTRUCTOR != null) {
                try {
                    extractorArr[13] = (Extractor) FLAC_EXTRACTOR_CONSTRUCTOR.newInstance(new Object[0]);
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            }
        }
        return extractorArr;
    }

    public DefaultExtractorsFactory setAdtsExtractorFlags(int i) {
        synchronized (this) {
            this.adtsFlags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setAmrExtractorFlags(int i) {
        synchronized (this) {
            this.amrFlags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setConstantBitrateSeekingEnabled(boolean z) {
        synchronized (this) {
            this.constantBitrateSeekingEnabled = z;
        }
        return this;
    }

    public DefaultExtractorsFactory setFragmentedMp4ExtractorFlags(int i) {
        synchronized (this) {
            this.fragmentedMp4Flags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setMatroskaExtractorFlags(int i) {
        synchronized (this) {
            this.matroskaFlags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setMp3ExtractorFlags(int i) {
        synchronized (this) {
            this.mp3Flags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setMp4ExtractorFlags(int i) {
        synchronized (this) {
            this.mp4Flags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setTsExtractorFlags(int i) {
        synchronized (this) {
            this.tsFlags = i;
        }
        return this;
    }

    public DefaultExtractorsFactory setTsExtractorMode(int i) {
        synchronized (this) {
            this.tsMode = i;
        }
        return this;
    }
}
