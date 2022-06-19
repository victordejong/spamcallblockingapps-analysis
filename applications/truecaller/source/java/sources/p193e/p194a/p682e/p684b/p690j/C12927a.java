package p193e.p194a.p682e.p684b.p690j;

import android.widget.CompoundButton;
import com.truecaller.p183ui.settings.callerid.CallerIdSettingsActivity;
/* renamed from: e.a.e.b.j.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/j/a.class */
public final class C12927a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallerIdSettingsActivity f37535a;

    public C12927a(CallerIdSettingsActivity callerIdSettingsActivity) {
        this.f37535a = callerIdSettingsActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ((C12938l) this.f37535a.m34490qa()).f37547f.putBoolean("afterCall", z);
    }
}
