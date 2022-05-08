package gogolook.callgogolook2.main;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity_ViewBinding.class */
public class FakeCallActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public FakeCallActivity f11053a;

    @UiThread
    public FakeCallActivity_ViewBinding(FakeCallActivity fakeCallActivity, View view) {
        this.f11053a = fakeCallActivity;
        fakeCallActivity.mRlALL = Utils.findRequiredView(view, R$id.rl_all, "field 'mRlALL'");
        fakeCallActivity.mTxvContent = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_content, "field 'mTxvContent'", TextView.class);
        fakeCallActivity.mImgvClose = (ImageView) Utils.findRequiredViewAsType(view, R$id.imgv_close, "field 'mImgvClose'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FakeCallActivity fakeCallActivity = this.f11053a;
        if (fakeCallActivity != null) {
            this.f11053a = null;
            fakeCallActivity.mRlALL = null;
            fakeCallActivity.mTxvContent = null;
            fakeCallActivity.mImgvClose = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
