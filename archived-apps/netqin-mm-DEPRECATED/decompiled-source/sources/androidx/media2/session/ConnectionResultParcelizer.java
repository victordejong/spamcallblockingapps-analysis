package androidx.media2.session;

import android.app.PendingIntent;
import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.versionedparcelable.VersionedParcel;
import java.util.List;
import p012b.p076s.p116d.C1782b;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ConnectionResultParcelizer.class */
public final class ConnectionResultParcelizer {
    public static C1782b read(VersionedParcel versionedParcel) {
        C1782b bVar = new C1782b();
        bVar.f7185a = versionedParcel.m37000a(bVar.f7185a, 0);
        bVar.f7186b = versionedParcel.m36997a(bVar.f7186b, 1);
        bVar.f7197m = versionedParcel.m37000a(bVar.f7197m, 10);
        bVar.f7198n = versionedParcel.m37000a(bVar.f7198n, 11);
        bVar.f7199o = (ParcelImplListSlice) versionedParcel.m36996a((VersionedParcel) bVar.f7199o, 12);
        bVar.f7200p = (SessionCommandGroup) versionedParcel.m36994a((VersionedParcel) bVar.f7200p, 13);
        bVar.f7201q = versionedParcel.m37000a(bVar.f7201q, 14);
        bVar.f7202r = versionedParcel.m37000a(bVar.f7202r, 15);
        bVar.f7203s = versionedParcel.m37000a(bVar.f7203s, 16);
        bVar.f7204t = versionedParcel.m36998a(bVar.f7204t, 17);
        bVar.f7205u = (VideoSize) versionedParcel.m36994a((VersionedParcel) bVar.f7205u, 18);
        bVar.f7206v = versionedParcel.m36983a((List) bVar.f7206v, 19);
        bVar.f7188d = (PendingIntent) versionedParcel.m36996a((VersionedParcel) bVar.f7188d, 2);
        bVar.f7207w = (SessionPlayer.TrackInfo) versionedParcel.m36994a((VersionedParcel) bVar.f7207w, 20);
        bVar.f7208x = (SessionPlayer.TrackInfo) versionedParcel.m36994a((VersionedParcel) bVar.f7208x, 21);
        bVar.f7209y = (SessionPlayer.TrackInfo) versionedParcel.m36994a((VersionedParcel) bVar.f7209y, 23);
        bVar.f7210z = (SessionPlayer.TrackInfo) versionedParcel.m36994a((VersionedParcel) bVar.f7210z, 24);
        bVar.f7189e = versionedParcel.m37000a(bVar.f7189e, 3);
        bVar.f7191g = (MediaItem) versionedParcel.m36994a((VersionedParcel) bVar.f7191g, 4);
        bVar.f7192h = versionedParcel.m36999a(bVar.f7192h, 5);
        bVar.f7193i = versionedParcel.m36999a(bVar.f7193i, 6);
        bVar.f7194j = versionedParcel.m37001a(bVar.f7194j, 7);
        bVar.f7195k = versionedParcel.m36999a(bVar.f7195k, 8);
        bVar.f7196l = (MediaController.PlaybackInfo) versionedParcel.m36994a((VersionedParcel) bVar.f7196l, 9);
        bVar.mo32075f();
        return bVar;
    }

    public static void write(C1782b bVar, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        bVar.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36977b(bVar.f7185a, 0);
        versionedParcel.m36974b(bVar.f7186b, 1);
        versionedParcel.m36977b(bVar.f7197m, 10);
        versionedParcel.m36977b(bVar.f7198n, 11);
        versionedParcel.m36973b(bVar.f7199o, 12);
        versionedParcel.m36971b(bVar.f7200p, 13);
        versionedParcel.m36977b(bVar.f7201q, 14);
        versionedParcel.m36977b(bVar.f7202r, 15);
        versionedParcel.m36977b(bVar.f7203s, 16);
        versionedParcel.m36975b(bVar.f7204t, 17);
        versionedParcel.m36971b(bVar.f7205u, 18);
        versionedParcel.m36966b(bVar.f7206v, 19);
        versionedParcel.m36973b(bVar.f7188d, 2);
        versionedParcel.m36971b(bVar.f7207w, 20);
        versionedParcel.m36971b(bVar.f7208x, 21);
        versionedParcel.m36971b(bVar.f7209y, 23);
        versionedParcel.m36971b(bVar.f7210z, 24);
        versionedParcel.m36977b(bVar.f7189e, 3);
        versionedParcel.m36971b(bVar.f7191g, 4);
        versionedParcel.m36976b(bVar.f7192h, 5);
        versionedParcel.m36976b(bVar.f7193i, 6);
        versionedParcel.m36978b(bVar.f7194j, 7);
        versionedParcel.m36976b(bVar.f7195k, 8);
        versionedParcel.m36971b(bVar.f7196l, 9);
    }
}
