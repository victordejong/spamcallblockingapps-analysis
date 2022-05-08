package com.criteo.publisher.p020a0;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import com.criteo.publisher.CriteoInterstitialAdListener;
import java.lang.ref.Reference;
/* renamed from: com.criteo.publisher.a0.k */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/k.class */
public class ResultReceiverC1923k extends ResultReceiver {
    @NonNull

    /* renamed from: a */
    public final Reference<CriteoInterstitialAdListener> f2044a;

    public ResultReceiverC1923k(@NonNull Handler handler, @NonNull Reference<CriteoInterstitialAdListener> reference) {
        super(handler);
        this.f2044a = reference;
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int i, Bundle bundle) {
        if (i == 100) {
            int i2 = bundle.getInt("Action");
            CriteoInterstitialAdListener criteoInterstitialAdListener = this.f2044a.get();
            if (criteoInterstitialAdListener == null) {
                return;
            }
            if (i2 == 201) {
                criteoInterstitialAdListener.onAdClosed();
            } else if (i2 == 202) {
                criteoInterstitialAdListener.onAdClicked();
                criteoInterstitialAdListener.onAdLeftApplication();
            }
        }
    }
}
