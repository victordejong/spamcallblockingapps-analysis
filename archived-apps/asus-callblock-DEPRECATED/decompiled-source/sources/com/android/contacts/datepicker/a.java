package com.android.contacts.datepicker;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.contacts.datepicker.DatePicker;
import com.android.contacts.util.DateUtils;
import java.text.DateFormat;
import java.util.Calendar;
/* loaded from: classes-dex2jar.jar:com/android/contacts/datepicker/a.class */
public final class a extends AlertDialog implements DialogInterface.OnClickListener, DatePicker.a {

    /* renamed from: a  reason: collision with root package name */
    public static int f809a = DatePicker.f801a;

    /* renamed from: b  reason: collision with root package name */
    private final DatePicker f810b;
    private final AbstractC0031a c;
    private final DateFormat d;
    private final DateFormat e;
    private int f;
    private int g;
    private int h;
    private boolean i;

    /* renamed from: com.android.contacts.datepicker.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/datepicker/a$a.class */
    public interface AbstractC0031a {
        void a(int i, int i2, int i3);
    }

    private a(Context context, int i, AbstractC0031a aVar, int i2, int i3, int i4, boolean z) {
        super(context, i);
        this.i = true;
        this.c = aVar;
        this.f = i2;
        this.g = i3;
        this.h = i4;
        this.d = DateFormat.getDateInstance(0);
        this.e = DateUtils.getLocalizedDateFormatWithoutYear(getContext());
        b(this.f, this.g, this.h);
        setButton(-1, context.getText(Resources.getSystem().getIdentifier("date_time_set", "string", "android")), this);
        setButton(-2, context.getText(17039360), (DialogInterface.OnClickListener) null);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427495, (ViewGroup) null);
        setView(inflate);
        this.f810b = (DatePicker) inflate.findViewById(2131296636);
        this.f810b.a(this.f, this.g, this.h, z, this);
    }

    public a(Context context, AbstractC0031a aVar, int i, int i2, int i3, boolean z) {
        this(context, context.getApplicationInfo().targetSdkVersion >= 11 ? Resources.getSystem().getIdentifier("Theme_DeviceDefault_Light_Dialog_Alert", "style", "android") : Resources.getSystem().getIdentifier("Theme_Dialog_Alert", "style", "android"), aVar, i, i2, i3, z);
    }

    private void b(int i, int i2, int i3) {
        if (this.i) {
            Calendar instance = Calendar.getInstance();
            instance.set(1, i);
            instance.set(2, i2);
            instance.set(5, i3);
            setTitle((i == f809a ? this.e : this.d).format(instance.getTime()));
        }
    }

    @Override // com.android.contacts.datepicker.DatePicker.a
    public final void a(int i, int i2, int i3) {
        b(i, i2, i3);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (this.c != null) {
            this.f810b.clearFocus();
            this.c.a(this.f810b.a(), this.f810b.c, this.f810b.f802b);
        }
    }

    @Override // android.app.Dialog
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i = bundle.getInt("year");
        int i2 = bundle.getInt("month");
        int i3 = bundle.getInt("day");
        this.f810b.a(i, i2, i3, bundle.getBoolean("year_optional"), this);
        b(i, i2, i3);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.putInt("year", this.f810b.a());
        onSaveInstanceState.putInt("month", this.f810b.c);
        onSaveInstanceState.putInt("day", this.f810b.f802b);
        onSaveInstanceState.putBoolean("year_optional", this.f810b.d);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void show() {
        super.show();
        TextView textView = (TextView) findViewById(Resources.getSystem().getIdentifier("alertTitle", "id", "android"));
        textView.setSingleLine();
        textView.setEllipsize(TextUtils.TruncateAt.END);
    }
}
