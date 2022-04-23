package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.AbstractC1276b;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplApi21Parcelizer.class */
public final class AudioAttributesImplApi21Parcelizer {
    public static C0959b read(AbstractC1276b bVar) {
        C0959b bVar2 = new C0959b();
        bVar2.f3953a = (AudioAttributes) bVar.m6465b((AbstractC1276b) bVar2.f3953a, 1);
        bVar2.f3954b = bVar.m6466b(bVar2.f3954b, 2);
        return bVar2;
    }

    public static void write(C0959b bVar, AbstractC1276b bVar2) {
        bVar2.m6473a(bVar.f3953a, 1);
        bVar2.m6474a(bVar.f3954b, 2);
    }
}
