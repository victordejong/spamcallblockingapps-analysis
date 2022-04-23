package androidx.media;

import androidx.versionedparcelable.AbstractC1276b;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBaseParcelizer.class */
public final class AudioAttributesImplBaseParcelizer {
    public static C0960c read(AbstractC1276b bVar) {
        C0960c cVar = new C0960c();
        cVar.f3955a = bVar.m6466b(cVar.f3955a, 1);
        cVar.f3956b = bVar.m6466b(cVar.f3956b, 2);
        cVar.f3957c = bVar.m6466b(cVar.f3957c, 3);
        cVar.f3958d = bVar.m6466b(cVar.f3958d, 4);
        return cVar;
    }

    public static void write(C0960c cVar, AbstractC1276b bVar) {
        bVar.m6474a(cVar.f3955a, 1);
        bVar.m6474a(cVar.f3956b, 2);
        bVar.m6474a(cVar.f3957c, 3);
        bVar.m6474a(cVar.f3958d, 4);
    }
}
