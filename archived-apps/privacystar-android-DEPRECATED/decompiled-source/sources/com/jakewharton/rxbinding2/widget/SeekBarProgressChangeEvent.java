package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.SeekBar;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/SeekBarProgressChangeEvent.class */
public abstract class SeekBarProgressChangeEvent extends SeekBarChangeEvent {
    @CheckResult
    @NonNull
    public static SeekBarProgressChangeEvent create(@NonNull SeekBar seekBar, int i, boolean z) {
        return new AutoValue_SeekBarProgressChangeEvent(seekBar, i, z);
    }

    public abstract boolean fromUser();

    public abstract int progress();
}
