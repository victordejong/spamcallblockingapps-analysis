package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioFocusManager.class */
public final class AudioFocusManager {
    public static final int AUDIO_FOCUS_STATE_HAVE_FOCUS = 1;
    public static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT = 2;
    public static final int AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK = 3;
    public static final int AUDIO_FOCUS_STATE_LOST_FOCUS = -1;
    public static final int AUDIO_FOCUS_STATE_NO_FOCUS = 0;
    public static final int PLAYER_COMMAND_DO_NOT_PLAY = -1;
    public static final int PLAYER_COMMAND_PLAY_WHEN_READY = 1;
    public static final int PLAYER_COMMAND_WAIT_FOR_CALLBACK = 0;
    public static final String TAG = "AudioFocusManager";
    public static final float VOLUME_MULTIPLIER_DEFAULT = 1.0f;
    public static final float VOLUME_MULTIPLIER_DUCK = 0.2f;
    @Nullable
    public AudioAttributes audioAttributes;
    public AudioFocusRequest audioFocusRequest;
    public final AudioManager audioManager;
    public int focusGain;
    public final PlayerControl playerControl;
    public boolean rebuildAudioFocusRequest;
    public float volumeMultiplier = 1.0f;
    public final AudioFocusListener focusListener = new AudioFocusListener();
    public int audioFocusState = 0;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener.class */
    public class AudioFocusListener implements AudioManager.OnAudioFocusChangeListener {
        public AudioFocusListener() {
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i != -3) {
                if (i == -2) {
                    AudioFocusManager.this.audioFocusState = 2;
                } else if (i == -1) {
                    AudioFocusManager.this.audioFocusState = -1;
                } else if (i != 1) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unknown focus change type: ");
                    sb.append(i);
                    Log.m37483w(AudioFocusManager.TAG, sb.toString());
                    return;
                } else {
                    AudioFocusManager.this.audioFocusState = 1;
                }
            } else if (AudioFocusManager.this.willPauseWhenDucked()) {
                AudioFocusManager.this.audioFocusState = 2;
            } else {
                AudioFocusManager.this.audioFocusState = 3;
            }
            int i2 = AudioFocusManager.this.audioFocusState;
            if (i2 == -1) {
                AudioFocusManager.this.playerControl.executePlayerCommand(-1);
                AudioFocusManager.this.abandonAudioFocus(true);
            } else if (i2 != 0) {
                if (i2 == 1) {
                    AudioFocusManager.this.playerControl.executePlayerCommand(1);
                } else if (i2 == 2) {
                    AudioFocusManager.this.playerControl.executePlayerCommand(0);
                } else if (i2 != 3) {
                    int i3 = AudioFocusManager.this.audioFocusState;
                    StringBuilder sb2 = new StringBuilder(38);
                    sb2.append("Unknown audio focus state: ");
                    sb2.append(i3);
                    throw new IllegalStateException(sb2.toString());
                }
            }
            float f = AudioFocusManager.this.audioFocusState == 3 ? 0.2f : 1.0f;
            if (AudioFocusManager.this.volumeMultiplier != f) {
                AudioFocusManager.this.volumeMultiplier = f;
                AudioFocusManager.this.playerControl.setVolumeMultiplier(f);
            }
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusState.class */
    public @interface AudioFocusState {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerCommand.class */
    public @interface PlayerCommand {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl.class */
    public interface PlayerControl {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f);
    }

    public AudioFocusManager(Context context, PlayerControl playerControl) {
        this.audioManager = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.playerControl = playerControl;
    }

    private void abandonAudioFocus() {
        abandonAudioFocus(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abandonAudioFocus(boolean z) {
        if (this.focusGain != 0 || this.audioFocusState != 0) {
            if (this.focusGain != 1 || this.audioFocusState == -1 || z) {
                if (Util.SDK_INT >= 26) {
                    abandonAudioFocusV26();
                } else {
                    abandonAudioFocusDefault();
                }
                this.audioFocusState = 0;
            }
        }
    }

    private void abandonAudioFocusDefault() {
        this.audioManager.abandonAudioFocus(this.focusListener);
    }

    @RequiresApi(26)
    private void abandonAudioFocusV26() {
        AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
        if (audioFocusRequest != null) {
            this.audioManager.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public static int convertAudioAttributesToFocusGain(@Nullable AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            return 0;
        }
        int i = audioAttributes.usage;
        switch (i) {
            case 0:
                Log.m37483w(TAG, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 11:
                return audioAttributes.contentType == 1 ? 2 : 3;
            case 15:
            default:
                StringBuilder sb = new StringBuilder(37);
                sb.append("Unidentified audio usage: ");
                sb.append(i);
                Log.m37483w(TAG, sb.toString());
                return 0;
            case 16:
                return Util.SDK_INT >= 19 ? 4 : 2;
        }
    }

    private int handleIdle(boolean z) {
        return z ? 1 : -1;
    }

    private int requestAudioFocus() {
        int i = 1;
        if (this.focusGain != 0) {
            if (this.audioFocusState == 0) {
                this.audioFocusState = (Util.SDK_INT >= 26 ? requestAudioFocusV26() : requestAudioFocusDefault()) == 1 ? 1 : 0;
            }
            int i2 = this.audioFocusState;
            if (i2 == 0) {
                return -1;
            }
            if (i2 == 2) {
                i = 0;
            }
            return i;
        } else if (this.audioFocusState == 0) {
            return 1;
        } else {
            abandonAudioFocus(true);
            return 1;
        }
    }

    private int requestAudioFocusDefault() {
        return this.audioManager.requestAudioFocus(this.focusListener, Util.getStreamTypeForAudioUsage(((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).usage), this.focusGain);
    }

    @RequiresApi(26)
    private int requestAudioFocusV26() {
        if (this.audioFocusRequest == null || this.rebuildAudioFocusRequest) {
            AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
            this.audioFocusRequest = (audioFocusRequest == null ? new AudioFocusRequest.Builder(this.focusGain) : new AudioFocusRequest.Builder(audioFocusRequest)).setAudioAttributes(((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).getAudioAttributesV21()).setWillPauseWhenDucked(willPauseWhenDucked()).setOnAudioFocusChangeListener(this.focusListener).build();
            this.rebuildAudioFocusRequest = false;
        }
        return this.audioManager.requestAudioFocus(this.audioFocusRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean willPauseWhenDucked() {
        AudioAttributes audioAttributes = this.audioAttributes;
        boolean z = true;
        if (audioAttributes == null || audioAttributes.contentType != 1) {
            z = false;
        }
        return z;
    }

    @VisibleForTesting
    public AudioManager.OnAudioFocusChangeListener getFocusListener() {
        return this.focusListener;
    }

    public float getVolumeMultiplier() {
        return this.volumeMultiplier;
    }

    public int handlePrepare(boolean z) {
        return z ? requestAudioFocus() : -1;
    }

    public int handleSetPlayWhenReady(boolean z, int i) {
        if (!z) {
            abandonAudioFocus();
            return -1;
        }
        return i == 1 ? handleIdle(z) : requestAudioFocus();
    }

    public void handleStop() {
        abandonAudioFocus(true);
    }

    public int setAudioAttributes(@Nullable AudioAttributes audioAttributes, boolean z, int i) {
        if (!Util.areEqual(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            this.focusGain = convertAudioAttributesToFocusGain(audioAttributes);
            int i2 = this.focusGain;
            Assertions.checkArgument(i2 == 1 || i2 == 0, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
            if (z && (i == 2 || i == 3)) {
                return requestAudioFocus();
            }
        }
        return i == 1 ? handleIdle(z) : handlePrepare(z);
    }
}
