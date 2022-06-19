package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(VersionedParcel versionedParcel) {
        c cVar = new c();
        cVar.a = versionedParcel.m4657p(cVar.a, 1);
        cVar.b = versionedParcel.m4657p(cVar.b, 2);
        cVar.c = versionedParcel.m4657p(cVar.c, 3);
        cVar.d = versionedParcel.m4657p(cVar.d, 4);
        return cVar;
    }

    public static void write(c cVar, VersionedParcel versionedParcel) {
        versionedParcel.m4649x(false, false);
        versionedParcel.m4681F(cVar.a, 1);
        versionedParcel.m4681F(cVar.b, 2);
        versionedParcel.m4681F(cVar.c, 3);
        versionedParcel.m4681F(cVar.d, 4);
    }
}
