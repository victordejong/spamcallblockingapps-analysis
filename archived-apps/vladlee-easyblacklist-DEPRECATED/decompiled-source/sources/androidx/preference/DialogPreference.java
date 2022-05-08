package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:androidx/preference/DialogPreference.class */
public abstract class DialogPreference extends Preference {

    /* renamed from: a */
    private CharSequence f4024a;

    /* renamed from: b */
    private CharSequence f4025b;

    /* renamed from: c */
    private Drawable f4026c;

    /* renamed from: d */
    private CharSequence f4027d;

    /* renamed from: e */
    private CharSequence f4028e;

    /* renamed from: f */
    private int f4029f;

    /* renamed from: androidx.preference.DialogPreference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/DialogPreference$a.class */
    public interface AbstractC0986a {
        /* renamed from: a */
        <T extends Preference> T mo7391a(CharSequence charSequence);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4139c, 16842897));
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4171D, i, 0);
        this.f4024a = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4181N, C1001ac.C1009h.f4172E);
        if (this.f4024a == null) {
            this.f4024a = m7448v();
        }
        this.f4025b = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4180M, C1001ac.C1009h.f4173F);
        int i2 = C1001ac.C1009h.f4178K;
        int i3 = C1001ac.C1009h.f4174G;
        Drawable drawable = obtainStyledAttributes.getDrawable(i2);
        this.f4026c = drawable == null ? obtainStyledAttributes.getDrawable(i3) : drawable;
        this.f4027d = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4183P, C1001ac.C1009h.f4175H);
        this.f4028e = C0645i.m8625b(obtainStyledAttributes, C1001ac.C1009h.f4182O, C1001ac.C1009h.f4176I);
        this.f4029f = C0645i.m8634a(obtainStyledAttributes, C1001ac.C1009h.f4179L, C1001ac.C1009h.f4177J, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public final CharSequence m7517a() {
        return this.f4024a;
    }

    /* renamed from: b */
    public final CharSequence m7516b() {
        return this.f4025b;
    }

    /* renamed from: c */
    public final Drawable m7515c() {
        return this.f4026c;
    }

    /* renamed from: d */
    public final CharSequence m7514d() {
        return this.f4027d;
    }

    /* renamed from: e */
    public final CharSequence m7513e() {
        return this.f4028e;
    }

    /* renamed from: f */
    public final int m7512f() {
        return this.f4029f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: g */
    public void mo7411g() {
        m7489F().m7362a(this);
    }
}
