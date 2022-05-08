package dagger.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.CallSuper;
/* loaded from: classes2-dex2jar.jar:dagger/android/DaggerBroadcastReceiver.class */
public abstract class DaggerBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    @CallSuper
    public void onReceive(Context context, Intent intent) {
        AndroidInjection.inject(this, context);
    }
}
