package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.util.EventDispatcher;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$3.class */
public final /* synthetic */ class DefaultDrmSession$$Lambda$3 implements EventDispatcher.Event {
    public static final EventDispatcher.Event $instance = new DefaultDrmSession$$Lambda$3();

    @Override // androidx.media2.exoplayer.external.util.EventDispatcher.Event
    public void sendTo(Object obj) {
        ((DefaultDrmSessionEventListener) obj).onDrmKeysRestored();
    }
}
