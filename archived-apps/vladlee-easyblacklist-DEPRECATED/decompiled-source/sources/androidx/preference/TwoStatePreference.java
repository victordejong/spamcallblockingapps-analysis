package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.preference.Preference;
/* loaded from: classes-dex2jar.jar:androidx/preference/TwoStatePreference.class */
public abstract class TwoStatePreference extends Preference {

    /* renamed from: a */
    protected boolean f4126a;

    /* renamed from: b */
    private CharSequence f4127b;

    /* renamed from: c */
    private CharSequence f4128c;

    /* renamed from: d */
    private boolean f4129d;

    /* renamed from: e */
    private boolean f4130e;

    /* loaded from: classes-dex2jar.jar:androidx/preference/TwoStatePreference$SavedState.class */
    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1013ag();

        /* renamed from: a */
        boolean f4131a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f4131a = parcel.readInt() != 1 ? false : true;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4131a ? 1 : 0);
        }
    }

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final Object mo7419a(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7418a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.mo7418a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.mo7418a(savedState.getSuperState());
        m7412f(savedState.f4131a);
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final void mo7417a(Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = Boolean.FALSE;
        }
        m7412f(mo0e(((Boolean) obj2).booleanValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7416b(android.view.View r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof android.widget.TextView
            if (r0 != 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r4
            android.widget.TextView r0 = (android.widget.TextView) r0
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r3
            boolean r0 = r0.f4126a
            if (r0 == 0) goto L_0x0030
            r0 = r3
            java.lang.CharSequence r0 = r0.f4127b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0030
            r0 = r3
            java.lang.CharSequence r0 = r0.f4127b
            r4 = r0
        L_0x0025:
            r0 = r5
            r1 = r4
            r0.setText(r1)
            r0 = 0
            r7 = r0
            goto L_0x004f
        L_0x0030:
            r0 = r6
            r7 = r0
            r0 = r3
            boolean r0 = r0.f4126a
            if (r0 != 0) goto L_0x004f
            r0 = r6
            r7 = r0
            r0 = r3
            java.lang.CharSequence r0 = r0.f4128c
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x004f
            r0 = r3
            java.lang.CharSequence r0 = r0.f4128c
            r4 = r0
            goto L_0x0025
        L_0x004f:
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x006d
            r0 = r3
            java.lang.CharSequence r0 = r0.mo7455m()
            r4 = r0
            r0 = r7
            r6 = r0
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x006d
            r0 = r5
            r1 = r4
            r0.setText(r1)
            r0 = 0
            r6 = r0
        L_0x006d:
            r0 = 8
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0078
            r0 = 0
            r7 = r0
        L_0x0078:
            r0 = r7
            r1 = r5
            int r1 = r1.getVisibility()
            if (r0 == r1) goto L_0x0087
            r0 = r5
            r1 = r7
            r0.setVisibility(r1)
        L_0x0087:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.m7416b(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m7415b(C1000ab abVar) {
        m7416b(abVar.m7406a(16908304));
    }

    /* renamed from: b */
    public final void m7414b(CharSequence charSequence) {
        this.f4127b = charSequence;
        if (this.f4126a) {
            mo7456h();
        }
    }

    /* renamed from: c */
    public final void m7413c(CharSequence charSequence) {
        this.f4128c = charSequence;
        if (!this.f4126a) {
            mo7456h();
        }
    }

    /* renamed from: f */
    public final void m7412f(boolean z) {
        boolean z2 = this.f4126a != z;
        if (z2 || !this.f4129d) {
            this.f4126a = z;
            this.f4129d = true;
            mo1d(z);
            if (z2) {
                mo7433b(mo7409j());
                mo7456h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: g */
    public final void mo7411g() {
        super.mo7411g();
        boolean z = !this.f4126a;
        if (m7468b(Boolean.valueOf(z))) {
            m7412f(z);
        }
    }

    /* renamed from: g */
    public final void m7410g(boolean z) {
        this.f4130e = z;
    }

    @Override // androidx.preference.Preference
    /* renamed from: j */
    public final boolean mo7409j() {
        return (this.f4130e ? this.f4126a : !this.f4126a) || super.mo7409j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: k */
    public final Parcelable mo7408k() {
        Parcelable k = super.mo7408k();
        if (m7494A()) {
            return k;
        }
        SavedState savedState = new SavedState(k);
        savedState.f4131a = this.f4126a;
        return savedState;
    }
}
