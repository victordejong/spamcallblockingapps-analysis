package com.criteo.publisher;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoAdListener.class */
public interface CriteoAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToReceive(CriteoErrorCode criteoErrorCode);

    void onAdLeftApplication();

    void onAdOpened();
}
