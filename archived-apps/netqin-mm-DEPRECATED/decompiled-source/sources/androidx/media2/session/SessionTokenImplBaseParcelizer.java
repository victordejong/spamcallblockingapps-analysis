package androidx.media2.session;

import android.content.ComponentName;
import androidx.versionedparcelable.VersionedParcel;
import p012b.p076s.p116d.C1801m;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionTokenImplBaseParcelizer.class */
public final class SessionTokenImplBaseParcelizer {
    public static C1801m read(VersionedParcel versionedParcel) {
        C1801m mVar = new C1801m();
        mVar.f7237a = versionedParcel.m37000a(mVar.f7237a, 1);
        mVar.f7238b = versionedParcel.m37000a(mVar.f7238b, 2);
        mVar.f7239c = versionedParcel.m36987a(mVar.f7239c, 3);
        mVar.f7240d = versionedParcel.m36987a(mVar.f7240d, 4);
        mVar.f7241e = versionedParcel.m36997a(mVar.f7241e, 5);
        mVar.f7242f = (ComponentName) versionedParcel.m36996a((VersionedParcel) mVar.f7242f, 6);
        mVar.f7243g = versionedParcel.m36998a(mVar.f7243g, 7);
        return mVar;
    }

    public static void write(C1801m mVar, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(mVar.f7237a, 1);
        versionedParcel.m36977b(mVar.f7238b, 2);
        versionedParcel.m36968b(mVar.f7239c, 3);
        versionedParcel.m36968b(mVar.f7240d, 4);
        versionedParcel.m36974b(mVar.f7241e, 5);
        versionedParcel.m36973b(mVar.f7242f, 6);
        versionedParcel.m36975b(mVar.f7243g, 7);
    }
}
