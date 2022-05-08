package androidx.media2.exoplayer.external.audio;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioListener.class */
public interface AudioListener {
    void onAudioAttributesChanged(AudioAttributes audioAttributes);

    void onAudioSessionId(int i);

    void onVolumeChanged(float f);
}
