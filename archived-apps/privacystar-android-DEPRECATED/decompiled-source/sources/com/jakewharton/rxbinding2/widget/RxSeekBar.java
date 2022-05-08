package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.SeekBar;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxSeekBar.class */
public final class RxSeekBar {
    private RxSeekBar() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<SeekBarChangeEvent> changeEvents(@NonNull SeekBar seekBar) {
        Preconditions.checkNotNull(seekBar, "view == null");
        return new SeekBarChangeEventObservable(seekBar);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Integer> changes(@NonNull SeekBar seekBar) {
        Preconditions.checkNotNull(seekBar, "view == null");
        return new SeekBarChangeObservable(seekBar, null);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Integer> systemChanges(@NonNull SeekBar seekBar) {
        Preconditions.checkNotNull(seekBar, "view == null");
        return new SeekBarChangeObservable(seekBar, false);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Integer> userChanges(@NonNull SeekBar seekBar) {
        Preconditions.checkNotNull(seekBar, "view == null");
        return new SeekBarChangeObservable(seekBar, true);
    }
}
