package androidx.multidex;

import android.app.Application;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:androidx/multidex/MultiDexApplication.class */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }
}
