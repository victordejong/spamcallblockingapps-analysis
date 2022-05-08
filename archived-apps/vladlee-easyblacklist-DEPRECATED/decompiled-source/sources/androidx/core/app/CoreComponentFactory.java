package androidx.core.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:androidx/core/app/CoreComponentFactory.class */
public class CoreComponentFactory extends AppComponentFactory {

    /* renamed from: androidx.core.app.CoreComponentFactory$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/CoreComponentFactory$a.class */
    public interface AbstractC0597a {
        /* renamed from: a */
        Object m8764a();
    }

    /* renamed from: a */
    private static <T> T m8765a(T t) {
        T t2;
        return (!(t instanceof AbstractC0597a) || (t2 = (T) ((AbstractC0597a) t).m8764a()) == null) ? t : t2;
    }

    @Override // android.app.AppComponentFactory
    public Activity instantiateActivity(ClassLoader classLoader, String str, Intent intent) {
        return (Activity) m8765a(super.instantiateActivity(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public Application instantiateApplication(ClassLoader classLoader, String str) {
        return (Application) m8765a(super.instantiateApplication(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public ContentProvider instantiateProvider(ClassLoader classLoader, String str) {
        return (ContentProvider) m8765a(super.instantiateProvider(classLoader, str));
    }

    @Override // android.app.AppComponentFactory
    public BroadcastReceiver instantiateReceiver(ClassLoader classLoader, String str, Intent intent) {
        return (BroadcastReceiver) m8765a(super.instantiateReceiver(classLoader, str, intent));
    }

    @Override // android.app.AppComponentFactory
    public Service instantiateService(ClassLoader classLoader, String str, Intent intent) {
        return (Service) m8765a(super.instantiateService(classLoader, str, intent));
    }
}
