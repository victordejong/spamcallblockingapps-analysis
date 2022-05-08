package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.content.C0646b;
import androidx.core.content.p033a.C0645i;
import androidx.core.p037g.p038a.C0696d;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:androidx/preference/PreferenceCategory.class */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4142f, 16842892));
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private PreferenceCategory(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, (byte) 0);
    }

    @Override // androidx.preference.Preference
    @Deprecated
    /* renamed from: a */
    public final void mo7443a(C0696d dVar) {
        C0696d.C0699c v;
        super.mo7443a(dVar);
        if (Build.VERSION.SDK_INT < 28 && (v = dVar.m8468v()) != null) {
            dVar.m8513b(C0696d.C0699c.m8460a(v.m8458c(), v.m8457d(), v.m8461a(), v.m8459b(), true, v.m8456e()));
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        TextView textView;
        super.mo7401a(abVar);
        if (Build.VERSION.SDK_INT >= 28) {
            abVar.f4658a.setAccessibilityHeading(true);
        } else if (Build.VERSION.SDK_INT < 21) {
            TypedValue typedValue = new TypedValue();
            if (!m7491D().getTheme().resolveAttribute(C1001ac.C1002a.f4138b, typedValue, true) || (textView = (TextView) abVar.m7406a(16908310)) == null) {
                return;
            }
            if (textView.getCurrentTextColor() == C0646b.m8612c(m7491D(), C1001ac.C1003b.f4150a)) {
                textView.setTextColor(typedValue.data);
            }
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: j */
    public final boolean mo7409j() {
        return !super.mo7442w();
    }

    @Override // androidx.preference.Preference
    /* renamed from: w */
    public final boolean mo7442w() {
        return false;
    }
}
