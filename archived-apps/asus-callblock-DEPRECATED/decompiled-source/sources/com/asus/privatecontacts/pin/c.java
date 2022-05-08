package com.asus.privatecontacts.pin;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/c.class */
public class c extends DialogFragment implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3051a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private int f3052b = 0;
    private TextView c;
    private EditText d;
    private Button e;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/c$a.class */
    public interface a {
        void a(String str);
    }

    public static c a(int i) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putInt("key_dialog_mode", i);
        cVar.setArguments(bundle);
        return cVar;
    }

    protected final void a() {
        ((a) getActivity()).a(this.d != null ? this.d.getText().toString() : null);
        dismiss();
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (!(activity instanceof a)) {
            throw new ClassCastException(activity.toString() + " must implement PinClickListener");
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        int i;
        View inflate = getActivity().getLayoutInflater().inflate(2131427632, (ViewGroup) null);
        this.c = (TextView) inflate.findViewById(2131297085);
        this.d = (EditText) inflate.findViewById(2131296779);
        if (bundle != null) {
            this.f3052b = bundle.getInt("key_dialog_mode", 0);
            String string = bundle.getString("key_input_pin");
            if (string != null) {
                this.d.setText(string);
            }
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                int i2 = arguments.getInt("key_dialog_mode", 0);
                if (i2 < 0 || i2 > 1) {
                    this.f3052b = 0;
                } else {
                    this.f3052b = i2;
                }
            } else {
                this.f3052b = 0;
            }
        }
        if (this.f3052b == 0) {
            i = 2131755986;
            this.c.setText(getResources().getString(2131755993));
        } else {
            i = 2131756007;
            this.c.setText(getResources().getString(2131756004));
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(i);
        builder.setView(inflate);
        builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.pin.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                c.this.a();
            }
        });
        builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.pin.c.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                dialogInterface.cancel();
                if (c.this.getActivity() != null) {
                    c.this.getActivity().finish();
                }
            }
        });
        final AlertDialog create = builder.create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.asus.privatecontacts.pin.c.3
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                c.this.e = ((AlertDialog) dialogInterface).getButton(-1);
                Button button = c.this.e;
                boolean z = false;
                if (c.this.d != null) {
                    z = false;
                    if (c.this.d.getText().toString().length() > 0) {
                        z = true;
                    }
                }
                button.setEnabled(z);
            }
        });
        this.d.addTextChangedListener(new TextWatcher() { // from class: com.asus.privatecontacts.pin.c.4
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                if (c.this.e != null) {
                    c.this.e.setEnabled(charSequence.length() > 0);
                }
            }
        });
        this.d.setOnEditorActionListener(this);
        this.d.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.asus.privatecontacts.pin.c.5
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    create.getWindow().setSoftInputMode(5);
                }
            }
        });
        return create;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            getActivity().finish();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 0 || i == 6 || i == 5) {
            a();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.putInt("key_dialog_mode", this.f3052b);
            if (this.d != null && (this.d.getText() != null || !TextUtils.isEmpty(this.d.getText().toString()))) {
                bundle.putString("key_input_pin", this.d.getText().toString());
            }
        }
        super.onSaveInstanceState(bundle);
    }
}
