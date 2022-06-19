package p193e.p194a.p947k.p948a.p959g;

import android.view.KeyEvent;
import android.view.View;
import com.truecaller.videocallerid.p187ui.recording.RecordInputEvent;
import s1.z.c.l;
/* renamed from: e.a.k.a.g.n */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/n.class */
public final class View$OnKeyListenerC15741n implements View.OnKeyListener {

    /* renamed from: a */
    public final /* synthetic */ C15715f f44377a;

    public View$OnKeyListenerC15741n(C15715f c15715f) {
        this.f44377a = c15715f;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        boolean z = true;
        if (i == 25) {
            AbstractC15755w m18448SA = this.f44377a.m18448SA();
            RecordInputEvent.InputMode inputMode = RecordInputEvent.InputMode.VolumeButton;
            l.d(keyEvent, "event");
            ((C15757y) m18448SA).m18364Vj(new RecordInputEvent(inputMode, keyEvent.getAction(), 0, 1));
        } else {
            z = false;
        }
        return z;
    }
}
