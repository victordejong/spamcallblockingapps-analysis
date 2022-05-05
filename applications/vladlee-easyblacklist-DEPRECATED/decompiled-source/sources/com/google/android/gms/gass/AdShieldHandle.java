package com.google.android.gms.gass;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/AdShieldHandle.class */
public interface AdShieldHandle {
    void close();

    String getClickSignals(Context context, String str, String str2, View view, Activity activity);

    String getImpressionSignals(Context context, String str, View view, Activity activity);

    int getLastCrashInformation();

    String getQuerySignals(Context context, String str);

    void reportTouchEvent(String str, MotionEvent motionEvent);
}
