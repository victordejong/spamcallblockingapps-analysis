package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.BaseAdapter;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/MonthAdapter.class */
public class MonthAdapter extends BaseAdapter {

    /* renamed from: j */
    static final int f10595j = UtcDates.m9836r().getMaximum(4);

    /* renamed from: f */
    final Month f10596f;

    /* renamed from: g */
    final DateSelector<?> f10597g;

    /* renamed from: h */
    CalendarStyle f10598h;

    /* renamed from: i */
    final CalendarConstraints f10599i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MonthAdapter(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.f10596f = month;
        this.f10597g = dateSelector;
        this.f10599i = calendarConstraints;
    }

    /* renamed from: e */
    private void m9902e(Context context) {
        if (this.f10598h == null) {
            this.f10598h = new CalendarStyle(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public int m9906a(int i) {
        return m9905b() + (i - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m9905b() {
        return this.f10596f.m9914h();
    }

    @Nullable
    /* renamed from: c */
    public Long getItem(int i) {
        if (i < this.f10596f.m9914h() || i > m9899h()) {
            return null;
        }
        return Long.valueOf(this.f10596f.m9913i(m9898i(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00b2  */
    @androidx.annotation.NonNull
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.widget.TextView getView(int r6, @androidx.annotation.Nullable android.view.View r7, @androidx.annotation.NonNull android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.MonthAdapter.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m9901f(int i) {
        return i % this.f10596f.f10592j == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public boolean m9900g(int i) {
        boolean z = true;
        if ((i + 1) % this.f10596f.f10592j != 0) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f10596f.f10593k + m9905b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f10596f.f10592j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public int m9899h() {
        return (this.f10596f.m9914h() + this.f10596f.f10593k) - 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* renamed from: i */
    int m9898i(int i) {
        return (i - this.f10596f.m9914h()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public boolean m9897j(int i) {
        return i >= m9905b() && i <= m9899h();
    }
}
