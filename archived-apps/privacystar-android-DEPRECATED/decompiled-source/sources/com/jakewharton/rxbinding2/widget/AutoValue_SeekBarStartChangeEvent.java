package com.jakewharton.rxbinding2.widget;

import android.support.annotation.NonNull;
import android.widget.SeekBar;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoValue_SeekBarStartChangeEvent.class */
final class AutoValue_SeekBarStartChangeEvent extends SeekBarStartChangeEvent {
    private final SeekBar view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_SeekBarStartChangeEvent(SeekBar seekBar) {
        if (seekBar == null) {
            throw new NullPointerException("Null view");
        }
        this.view = seekBar;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SeekBarStartChangeEvent) {
            return this.view.equals(((SeekBarStartChangeEvent) obj).view());
        }
        return false;
    }

    public int hashCode() {
        return this.view.hashCode() ^ 1000003;
    }

    public String toString() {
        return "SeekBarStartChangeEvent{view=" + this.view + "}";
    }

    @Override // com.jakewharton.rxbinding2.widget.SeekBarChangeEvent
    @NonNull
    public SeekBar view() {
        return this.view;
    }
}
