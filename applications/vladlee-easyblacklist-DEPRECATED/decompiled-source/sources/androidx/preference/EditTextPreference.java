package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
import androidx.preference.Preference;
/* loaded from: classes-dex2jar.jar:androidx/preference/EditTextPreference.class */
public class EditTextPreference extends DialogPreference {

    /* renamed from: a */
    private String f4034a;

    /* renamed from: b */
    private AbstractC0987a f4035b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/preference/EditTextPreference$SavedState.class */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1014b();

        /* renamed from: a */
        String f4036a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f4036a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f4036a);
        }
    }

    /* renamed from: androidx.preference.EditTextPreference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/EditTextPreference$a.class */
    public interface AbstractC0987a {
    }

    /* renamed from: androidx.preference.EditTextPreference$b */
    /* loaded from: classes-dex2jar.jar:androidx/preference/EditTextPreference$b.class */
    public static final class C0988b implements Preference.AbstractC0994e<EditTextPreference> {

        /* renamed from: a */
        private static C0988b f4037a;

        private C0988b() {
        }

        /* renamed from: a */
        public static C0988b m7507a() {
            if (f4037a == null) {
                f4037a = new C0988b();
            }
            return f4037a;
        }

        @Override // androidx.preference.Preference.AbstractC0994e
        /* renamed from: a */
        public final /* synthetic */ CharSequence mo7444a(EditTextPreference editTextPreference) {
            EditTextPreference editTextPreference2 = editTextPreference;
            return TextUtils.isEmpty(editTextPreference2.m7509i()) ? editTextPreference2.m7491D().getString(C1001ac.C1007f.f4164c) : editTextPreference2.m7509i();
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4141e, 16842898));
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private EditTextPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, (byte) 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4185R, i, 0);
        int i2 = C1001ac.C1009h.f4186S;
        if (C0645i.m8633a(obtainStyledAttributes, i2, i2, false)) {
            m7478a((Preference.AbstractC0994e) C0988b.m7507a());
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final Object mo7419a(TypedArray typedArray, int i) {
        return typedArray.getString(i);
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
        m7510a(savedState.f4036a);
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final void mo7417a(Object obj) {
        m7510a(mo2d((String) obj));
    }

    /* renamed from: a */
    public final void m7510a(String str) {
        boolean j = mo7409j();
        this.f4034a = str;
        mo3c(str);
        boolean j2 = mo7409j();
        if (j2 != j) {
            mo7433b(j2);
        }
        mo7456h();
    }

    /* renamed from: i */
    public final String m7509i() {
        return this.f4034a;
    }

    @Override // androidx.preference.Preference
    /* renamed from: j */
    public final boolean mo7409j() {
        return TextUtils.isEmpty(this.f4034a) || super.mo7409j();
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
        savedState.f4036a = this.f4034a;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final AbstractC0987a m7508l() {
        return this.f4035b;
    }
}
