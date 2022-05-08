package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.util.EventDispatcher;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSession$$Lambda$2.class */
public final /* synthetic */ class DefaultDrmSession$$Lambda$2 implements EventDispatcher.Event {
    public static final EventDispatcher.Event $instance = new DefaultDrmSession$$Lambda$2();

    @Override // androidx.media2.exoplayer.external.util.EventDispatcher.Event
    public void sendTo(Object obj) {
        ((DefaultDrmSessionEventListener) obj).onDrmKeysRestored();
    }
}
