package com.google.android.material.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import android.widget.ImageButton;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton.class */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* renamed from: k */
    private static final int[] f10792k = {16842912};

    /* renamed from: h */
    private boolean f10793h;

    /* renamed from: i */
    private boolean f10794i;

    /* renamed from: j */
    private boolean f10795j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CheckableImageButton$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.internal.CheckableImageButton.SavedState.1
            @NonNull
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        boolean f10797h;

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m9623b(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        private void m9623b(@NonNull Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f10797h = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10797h ? 1 : 0);
        }
    }

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10794i = true;
        this.f10795j = true;
        ViewCompat.m19183n0(this, new AccessibilityDelegateCompat() { // from class: com.google.android.material.internal.CheckableImageButton.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.m19030a0(CheckableImageButton.this.m9624a());
                accessibilityNodeInfoCompat.m19028b0(CheckableImageButton.this.isChecked());
            }
        });
    }

    /* renamed from: a */
    public boolean m9624a() {
        return this.f10794i;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f10793h;
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f10793h ? ImageButton.mergeDrawableStates(super.onCreateDrawableState(i + f10792k.length), f10792k) : super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        setChecked(savedState.f10797h);
    }

    @Override // android.view.View
    @NonNull
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10797h = this.f10793h;
        return savedState;
    }

    public void setCheckable(boolean z) {
        if (this.f10794i != z) {
            this.f10794i = z;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f10794i && this.f10793h != z) {
            this.f10793h = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    public void setPressable(boolean z) {
        this.f10795j = z;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.f10795j) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f10793h);
    }
}
