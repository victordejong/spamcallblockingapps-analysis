package com.google.android.material.datepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C1027R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/DateFormatTextWatcher.class */
abstract class DateFormatTextWatcher implements TextWatcher {

    /* renamed from: f */
    private final String f10516f;

    /* renamed from: g */
    private final DateFormat f10517g;
    @NonNull

    /* renamed from: h */
    private final TextInputLayout f10518h;

    /* renamed from: i */
    private final CalendarConstraints f10519i;

    /* renamed from: j */
    private final String f10520j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DateFormatTextWatcher(String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f10516f = str;
        this.f10517g = dateFormat;
        this.f10518h = textInputLayout;
        this.f10519i = calendarConstraints;
        this.f10520j = textInputLayout.getContext().getString(C1027R.string.mtrl_picker_out_of_range);
    }

    /* renamed from: a */
    void mo9862a() {
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    /* renamed from: b */
    abstract void mo9861b(@Nullable Long l);

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        if (TextUtils.isEmpty(charSequence)) {
            this.f10518h.setError(null);
            mo9861b(null);
            return;
        }
        try {
            Date parse = this.f10517g.parse(charSequence.toString());
            this.f10518h.setError(null);
            long time = parse.getTime();
            if (!this.f10519i.m10004f().mo9973X(time) || !this.f10519i.m9998l(time)) {
                this.f10518h.setError(String.format(this.f10520j, DateStrings.m9985c(time)));
                mo9862a();
            } else {
                mo9861b(Long.valueOf(parse.getTime()));
            }
        } catch (ParseException e) {
            String string = this.f10518h.getContext().getString(C1027R.string.mtrl_picker_invalid_format);
            String format = String.format(this.f10518h.getContext().getString(C1027R.string.mtrl_picker_invalid_format_use), this.f10516f);
            String format2 = String.format(this.f10518h.getContext().getString(C1027R.string.mtrl_picker_invalid_format_example), this.f10517g.format(new Date(UtcDates.m9838p().getTimeInMillis())));
            TextInputLayout textInputLayout = this.f10518h;
            textInputLayout.setError(string + "\n" + format + "\n" + format2);
            mo9862a();
        }
    }
}
