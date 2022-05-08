package androidx.media;

import androidx.versionedparcelable.AbstractC1276b;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesCompatParcelizer.class */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(AbstractC1276b bVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f3927a = (AbstractC0958a) bVar.m6458c((AbstractC1276b) audioAttributesCompat.f3927a);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, AbstractC1276b bVar) {
        bVar.m6472a(audioAttributesCompat.f3927a);
    }
}
