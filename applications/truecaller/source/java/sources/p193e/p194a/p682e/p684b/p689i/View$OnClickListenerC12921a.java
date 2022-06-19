package p193e.p194a.p682e.p684b.p689i;

import android.view.View;
import android.widget.RadioButton;
import com.truecaller.C2752R;
import com.truecaller.p183ui.settings.appearance.AppearanceSettingsActivity;
import com.truecaller.p183ui.settings.appearance.ThemeType;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.e.b.i.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/i/a.class */
public final class View$OnClickListenerC12921a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ RadioButton f37527a;

    /* renamed from: b */
    public final /* synthetic */ AppearanceSettingsActivity f37528b;

    public View$OnClickListenerC12921a(RadioButton radioButton, AppearanceSettingsActivity appearanceSettingsActivity) {
        this.f37527a = radioButton;
        this.f37528b = appearanceSettingsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AppearanceSettingsActivity appearanceSettingsActivity = this.f37528b;
        RadioButton radioButton = this.f37527a;
        int i = AppearanceSettingsActivity.f15845l;
        Objects.requireNonNull(appearanceSettingsActivity);
        if (radioButton instanceof RadioButton) {
            switch (radioButton.getId()) {
                case C2752R.C2754id.radioThemeBright /* 2131365323 */:
                    C12924d c12924d = appearanceSettingsActivity.f15846d;
                    if (c12924d != null) {
                        c12924d.m22402Jj(ThemeType.BRIGHT_MODE);
                        return;
                    } else {
                        l.l("presenter");
                        throw null;
                    }
                case C2752R.C2754id.radioThemeDark /* 2131365324 */:
                    C12924d c12924d2 = appearanceSettingsActivity.f15846d;
                    if (c12924d2 != null) {
                        c12924d2.m22402Jj(ThemeType.DARK_MODE);
                        return;
                    } else {
                        l.l("presenter");
                        throw null;
                    }
                case C2752R.C2754id.radioThemeInherit /* 2131365325 */:
                    C12924d c12924d3 = appearanceSettingsActivity.f15846d;
                    if (c12924d3 != null) {
                        c12924d3.m22402Jj(ThemeType.DEFAULT_INHERIT);
                        return;
                    } else {
                        l.l("presenter");
                        throw null;
                    }
                default:
                    return;
            }
        }
    }
}
