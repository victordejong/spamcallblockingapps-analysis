package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
import androidx.preference.C1042y;
/* loaded from: classes-dex2jar.jar:androidx/preference/PreferenceScreen.class */
public final class PreferenceScreen extends PreferenceGroup {

    /* renamed from: b */
    private boolean f4102b = true;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4144h, 16842891));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.PreferenceGroup
    /* renamed from: d */
    public final boolean mo7427d() {
        return false;
    }

    /* renamed from: f */
    public final boolean m7426f() {
        return this.f4102b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: g */
    public final void mo7411g() {
        C1042y.AbstractC1044b i;
        if (m7454p() == null && m7453q() == null && m7432c() != 0 && (i = m7489F().m7348i()) != null) {
            i.mo7346a(this);
        }
    }
}
