package com.integralads.avid.library.mopub.session;

import com.integralads.avid.library.mopub.AvidManager;
import com.integralads.avid.library.mopub.session.internal.InternalAvidManagedVideoAdSession;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListener;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/AvidManagedVideoAdSession.class */
public class AvidManagedVideoAdSession extends AbstractAvidManagedAdSession {
    public AvidVideoPlaybackListener getAvidVideoPlaybackListener() {
        InternalAvidManagedVideoAdSession internalAvidManagedVideoAdSession = (InternalAvidManagedVideoAdSession) AvidManager.getInstance().findInternalAvidAdSessionById(getAvidAdSessionId());
        return internalAvidManagedVideoAdSession != null ? internalAvidManagedVideoAdSession.getAvidVideoPlaybackListener() : null;
    }
}
