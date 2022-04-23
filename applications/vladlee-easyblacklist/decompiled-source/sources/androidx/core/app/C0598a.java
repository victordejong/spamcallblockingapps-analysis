package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.content.C0646b;
/* renamed from: androidx.core.app.a */
/* loaded from: classes-dex2jar.jar:androidx/core/app/a.class */
public final class C0598a extends C0646b {

    /* renamed from: a */
    private static AbstractC0600b f2779a;

    /* renamed from: androidx.core.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
    public interface AbstractC0599a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: androidx.core.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$b.class */
    public interface AbstractC0600b {
        /* renamed from: a */
        boolean m8756a();

        /* renamed from: b */
        boolean m8755b();
    }

    /* renamed from: androidx.core.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$c.class */
    public interface AbstractC0601c {
        /* renamed from: a */
        void mo7862a(int i);
    }

    /* renamed from: a */
    public static AbstractC0600b m8763a() {
        return f2779a;
    }

    /* renamed from: a */
    public static void m8762a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* renamed from: a */
    public static void m8761a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: a */
    public static void m8760a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m8758a(Activity activity, String[] strArr, int i) {
        AbstractC0600b bVar = f2779a;
        if (bVar != null && bVar.m8756a()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof AbstractC0601c) {
                ((AbstractC0601c) activity).mo7862a(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof AbstractC0599a) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0602b(strArr, activity, i));
        }
    }

    /* renamed from: a */
    public static boolean m8759a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    /* renamed from: b */
    public static void m8757b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (!C0603c.m8753a(activity)) {
            activity.recreate();
        }
    }
}
