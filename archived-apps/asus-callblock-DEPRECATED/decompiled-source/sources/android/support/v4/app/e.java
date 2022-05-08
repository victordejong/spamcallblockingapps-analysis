package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/e.class */
abstract class e extends Activity {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract View a(View view, String str, Context context, AttributeSet attributeSet);

    void a() {
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT < 11 && getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a2 = a(null, str, context, attributeSet);
        View view = a2;
        if (a2 == null) {
            view = super.onCreateView(str, context, attributeSet);
        }
        return view;
    }
}
