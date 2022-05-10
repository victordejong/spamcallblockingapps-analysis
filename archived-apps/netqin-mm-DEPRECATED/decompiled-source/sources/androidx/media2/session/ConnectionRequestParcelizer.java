package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
import p012b.p076s.p116d.C1781a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionRequestParcelizer.class */
public final class ConnectionRequestParcelizer {
    public static C1781a read(VersionedParcel versionedParcel) {
        C1781a aVar = new C1781a();
        aVar.f7181a = versionedParcel.m37000a(aVar.f7181a, 0);
        aVar.f7182b = versionedParcel.m36987a(aVar.f7182b, 1);
        aVar.f7183c = versionedParcel.m37000a(aVar.f7183c, 2);
        aVar.f7184d = versionedParcel.m36998a(aVar.f7184d, 3);
        return aVar;
    }

    public static void write(C1781a aVar, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(aVar.f7181a, 0);
        versionedParcel.m36968b(aVar.f7182b, 1);
        versionedParcel.m36977b(aVar.f7183c, 2);
        versionedParcel.m36975b(aVar.f7184d, 3);
    }
}
