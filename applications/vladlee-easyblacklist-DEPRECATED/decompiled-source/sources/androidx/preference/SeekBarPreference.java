package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.C1001ac;
import androidx.preference.Preference;
/* loaded from: classes-dex2jar.jar:androidx/preference/SeekBarPreference.class */
public class SeekBarPreference extends Preference {

    /* renamed from: a */
    int f4103a;

    /* renamed from: b */
    int f4104b;

    /* renamed from: c */
    boolean f4105c;

    /* renamed from: d */
    SeekBar f4106d;

    /* renamed from: e */
    boolean f4107e;

    /* renamed from: f */
    boolean f4108f;

    /* renamed from: g */
    private int f4109g;

    /* renamed from: h */
    private int f4110h;

    /* renamed from: i */
    private TextView f4111i;

    /* renamed from: j */
    private boolean f4112j;

    /* renamed from: k */
    private SeekBar.OnSeekBarChangeListener f4113k;

    /* renamed from: l */
    private View.OnKeyListener f4114l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/preference/SeekBarPreference$SavedState.class */
    public static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1012af();

        /* renamed from: a */
        int f4115a;

        /* renamed from: b */
        int f4116b;

        /* renamed from: c */
        int f4117c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f4115a = parcel.readInt();
            this.f4116b = parcel.readInt();
            this.f4117c = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4115a);
            parcel.writeInt(this.f4116b);
            parcel.writeInt(this.f4117c);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1001ac.C1002a.f4147k);
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private SeekBarPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, 0);
        this.f4113k = new C1010ad(this);
        this.f4114l = new View$OnKeyListenerC1011ae(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4291br, i, 0);
        this.f4104b = obtainStyledAttributes.getInt(C1001ac.C1009h.f4294bu, 0);
        int i2 = obtainStyledAttributes.getInt(C1001ac.C1009h.f4292bs, 100);
        int i3 = this.f4104b;
        int i4 = i2 < i3 ? i3 : i2;
        if (i4 != this.f4109g) {
            this.f4109g = i4;
            mo7456h();
        }
        int i5 = obtainStyledAttributes.getInt(C1001ac.C1009h.f4295bv, 0);
        if (i5 != this.f4110h) {
            this.f4110h = Math.min(this.f4109g - this.f4104b, Math.abs(i5));
            mo7456h();
        }
        this.f4107e = obtainStyledAttributes.getBoolean(C1001ac.C1009h.f4293bt, true);
        this.f4112j = obtainStyledAttributes.getBoolean(C1001ac.C1009h.f4296bw, false);
        this.f4108f = obtainStyledAttributes.getBoolean(C1001ac.C1009h.f4297bx, false);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m7425a(int i, boolean z) {
        int i2 = this.f4104b;
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        int i4 = this.f4109g;
        int i5 = i3;
        if (i3 > i4) {
            i5 = i4;
        }
        if (i5 != this.f4103a) {
            this.f4103a = i5;
            m7423h(this.f4103a);
            m7459f(i5);
            if (z) {
                mo7456h();
            }
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final Object mo7419a(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7418a(Parcelable parcelable) {
        if (!parcelable.getClass().equals(SavedState.class)) {
            super.mo7418a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.mo7418a(savedState.getSuperState());
        this.f4103a = savedState.f4115a;
        this.f4104b = savedState.f4116b;
        this.f4109g = savedState.f4117c;
        mo7456h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7424a(SeekBar seekBar) {
        int progress = this.f4104b + seekBar.getProgress();
        if (progress == this.f4103a) {
            return;
        }
        if (m7468b(Integer.valueOf(progress))) {
            m7425a(progress, false);
            return;
        }
        seekBar.setProgress(this.f4103a - this.f4104b);
        m7423h(this.f4103a);
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        super.mo7401a(abVar);
        abVar.f4658a.setOnKeyListener(this.f4114l);
        this.f4106d = (SeekBar) abVar.m7406a(C1001ac.C1005d.f4154c);
        this.f4111i = (TextView) abVar.m7406a(C1001ac.C1005d.f4155d);
        if (this.f4112j) {
            this.f4111i.setVisibility(0);
        } else {
            this.f4111i.setVisibility(8);
            this.f4111i = null;
        }
        SeekBar seekBar = this.f4106d;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.f4113k);
        this.f4106d.setMax(this.f4109g - this.f4104b);
        int i = this.f4110h;
        if (i != 0) {
            this.f4106d.setKeyProgressIncrement(i);
        } else {
            this.f4110h = this.f4106d.getKeyProgressIncrement();
        }
        this.f4106d.setProgress(this.f4103a - this.f4104b);
        m7423h(this.f4103a);
        this.f4106d.setEnabled(mo7442w());
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    protected final void mo7417a(Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = 0;
        }
        m7425a(m7457g(((Integer) obj2).intValue()), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m7423h(int i) {
        TextView textView = this.f4111i;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        }
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
        savedState.f4115a = this.f4103a;
        savedState.f4116b = this.f4104b;
        savedState.f4117c = this.f4109g;
        return savedState;
    }
}
