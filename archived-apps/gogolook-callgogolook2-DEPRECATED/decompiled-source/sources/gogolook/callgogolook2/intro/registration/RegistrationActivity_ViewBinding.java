package gogolook.callgogolook2.intro.registration;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity_ViewBinding.class */
public class RegistrationActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public RegistrationActivity f10901a;

    @UiThread
    public RegistrationActivity_ViewBinding(RegistrationActivity registrationActivity, View view) {
        this.f10901a = registrationActivity;
        registrationActivity.mBtnSkip = Utils.findRequiredView(view, R$id.btn_skip, "field 'mBtnSkip'");
        registrationActivity.mBtnFbLogin = Utils.findRequiredView(view, R$id.btn_facebook, "field 'mBtnFbLogin'");
        registrationActivity.mBtnGoogleLogin = Utils.findRequiredView(view, R$id.btn_google, "field 'mBtnGoogleLogin'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RegistrationActivity registrationActivity = this.f10901a;
        if (registrationActivity != null) {
            this.f10901a = null;
            registrationActivity.mBtnSkip = null;
            registrationActivity.mBtnFbLogin = null;
            registrationActivity.mBtnGoogleLogin = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
