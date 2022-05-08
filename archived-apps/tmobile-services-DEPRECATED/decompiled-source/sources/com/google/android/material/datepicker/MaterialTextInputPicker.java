package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Iterator;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialTextInputPicker.class */
public final class MaterialTextInputPicker<S> extends PickerFragment<S> {
    @Nullable

    /* renamed from: g */
    private DateSelector<S> f10585g;
    @Nullable

    /* renamed from: h */
    private CalendarConstraints f10586h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: I0 */
    public static <T> MaterialTextInputPicker<T> m9919I0(@NonNull DateSelector<T> dateSelector, @NonNull CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker<T> materialTextInputPicker = new MaterialTextInputPicker<>();
        Bundle bundle = new Bundle();
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f10585g = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f10586h = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f10585g.mo9874N(layoutInflater, viewGroup, bundle, this.f10586h, new OnSelectionChangedListener<S>() { // from class: com.google.android.material.datepicker.MaterialTextInputPicker.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            /* renamed from: a */
            public void mo9890a() {
                Iterator<OnSelectionChangedListener<S>> it = MaterialTextInputPicker.this.f10608f.iterator();
                while (it.hasNext()) {
                    it.next().mo9890a();
                }
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            /* renamed from: b */
            public void mo9889b(S s) {
                Iterator<OnSelectionChangedListener<S>> it = MaterialTextInputPicker.this.f10608f.iterator();
                while (it.hasNext()) {
                    it.next().mo9889b(s);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f10585g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f10586h);
    }
}
