package p193e.p194a.p619d.p637c0.p640x1;

import android.media.AudioManager;
import android.media.MediaPlayer;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
/* renamed from: e.a.d.c0.x1.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/g.class */
public final class C11548g implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    public final /* synthetic */ C11523f f33880a;

    public C11548g(C11523f c11523f) {
        this.f33880a = c11523f;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        if (this.f33880a.f33827l.mo24003j()) {
            return;
        }
        if (i != -2 && i != -1) {
            C11523f c11523f = this.f33880a;
            c11523f.m24541q(c11523f.f33818c);
            return;
        }
        C11523f c11523f2 = this.f33880a;
        MediaPlayer mediaPlayer = c11523f2.f33818c;
        Objects.requireNonNull(c11523f2);
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (!mediaPlayer.isPlaying()) {
                mediaPlayer = null;
            }
            if (mediaPlayer == null) {
                return;
            }
            mediaPlayer.pause();
        } catch (IllegalStateException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
