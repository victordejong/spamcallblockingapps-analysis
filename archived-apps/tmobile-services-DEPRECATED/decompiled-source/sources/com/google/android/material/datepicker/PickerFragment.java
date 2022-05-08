package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/PickerFragment.class */
public abstract class PickerFragment<S> extends Fragment {

    /* renamed from: f */
    protected final LinkedHashSet<OnSelectionChangedListener<S>> f10608f = new LinkedHashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G0 */
    public boolean m9888G0(OnSelectionChangedListener<S> onSelectionChangedListener) {
        return this.f10608f.add(onSelectionChangedListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public void m9887H0() {
        this.f10608f.clear();
    }
}
