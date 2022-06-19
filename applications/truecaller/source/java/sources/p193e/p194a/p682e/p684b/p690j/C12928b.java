package p193e.p194a.p682e.p684b.p690j;

import android.widget.CompoundButton;
import com.truecaller.p183ui.settings.callerid.CallerIdSettingsActivity;
/* renamed from: e.a.e.b.j.b */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/j/b.class */
public final class C12928b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ CallerIdSettingsActivity f37536a;

    public C12928b(CallerIdSettingsActivity callerIdSettingsActivity) {
        this.f37536a = callerIdSettingsActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ((C12938l) this.f37536a.m34490qa()).f37547f.putBoolean("afterCallForPbContacts", z);
    }
}
