package androidx.activity;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$a.class */
class ComponentActivity$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ ComponentActivity f61f;

    ComponentActivity$a(ComponentActivity componentActivity) {
        this.f61f = componentActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ComponentActivity.access$001(this.f61f);
        } catch (IllegalStateException e) {
            if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        }
    }
}
