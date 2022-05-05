package androidx.core.app;

import android.app.Service;
import android.content.ComponentName;
import android.os.Build;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/core/app/JobIntentService.class */
public abstract class JobIntentService extends Service {

    /* renamed from: e */
    static final Object f2767e = new Object();

    /* renamed from: f */
    static final HashMap<ComponentName, Object> f2768f = new HashMap<>();

    /* renamed from: a */
    boolean f2769a = false;

    /* renamed from: b */
    boolean f2770b = false;

    /* renamed from: c */
    boolean f2771c = false;

    /* renamed from: d */
    final ArrayList<Object> f2772d;

    public JobIntentService() {
        this.f2772d = Build.VERSION.SDK_INT >= 26 ? null : new ArrayList<>();
    }
}
