package p000a.p001a.p002a.p003a;

import android.content.Context;
import java.io.File;
import java.util.Collection;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0065i;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r;
/* renamed from: a.a.a.a.l */
/* loaded from: classes-dex2jar.jar:a/a/a/a/l.class */
public abstract class AbstractC0147l<Result> implements Comparable<AbstractC0147l> {
    Context context;
    C0137d fabric;
    C0043x idManager;
    AbstractC0143i<Result> initializationCallback;
    C0146k<Result> initializationTask = new C0146k<>(this);
    final AbstractC0065i dependsOnAnnotation = (AbstractC0065i) getClass().getAnnotation(AbstractC0065i.class);

    public int compareTo(AbstractC0147l lVar) {
        if (containsAnnotatedDependency(lVar)) {
            return 1;
        }
        if (lVar.containsAnnotatedDependency(this)) {
            return -1;
        }
        if (!hasAnnotatedDependency() || lVar.hasAnnotatedDependency()) {
            return (hasAnnotatedDependency() || !lVar.hasAnnotatedDependency()) ? 0 : -1;
        }
        return 1;
    }

    boolean containsAnnotatedDependency(AbstractC0147l lVar) {
        if (!hasAnnotatedDependency()) {
            return false;
        }
        for (Class<?> cls : this.dependsOnAnnotation.m10262a()) {
            if (cls.isAssignableFrom(lVar.getClass())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Result doInBackground();

    public Context getContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Collection<AbstractC0076r> getDependencies() {
        return this.initializationTask.getDependencies();
    }

    public C0137d getFabric() {
        return this.fabric;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C0043x getIdManager() {
        return this.idManager;
    }

    public abstract String getIdentifier();

    public String getPath() {
        return ".Fabric" + File.separator + getIdentifier();
    }

    public abstract String getVersion();

    boolean hasAnnotatedDependency() {
        return this.dependsOnAnnotation != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void initialize() {
        this.initializationTask.m10259a(this.fabric.m10157b(), (Object[]) new Void[]{null});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void injectParameters(Context context, C0137d dVar, AbstractC0143i<Result> iVar, C0043x xVar) {
        this.fabric = dVar;
        this.context = new C0141g(context, getIdentifier(), getPath());
        this.initializationCallback = iVar;
        this.idManager = xVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCancelled(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean onPreExecute() {
        return true;
    }
}
