package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MaterialStyledDatePickerDialog.class */
public class MaterialStyledDatePickerDialog extends DatePickerDialog {
    @NonNull

    /* renamed from: f */
    private final Drawable f10583f;
    @NonNull

    /* renamed from: g */
    private final Rect f10584g;

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f10583f);
        getWindow().getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(this, this.f10584g));
    }
}
