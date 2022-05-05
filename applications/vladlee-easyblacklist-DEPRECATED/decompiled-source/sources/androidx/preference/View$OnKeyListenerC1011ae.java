package androidx.preference;

import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
/* renamed from: androidx.preference.ae */
/* loaded from: classes-dex2jar.jar:androidx/preference/ae.class */
final class View$OnKeyListenerC1011ae implements View.OnKeyListener {

    /* renamed from: a */
    final /* synthetic */ SeekBarPreference f4328a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnKeyListenerC1011ae(SeekBarPreference seekBarPreference) {
        this.f4328a = seekBarPreference;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        if ((!this.f4328a.f4107e && (i == 21 || i == 22)) || i == 23 || i == 66) {
            return false;
        }
        if (this.f4328a.f4106d != null) {
            return this.f4328a.f4106d.onKeyDown(i, keyEvent);
        }
        Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
        return false;
    }
}
