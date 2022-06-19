package androidx.core.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.core.content.C0203a;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.p */
/* loaded from: classes-dex2jar.jar:androidx/core/app/p.class */
public final class C0200p implements Iterable<Intent> {

    /* renamed from: f */
    private final ArrayList<Intent> f1304f = new ArrayList<>();

    /* renamed from: g */
    private final Context f1305g;

    /* renamed from: androidx.core.app.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/p$a.class */
    public interface AbstractC0201a {
        Intent getSupportParentActivityIntent();
    }

    private C0200p(Context context) {
        this.f1305g = context;
    }

    /* renamed from: i */
    public static C0200p m6073i(Context context) {
        return new C0200p(context);
    }

    /* renamed from: c */
    public C0200p m6077c(Intent intent) {
        this.f1304f.add(intent);
        return this;
    }

    /* renamed from: d */
    public C0200p m6076d(Intent intent) {
        ComponentName component = intent.getComponent();
        ComponentName componentName = component;
        if (component == null) {
            componentName = intent.resolveActivity(this.f1305g.getPackageManager());
        }
        if (componentName != null) {
            m6074h(componentName);
        }
        m6077c(intent);
        return this;
    }

    /* renamed from: g */
    public C0200p m6075g(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof AbstractC0201a ? ((AbstractC0201a) activity).getSupportParentActivityIntent() : null;
        Intent intent = supportParentActivityIntent;
        if (supportParentActivityIntent == null) {
            intent = C0185h.m6173a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f1305g.getPackageManager());
            }
            m6074h(componentName);
            m6077c(intent);
        }
        return this;
    }

    /* renamed from: h */
    public C0200p m6074h(ComponentName componentName) {
        int size = this.f1304f.size();
        try {
            Intent m6172b = C0185h.m6172b(this.f1305g, componentName);
            while (m6172b != null) {
                this.f1304f.add(size, m6172b);
                m6172b = C0185h.m6172b(this.f1305g, m6172b.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f1304f.iterator();
    }

    /* renamed from: j */
    public PendingIntent m6072j(int i, int i2) {
        return m6071k(i, i2, null);
    }

    /* renamed from: k */
    public PendingIntent m6071k(int i, int i2, Bundle bundle) {
        if (!this.f1304f.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1304f;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            return Build.VERSION.SDK_INT >= 16 ? PendingIntent.getActivities(this.f1305g, i, intentArr, i2, bundle) : PendingIntent.getActivities(this.f1305g, i, intentArr, i2);
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    /* renamed from: m */
    public void m6070m() {
        m6069n(null);
    }

    /* renamed from: n */
    public void m6069n(Bundle bundle) {
        if (!this.f1304f.isEmpty()) {
            ArrayList<Intent> arrayList = this.f1304f;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (C0203a.m6048l(this.f1305g, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f1305g.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
}
