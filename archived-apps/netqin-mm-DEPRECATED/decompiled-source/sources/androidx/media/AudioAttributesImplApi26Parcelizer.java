package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi26Parcelizer.class */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f1404a = (AudioAttributes) versionedParcel.m36996a((VersionedParcel) audioAttributesImplApi26.f1404a, 1);
        audioAttributesImplApi26.f1405b = versionedParcel.m37000a(audioAttributesImplApi26.f1405b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36973b(audioAttributesImplApi26.f1404a, 1);
        versionedParcel.m36977b(audioAttributesImplApi26.f1405b, 2);
    }
}
