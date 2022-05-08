package androidx.media2.exoplayer.external;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/DefaultControlDispatcher.class */
public class DefaultControlDispatcher implements ControlDispatcher {
    @Override // androidx.media2.exoplayer.external.ControlDispatcher
    public boolean dispatchSeekTo(Player player, int i, long j) {
        player.seekTo(i, j);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ControlDispatcher
    public boolean dispatchSetPlayWhenReady(Player player, boolean z) {
        player.setPlayWhenReady(z);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ControlDispatcher
    public boolean dispatchSetRepeatMode(Player player, int i) {
        player.setRepeatMode(i);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ControlDispatcher
    public boolean dispatchSetShuffleModeEnabled(Player player, boolean z) {
        player.setShuffleModeEnabled(z);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ControlDispatcher
    public boolean dispatchStop(Player player, boolean z) {
        player.stop(z);
        return true;
    }
}
