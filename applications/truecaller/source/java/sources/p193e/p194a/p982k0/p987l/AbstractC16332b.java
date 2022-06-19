package p193e.p194a.p982k0.p987l;

import com.truecaller.callrecording.recorder.CallRecorder;
/* renamed from: e.a.k0.l.b */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/b.class */
public abstract class AbstractC16332b implements CallRecorder {

    /* renamed from: a */
    public CallRecorder.RecordingState f45969a = CallRecorder.RecordingState.INITIALIZING;

    @Override // com.truecaller.callrecording.recorder.CallRecorder
    /* renamed from: b */
    public boolean mo17529b() {
        return this.f45969a == CallRecorder.RecordingState.RECORDING;
    }
}
