package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
import androidx.preference.Preference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/preference/MultiSelectListPreference.class */
public class MultiSelectListPreference extends DialogPreference {

    /* renamed from: a */
    private CharSequence[] f4045a;

    /* renamed from: b */
    private CharSequence[] f4046b;

    /* renamed from: c */
    private Set<String> f4047c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/preference/MultiSelectListPreference$SavedState.class */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1020h();

        /* renamed from: a */
        Set<String> f4048a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            int readInt = parcel.readInt();
            this.f4048a = new HashSet();
            String[] strArr = new String[readInt];
            parcel.readStringArray(strArr);
            Collections.addAll(this.f4048a, strArr);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4048a.size());
            Set<String> set = this.f4048a;
            parcel.writeStringArray((String[]) set.toArray(new String[set.size()]));
        }
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4139c, 16842897));
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private MultiSelectListPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, (byte) 0);
        this.f4047c = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4230aj, i, 0);
        this.f4045a = C0645i.m8621d(obtainStyledAttributes, C1001ac.C1009h.f4233am, C1001ac.C1009h.f4231ak);
        this.f4046b = C0645i.m8621d(obtainStyledAttributes, C1001ac.C1009h.f4234an, C1001ac.C1009h.f4232al);
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final Object mo7419a(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
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
        m7498a(savedState.f4048a);
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final void mo7417a(Object obj) {
        m7498a(m7464c((Set) obj));
    }

    /* renamed from: a */
    public final void m7498a(Set<String> set) {
        this.f4047c.clear();
        this.f4047c.addAll(set);
        m7467b(set);
        mo7456h();
    }

    /* renamed from: i */
    public final CharSequence[] m7497i() {
        return this.f4045a;
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
        savedState.f4048a = this.f4047c;
        return savedState;
    }

    /* renamed from: l */
    public final CharSequence[] m7496l() {
        return this.f4046b;
    }

    /* renamed from: n */
    public final Set<String> m7495n() {
        return this.f4047c;
    }
}
