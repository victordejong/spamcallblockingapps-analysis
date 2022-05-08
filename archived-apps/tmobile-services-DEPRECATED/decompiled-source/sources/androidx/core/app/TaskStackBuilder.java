package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/core/app/TaskStackBuilder.class */
public final class TaskStackBuilder implements Iterable<Intent> {

    /* renamed from: f */
    private final ArrayList<Intent> f2979f = new ArrayList<>();

    /* renamed from: g */
    private final Context f2980g;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/TaskStackBuilder$SupportParentable.class */
    public interface SupportParentable {
        @Nullable
        Intent getSupportParentActivityIntent();
    }

    private TaskStackBuilder(Context context) {
        this.f2980g = context;
    }

    @NonNull
    /* renamed from: f */
    public static TaskStackBuilder m19682f(@NonNull Context context) {
        return new TaskStackBuilder(context);
    }

    @NonNull
    /* renamed from: c */
    public TaskStackBuilder m19685c(@NonNull Intent intent) {
        this.f2979f.add(intent);
        return this;
    }

    @NonNull
    /* renamed from: d */
    public TaskStackBuilder m19684d(@NonNull Activity activity) {
        Intent supportParentActivityIntent = activity instanceof SupportParentable ? ((SupportParentable) activity).getSupportParentActivityIntent() : null;
        Intent intent = supportParentActivityIntent;
        if (supportParentActivityIntent == null) {
            intent = NavUtils.m19810a(activity);
        }
        if (intent != null) {
            ComponentName component = intent.getComponent();
            ComponentName componentName = component;
            if (component == null) {
                componentName = intent.resolveActivity(this.f2980g.getPackageManager());
            }
            m19683e(componentName);
            m19685c(intent);
        }
        return this;
    }

    /* renamed from: e */
    public TaskStackBuilder m19683e(ComponentName componentName) {
        int size = this.f2979f.size();
        try {
            Intent b = NavUtils.m19809b(this.f2980g, componentName);
            while (b != null) {
                this.f2979f.add(size, b);
                b = NavUtils.m19809b(this.f2980g, b.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: g */
    public void m19681g() {
        m19680h(null);
    }

    /* renamed from: h */
    public void m19680h(@Nullable Bundle bundle) {
        if (!this.f2979f.isEmpty()) {
            ArrayList<Intent> arrayList = this.f2979f;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (!ContextCompat.m19669j(this.f2980g, intentArr, bundle)) {
                Intent intent = new Intent(intentArr[intentArr.length - 1]);
                intent.addFlags(268435456);
                this.f2980g.startActivity(intent);
                return;
            }
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f2979f.iterator();
    }
}
