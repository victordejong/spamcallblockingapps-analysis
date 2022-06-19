package android.support.p001v4.media.session;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.List;
/* renamed from: android.support.v4.media.session.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/a.class */
public interface AbstractC0021a extends IInterface {
    /* renamed from: B2 */
    void m7042B2(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    /* renamed from: D */
    void m7041D(String str, Bundle bundle) throws RemoteException;

    /* renamed from: H2 */
    void m7040H2(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    /* renamed from: O1 */
    void m7039O1(int i) throws RemoteException;

    /* renamed from: R0 */
    void m7038R0(boolean z) throws RemoteException;

    /* renamed from: j1 */
    void m7037j1(boolean z) throws RemoteException;

    /* renamed from: m */
    void m7036m(Bundle bundle) throws RemoteException;

    /* renamed from: n0 */
    void m7035n0() throws RemoteException;

    /* renamed from: p */
    void m7034p(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    /* renamed from: q1 */
    void m7033q1(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    /* renamed from: t */
    void m7032t(CharSequence charSequence) throws RemoteException;

    /* renamed from: u */
    void m7031u() throws RemoteException;

    /* renamed from: u1 */
    void m7030u1(int i) throws RemoteException;
}
