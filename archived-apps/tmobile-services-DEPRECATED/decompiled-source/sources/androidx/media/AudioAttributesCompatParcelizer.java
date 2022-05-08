package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f4184a = (AudioAttributesImpl) versionedParcel.m16556v(audioAttributesCompat.f4184a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        versionedParcel.mo16538x(false, false);
        versionedParcel.m16569M(audioAttributesCompat.f4184a, 1);
    }
}
