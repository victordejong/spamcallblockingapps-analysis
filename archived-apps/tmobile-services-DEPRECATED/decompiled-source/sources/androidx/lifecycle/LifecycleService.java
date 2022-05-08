package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleService.class */
public class LifecycleService extends Service implements LifecycleOwner {

    /* renamed from: f */
    private final ServiceLifecycleDispatcher f4027f = new ServiceLifecycleDispatcher(this);

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f4027f.m18155a();
    }

    @Override // android.app.Service
    @Nullable
    @CallSuper
    public IBinder onBind(@NonNull Intent intent) {
        this.f4027f.m18154b();
        return null;
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        this.f4027f.m18153c();
        super.onCreate();
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        this.f4027f.m18152d();
        super.onDestroy();
    }

    @Override // android.app.Service
    @CallSuper
    public void onStart(@Nullable Intent intent, int i) {
        this.f4027f.m18151e();
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(@Nullable Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
