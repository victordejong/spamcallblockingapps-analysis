package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Pair;
import java.util.Collection;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/DateSelector.class */
public interface DateSelector<S> extends Parcelable {
    @NonNull
    /* renamed from: N */
    View mo9874N(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, @NonNull CalendarConstraints calendarConstraints, @NonNull OnSelectionChangedListener<S> onSelectionChangedListener);

    @StyleRes
    /* renamed from: V */
    int mo9873V(Context context);

    /* renamed from: Z */
    boolean mo9872Z();

    @NonNull
    /* renamed from: e0 */
    Collection<Long> mo9867e0();

    @Nullable
    /* renamed from: i0 */
    S mo9866i0();

    /* renamed from: o0 */
    void mo9865o0(long j);

    @NonNull
    /* renamed from: p */
    String mo9864p(Context context);

    @NonNull
    /* renamed from: t */
    Collection<Pair<Long, Long>> mo9863t();
}
