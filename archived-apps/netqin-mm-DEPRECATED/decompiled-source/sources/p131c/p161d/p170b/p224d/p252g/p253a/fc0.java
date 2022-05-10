package p131c.p161d.p170b.p224d.p252g.p253a;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.zzio;
/* renamed from: c.d.b.d.g.a.fc0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/fc0.class */
public final class fc0 extends Thread {

    /* renamed from: a */
    public final /* synthetic */ AudioTrack f12951a;

    /* renamed from: b */
    public final /* synthetic */ zzio f12952b;

    public fc0(zzio zzioVar, AudioTrack audioTrack) {
        this.f12952b = zzioVar;
        this.f12951a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f12951a.flush();
            this.f12951a.release();
        } finally {
            conditionVariable = this.f12952b.f28358f;
            conditionVariable.open();
        }
    }
}
