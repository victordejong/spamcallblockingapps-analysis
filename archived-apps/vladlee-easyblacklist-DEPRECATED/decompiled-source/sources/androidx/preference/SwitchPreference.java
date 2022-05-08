package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:androidx/preference/SwitchPreference.class */
public class SwitchPreference extends TwoStatePreference {

    /* renamed from: b */
    private final C0996a f4118b;

    /* renamed from: c */
    private CharSequence f4119c;

    /* renamed from: d */
    private CharSequence f4120d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.preference.SwitchPreference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/SwitchPreference$a.class */
    public final class C0996a implements CompoundButton.OnCheckedChangeListener {
        C0996a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SwitchPreference.this.m7468b(Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                SwitchPreference.this.m7412f(z);
            }
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4149m, 16843629));
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private SwitchPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, 0);
        this.f4118b = new C0996a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4250bC, i, 0);
        m7414b((CharSequence) C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4258bK, C1001ac.C1009h.f4251bD));
        m7413c((CharSequence) C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4257bJ, C1001ac.C1009h.f4252bE));
        this.f4119c = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4260bM, C1001ac.C1009h.f4254bG);
        mo7456h();
        this.f4120d = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4259bL, C1001ac.C1009h.f4255bH);
        mo7456h();
        m7410g(C0645i.m8633a(obtainStyledAttributes, C1001ac.C1009h.f4256bI, C1001ac.C1009h.f4253bF, false));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private void m7422c(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.f4126a);
        }
        if (z) {
            Switch r0 = (Switch) view;
            r0.setTextOn(this.f4119c);
            r0.setTextOff(this.f4120d);
            r0.setOnCheckedChangeListener(this.f4118b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7421a(View view) {
        super.mo7421a(view);
        if (((AccessibilityManager) m7491D().getSystemService("accessibility")).isEnabled()) {
            m7422c(view.findViewById(16908352));
            m7416b(view.findViewById(16908304));
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        super.mo7401a(abVar);
        m7422c(abVar.m7406a(16908352));
        m7415b(abVar);
    }
}
