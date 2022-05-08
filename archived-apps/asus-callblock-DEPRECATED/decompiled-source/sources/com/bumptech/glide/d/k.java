package com.bumptech.glide.d;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.FragmentManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.m;
import android.util.Log;
import com.bumptech.glide.h;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/k.class */
public final class k implements Handler.Callback {
    private static final k c = new k();
    private volatile h d;

    /* renamed from: a  reason: collision with root package name */
    final Map<FragmentManager, j> f3397a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<m, n> f3398b = new HashMap();
    private final Handler e = new Handler(Looper.getMainLooper(), this);

    k() {
    }

    public static k a() {
        return c;
    }

    @TargetApi(17)
    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @TargetApi(17)
    public final j a(FragmentManager fragmentManager) {
        j jVar = (j) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        j jVar2 = jVar;
        if (jVar == null) {
            j jVar3 = this.f3397a.get(fragmentManager);
            jVar2 = jVar3;
            if (jVar3 == null) {
                jVar2 = new j();
                this.f3397a.put(fragmentManager, jVar2);
                fragmentManager.beginTransaction().add(jVar2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.e.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return jVar2;
    }

    public final n a(m mVar) {
        n nVar = (n) mVar.a("com.bumptech.glide.manager");
        n nVar2 = nVar;
        if (nVar == null) {
            n nVar3 = this.f3398b.get(mVar);
            nVar2 = nVar3;
            if (nVar3 == null) {
                nVar2 = new n();
                this.f3398b.put(mVar, nVar2);
                mVar.a().a(nVar2, "com.bumptech.glide.manager").b();
                this.e.obtainMessage(2, mVar).sendToTarget();
            }
        }
        return nVar2;
    }

    public final h a(Context context) {
        if (this.d == null) {
            synchronized (this) {
                if (this.d == null) {
                    this.d = new h(context.getApplicationContext(), new b(), new f());
                }
            }
        }
        return this.d;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Object obj;
        ComponentCallbacks remove;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                remove = this.f3397a.remove(obj);
                break;
            case 2:
                obj = (m) message.obj;
                remove = this.f3398b.remove(obj);
                break;
            default:
                z = false;
                obj = null;
                remove = null;
                break;
        }
        if (z && remove == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }
}
