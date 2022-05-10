package com.integralads.avid.library.mopub.session.internal;

import android.content.Context;
import com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession.class */
public class InternalAvidManagedVideoAdSession extends InternalAvidManagedAdSession {

    /* renamed from: n */
    public AvidVideoPlaybackListenerImpl f33072n = new AvidVideoPlaybackListenerImpl(this, getAvidBridgeManager());

    public InternalAvidManagedVideoAdSession(Context context, String str, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        super(context, str, externalAvidAdSessionContext);
    }

    public AvidVideoPlaybackListenerImpl getAvidVideoPlaybackListener() {
        return this.f33072n;
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public MediaType getMediaType() {
        return MediaType.VIDEO;
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public SessionType getSessionType() {
        return SessionType.MANAGED_VIDEO;
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public void onEnd() {
        this.f33072n.destroy();
        super.onEnd();
    }
}
