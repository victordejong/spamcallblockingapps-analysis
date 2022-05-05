package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.core.content.C0646b;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.core.app.o */
/* loaded from: classes-dex2jar.jar:androidx/core/app/o.class */
public final class C0621o implements Iterable<Intent> {

    /* renamed from: a */
    private final ArrayList<Intent> f2878a = new ArrayList<>();

    /* renamed from: b */
    private final Context f2879b;

    /* renamed from: androidx.core.app.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/o$a.class */
    public interface AbstractC0622a {
        /* renamed from: d */
        Intent mo8693d();
    }

    private C0621o(Context context) {
        this.f2879b = context;
    }

    /* renamed from: a */
    private C0621o m8695a(ComponentName componentName) {
        int size = this.f2878a.size();
        try {
            Context context = this.f2879b;
            while (true) {
                Intent a = C0610h.m8740a(context, componentName);
                if (a == null) {
                    return this;
                }
                this.f2878a.add(size, a);
                context = this.f2879b;
                componentName = a.getComponent();
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: a */
    public static C0621o m8694a(Context context) {
        return new C0621o(context);
    }

    /* renamed from: a */
    public final C0621o m8696a(Activity activity) {
        Intent d = ((AbstractC0622a) activity).mo8693d();
        Intent intent = d;
        if (d == null) {
            intent = C0610h.m8741a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f2879b.getPackageManager());
            }
            m8695a(componentName);
            this.f2878a.add(intent);
        }
        return this;
    }

    /* renamed from: a */
    public final void m8697a() {
        if (!this.f2878a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f2878a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            C0646b.m8617a(this.f2879b, intentArr);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public final Iterator<Intent> iterator() {
        return this.f2878a.iterator();
    }
}
