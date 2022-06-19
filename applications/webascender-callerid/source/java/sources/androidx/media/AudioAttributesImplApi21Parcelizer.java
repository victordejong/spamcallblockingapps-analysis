package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public final class AudioAttributesImplApi21Parcelizer {
    public static b read(VersionedParcel versionedParcel) {
        b bVar = new b();
        bVar.a = (AudioAttributes) versionedParcel.m4655r(bVar.a, 1);
        bVar.b = versionedParcel.m4657p(bVar.b, 2);
        return bVar;
    }

    public static void write(b bVar, VersionedParcel versionedParcel) {
        versionedParcel.m4649x(false, false);
        versionedParcel.m4679H(bVar.a, 1);
        versionedParcel.m4681F(bVar.b, 2);
    }
}
