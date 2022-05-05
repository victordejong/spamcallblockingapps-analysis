package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:androidx/preference/CheckBoxPreference.class */
public class CheckBoxPreference extends TwoStatePreference {

    /* renamed from: b */
    private final C0985a f4022b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.preference.CheckBoxPreference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/CheckBoxPreference$a.class */
    public final class C0985a implements CompoundButton.OnCheckedChangeListener {
        C0985a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!CheckBoxPreference.this.m7468b(Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                CheckBoxPreference.this.m7412f(z);
            }
        }
    }

    public CheckBoxPreference(Context context) {
        this(context, null);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4137a, 16842895));
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f4022b = new C0985a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4319s, i, i2);
        m7414b((CharSequence) C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4325y, C1001ac.C1009h.f4320t));
        m7413c((CharSequence) C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4324x, C1001ac.C1009h.f4321u));
        m7410g(C0645i.m8633a(obtainStyledAttributes, C1001ac.C1009h.f4323w, C1001ac.C1009h.f4322v, false));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private void m7518c(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f4126a);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.f4022b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7421a(View view) {
        super.mo7421a(view);
        if (((AccessibilityManager) m7491D().getSystemService("accessibility")).isEnabled()) {
            m7518c(view.findViewById(16908289));
            m7416b(view.findViewById(16908304));
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        super.mo7401a(abVar);
        m7518c(abVar.m7406a(16908289));
        m7415b(abVar);
    }
}
