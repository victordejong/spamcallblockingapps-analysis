package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.content.p033a.C0645i;
import androidx.preference.C1001ac;
import androidx.preference.Preference;
/* loaded from: classes-dex2jar.jar:androidx/preference/ListPreference.class */
public class ListPreference extends DialogPreference {

    /* renamed from: a */
    private CharSequence[] f4038a;

    /* renamed from: b */
    private CharSequence[] f4039b;

    /* renamed from: c */
    private String f4040c;

    /* renamed from: d */
    private String f4041d;

    /* renamed from: e */
    private boolean f4042e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/preference/ListPreference$SavedState.class */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1017e();

        /* renamed from: a */
        String f4043a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f4043a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f4043a);
        }
    }

    /* renamed from: androidx.preference.ListPreference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/ListPreference$a.class */
    public static final class C0989a implements Preference.AbstractC0994e<ListPreference> {

        /* renamed from: a */
        private static C0989a f4044a;

        private C0989a() {
        }

        /* renamed from: a */
        public static C0989a m7499a() {
            if (f4044a == null) {
                f4044a = new C0989a();
            }
            return f4044a;
        }

        @Override // androidx.preference.Preference.AbstractC0994e
        /* renamed from: a */
        public final /* synthetic */ CharSequence mo7444a(ListPreference listPreference) {
            ListPreference listPreference2 = listPreference;
            return TextUtils.isEmpty(listPreference2.m7500o()) ? listPreference2.m7491D().getString(C1001ac.C1007f.f4164c) : listPreference2.m7500o();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4139c, 16842897));
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, (byte) 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4221aa, i, 0);
        this.f4038a = C0645i.m8621d(obtainStyledAttributes, C1001ac.C1009h.f4224ad, C1001ac.C1009h.f4222ab);
        this.f4039b = C0645i.m8621d(obtainStyledAttributes, C1001ac.C1009h.f4225ae, C1001ac.C1009h.f4223ac);
        int i2 = C1001ac.C1009h.f4226af;
        if (C0645i.m8633a(obtainStyledAttributes, i2, i2, false)) {
            m7478a((Preference.AbstractC0994e) C0989a.m7499a());
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4237aq, i, 0);
        this.f4041d = C0645i.m8625b(obtainStyledAttributes2, C1001ac.C1009h.f4219aY, C1001ac.C1009h.f4245ay);
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: L */
    private int m7506L() {
        return m7504b(this.f4040c);
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
        m7505a(savedState.f4043a);
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7473a(CharSequence charSequence) {
        super.mo7473a(charSequence);
        if (charSequence == null && this.f4041d != null) {
            this.f4041d = null;
        } else if (charSequence != null && !charSequence.equals(this.f4041d)) {
            this.f4041d = charSequence.toString();
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final void mo7417a(Object obj) {
        m7505a(mo2d((String) obj));
    }

    /* renamed from: a */
    public final void m7505a(String str) {
        boolean z = !TextUtils.equals(this.f4040c, str);
        if (z || !this.f4042e) {
            this.f4040c = str;
            this.f4042e = true;
            mo3c(str);
            if (z) {
                mo7456h();
            }
        }
    }

    /* renamed from: b */
    public final int m7504b(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f4039b) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (this.f4039b[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    /* renamed from: i */
    public final CharSequence[] m7503i() {
        return this.f4038a;
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
        savedState.f4043a = this.f4040c;
        return savedState;
    }

    /* renamed from: l */
    public final CharSequence[] m7502l() {
        return this.f4039b;
    }

    @Override // androidx.preference.Preference
    /* renamed from: m */
    public final CharSequence mo7455m() {
        if (m7492C() != null) {
            return m7492C().mo7444a(this);
        }
        CharSequence o = m7500o();
        CharSequence m = super.mo7455m();
        String str = this.f4041d;
        if (str == null) {
            return m;
        }
        CharSequence charSequence = o;
        if (o == null) {
            charSequence = "";
        }
        String format = String.format(str, charSequence);
        if (TextUtils.equals(format, m)) {
            return m;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return format;
    }

    /* renamed from: n */
    public final String m7501n() {
        return this.f4040c;
    }

    /* renamed from: o */
    public final CharSequence m7500o() {
        CharSequence[] charSequenceArr;
        int L = m7506L();
        if (L < 0 || (charSequenceArr = this.f4038a) == null) {
            return null;
        }
        return charSequenceArr[L];
    }
}
