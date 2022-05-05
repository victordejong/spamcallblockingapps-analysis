package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:androidx/preference/SwitchPreferenceCompat.class */
public class SwitchPreferenceCompat extends TwoStatePreference {

    /* renamed from: b */
    private final C0997a f4122b;

    /* renamed from: c */
    private CharSequence f4123c;

    /* renamed from: d */
    private CharSequence f4124d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.preference.SwitchPreferenceCompat$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/SwitchPreferenceCompat$a.class */
    public final class C0997a implements CompoundButton.OnCheckedChangeListener {
        C0997a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SwitchPreferenceCompat.this.m7468b(Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                SwitchPreferenceCompat.this.m7412f(z);
            }
        }
    }

    public SwitchPreferenceCompat(Context context) {
        this(context, null);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1001ac.C1002a.f4148l);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f4122b = new C0997a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4261bN, i, i2);
        m7414b((CharSequence) C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4269bV, C1001ac.C1009h.f4262bO));
        m7413c((CharSequence) C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4268bU, C1001ac.C1009h.f4263bP));
        this.f4123c = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4271bX, C1001ac.C1009h.f4265bR);
        mo7456h();
        this.f4124d = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4270bW, C1001ac.C1009h.f4266bS);
        mo7456h();
        m7410g(C0645i.m8633a(obtainStyledAttributes, C1001ac.C1009h.f4267bT, C1001ac.C1009h.f4264bQ, false));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private void m7420c(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f4126a);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.m9312a(this.f4123c);
            switchCompat.m9310b(this.f4124d);
            switchCompat.setOnCheckedChangeListener(this.f4122b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7421a(View view) {
        super.mo7421a(view);
        if (((AccessibilityManager) m7491D().getSystemService("accessibility")).isEnabled()) {
            m7420c(view.findViewById(C1001ac.C1005d.f4157f));
            m7416b(view.findViewById(16908304));
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        super.mo7401a(abVar);
        m7420c(abVar.m7406a(C1001ac.C1005d.f4157f));
        m7415b(abVar);
    }
}
