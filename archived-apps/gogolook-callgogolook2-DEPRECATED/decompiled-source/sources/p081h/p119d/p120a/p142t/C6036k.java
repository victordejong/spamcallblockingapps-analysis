package p081h.p119d.p120a.p142t;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.t.k */
/* loaded from: classes-dex2jar.jar:h/d/a/t/k.class */
public class C6036k implements Handler.Callback {

    /* renamed from: e */
    public static final C6036k f15027e = new C6036k();

    /* renamed from: a */
    public volatile C5780o f15028a;

    /* renamed from: b */
    public final Map<FragmentManager, FragmentC6033j> f15029b = new HashMap();

    /* renamed from: c */
    public final Map<androidx.fragment.app.FragmentManager, C6039n> f15030c = new HashMap();

    /* renamed from: d */
    public final Handler f15031d = new Handler(Looper.getMainLooper(), this);

    /* renamed from: a */
    public static C6036k m24001a() {
        return f15027e;
    }

    @TargetApi(17)
    /* renamed from: b */
    public static void m23993b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public C5780o m24000a(Activity activity) {
        if (C6096h.m23854c() || Build.VERSION.SDK_INT < 11) {
            return m23998a(activity.getApplicationContext());
        }
        m23993b(activity);
        return m23997a(activity, activity.getFragmentManager());
    }

    /* renamed from: a */
    public C5780o m23998a(Context context) {
        if (context != null) {
            if (C6096h.m23853d() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return m23995a((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return m24000a((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    return m23998a(((ContextWrapper) context).getBaseContext());
                }
            }
            return m23992b(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @TargetApi(11)
    /* renamed from: a */
    public C5780o m23997a(Context context, FragmentManager fragmentManager) {
        FragmentC6033j a = m23999a(fragmentManager);
        C5780o b = a.m24004b();
        C5780o oVar = b;
        if (b == null) {
            oVar = new C5780o(context, a.m24007a(), a.m24002c());
            a.m24006a(oVar);
        }
        return oVar;
    }

    /* renamed from: a */
    public C5780o m23996a(Context context, androidx.fragment.app.FragmentManager fragmentManager) {
        C6039n a = m23994a(fragmentManager);
        C5780o J = a.m23985J();
        C5780o oVar = J;
        if (J == null) {
            oVar = new C5780o(context, a.getLifecycle(), a.m23984K());
            a.m23983a(oVar);
        }
        return oVar;
    }

    /* renamed from: a */
    public C5780o m23995a(FragmentActivity fragmentActivity) {
        if (C6096h.m23854c()) {
            return m23998a(fragmentActivity.getApplicationContext());
        }
        m23993b((Activity) fragmentActivity);
        return m23996a(fragmentActivity, fragmentActivity.getSupportFragmentManager());
    }

    @TargetApi(17)
    /* renamed from: a */
    public FragmentC6033j m23999a(FragmentManager fragmentManager) {
        FragmentC6033j jVar = (FragmentC6033j) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        FragmentC6033j jVar2 = jVar;
        if (jVar == null) {
            FragmentC6033j jVar3 = this.f15029b.get(fragmentManager);
            jVar2 = jVar3;
            if (jVar3 == null) {
                jVar2 = new FragmentC6033j();
                this.f15029b.put(fragmentManager, jVar2);
                fragmentManager.beginTransaction().add(jVar2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f15031d.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return jVar2;
    }

    /* renamed from: a */
    public C6039n m23994a(androidx.fragment.app.FragmentManager fragmentManager) {
        C6039n nVar = (C6039n) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        C6039n nVar2 = nVar;
        if (nVar == null) {
            C6039n nVar3 = this.f15030c.get(fragmentManager);
            nVar2 = nVar3;
            if (nVar3 == null) {
                nVar2 = new C6039n();
                this.f15030c.put(fragmentManager, nVar2);
                fragmentManager.beginTransaction().add(nVar2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f15031d.obtainMessage(2, fragmentManager).sendToTarget();
            }
        }
        return nVar2;
    }

    /* renamed from: b */
    public final C5780o m23992b(Context context) {
        if (this.f15028a == null) {
            synchronized (this) {
                if (this.f15028a == null) {
                    this.f15028a = new C5780o(context.getApplicationContext(), new C6023b(), new C6029f());
                }
            }
        }
        return this.f15028a;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        int i = message.what;
        Object obj2 = null;
        boolean z = true;
        if (i == 1) {
            obj2 = (FragmentManager) message.obj;
            obj = this.f15029b.remove(obj2);
        } else if (i != 2) {
            z = false;
            obj = null;
        } else {
            obj2 = (androidx.fragment.app.FragmentManager) message.obj;
            obj = this.f15030c.remove(obj2);
        }
        if (z && obj == null && Log.isLoggable("RMRetriever", 5)) {
            String str = "Failed to remove expected request manager fragment, manager: " + obj2;
        }
        return z;
    }
}
