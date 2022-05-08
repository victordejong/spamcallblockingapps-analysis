package com.mopub.network;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/ImpressionListener.class */
public interface ImpressionListener {
    @AnyThread
    void onImpression(@NonNull String str, @Nullable ImpressionData impressionData);
}
