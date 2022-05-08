package com.facebook.stetho.websocket;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/websocket/WriteCallback.class */
interface WriteCallback {
    void onFailure(IOException iOException);

    void onSuccess();
}
