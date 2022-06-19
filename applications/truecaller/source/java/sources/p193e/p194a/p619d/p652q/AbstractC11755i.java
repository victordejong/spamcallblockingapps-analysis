package p193e.p194a.p619d.p652q;

import android.bluetooth.BluetoothDevice;
import android.telecom.CallAudioState;
import android.telecom.Connection;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
/* renamed from: e.a.d.q.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/i.class */
public interface AbstractC11755i {
    /* renamed from: a */
    void mo24016a(l<? super CallAudioState, s> lVar);

    /* renamed from: b */
    void mo24015b();

    /* renamed from: c */
    void mo24014c(a<s> aVar);

    /* renamed from: d */
    Connection mo24013d();

    CallAudioState getCallAudioState();

    void initialize();

    void requestBluetoothAudio(BluetoothDevice bluetoothDevice);

    void setAudioRoute(int i);
}
