package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0247a;
import androidx.core.p037g.C0724d;
/* renamed from: androidx.appcompat.app.aa */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/aa.class */
public class DialogC0279aa extends Dialog implements AbstractC0310n {

    /* renamed from: a */
    private AbstractC0311o f1218a;

    /* renamed from: b */
    private final C0724d.AbstractC0725a f1219b = new C0280ab(this);

    public DialogC0279aa(Context context, int i) {
        super(context, m9858a(context, i));
        AbstractC0311o b = m9856b();
        b.mo9785a(m9858a(context, i));
        b.mo9771c();
    }

    /* renamed from: a */
    private static int m9858a(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(C0247a.C0248a.f585z, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m9857a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m9856b().mo9773b(view, layoutParams);
    }

    /* renamed from: b */
    public final AbstractC0311o m9856b() {
        if (this.f1218a == null) {
            this.f1218a = AbstractC0311o.m9783a(this, this);
        }
        return this.f1218a;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0724d.m8410a(this.f1219b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m9856b().mo9774b(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m9856b().mo9762i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m9856b().mo9759l();
        super.onCreate(bundle);
        m9856b().mo9771c();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        m9856b().mo9765f();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m9856b().mo9770c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m9856b().mo9781a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m9856b().mo9780a(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m9856b().mo9776a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m9856b().mo9776a(charSequence);
    }
}
