package com.android.contacts.editor;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.android.contacts.f;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.q;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.PhoneNumberFormatter;
import com.android.internal.telephony.GsmAlphabet;
import com.android.internal.telephony.uicc.IccUtils;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/TextFieldsEditorView.class */
public class TextFieldsEditorView extends LabeledEditorView {
    private static final String j = TextFieldsEditorView.class.getSimpleName();
    boolean i;
    private View m;
    private ImageView n;
    private int p;
    private EditText[] k = null;
    private ViewGroup l = null;
    private boolean o = true;
    private TextWatcher q = new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.3

        /* renamed from: a  reason: collision with root package name */
        String f1186a = null;
        private Toast c;

        {
            this.c = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756146, 0);
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            Object[] spans;
            synchronized (this) {
                if (!TextUtils.isEmpty(editable)) {
                    int i = -1;
                    int i2 = -1;
                    for (Object obj : editable.getSpans(0, editable.length(), Object.class)) {
                        if (obj instanceof UnderlineSpan) {
                            i2 = editable.getSpanStart(obj);
                            i = editable.getSpanEnd(obj);
                        }
                    }
                    int a2 = e.a(TextFieldsEditorView.this.getContext()).a((i2 < 0 || i < 0) ? String.valueOf(editable) : editable.toString().substring(0, i2) + editable.toString().substring(i, editable.length()), 5, TextFieldsEditorView.this.g);
                    if (a2 > 0) {
                        int selectionStart = Selection.getSelectionStart(editable);
                        editable.replace(0, editable.length(), editable, 0, a2);
                        try {
                            Selection.setSelection(editable, selectionStart - 1);
                        } catch (Exception e) {
                            if (!TextUtils.isEmpty(editable)) {
                                Selection.setSelection(editable, editable.length());
                            }
                        }
                        this.c.show();
                    } else {
                        this.f1186a = String.valueOf(editable);
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };
    private TextWatcher r = new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.4

        /* renamed from: a  reason: collision with root package name */
        Toast f1188a;

        /* renamed from: b  reason: collision with root package name */
        Toast f1189b;
        String c = null;

        {
            this.f1188a = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756147, 0);
            this.f1189b = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756137, 0);
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            int indexOf;
            synchronized (this) {
                if (!TextUtils.isEmpty(editable)) {
                    String b2 = e.b(String.valueOf(editable));
                    int a2 = e.a(TextFieldsEditorView.this.getContext()).a(b2, 6, TextFieldsEditorView.this.g);
                    if (a2 > 0) {
                        int selectionStart = Selection.getSelectionStart(editable);
                        if (!TextUtils.isEmpty(this.c)) {
                            editable.replace(0, editable.length(), this.c, 0, this.c.length());
                        } else {
                            editable.replace(0, editable.length(), b2, 0, a2);
                        }
                        try {
                            Selection.setSelection(editable, selectionStart - 1);
                        } catch (Exception e) {
                            if (!TextUtils.isEmpty(editable)) {
                                Selection.setSelection(editable, editable.length());
                            }
                        }
                        this.f1188a.show();
                    } else {
                        if (b2.indexOf(";") >= 0) {
                            String str = b2.substring(0, indexOf) + b2.substring(indexOf + 1, b2.length());
                            int selectionStart2 = Selection.getSelectionStart(editable);
                            editable.replace(0, editable.length(), str, 0, str.length());
                            try {
                                Selection.setSelection(editable, selectionStart2 - 1);
                            } catch (Exception e2) {
                                if (!TextUtils.isEmpty(editable)) {
                                    Selection.setSelection(editable, editable.length());
                                }
                            }
                            this.f1189b.show();
                        } else {
                            this.c = String.valueOf(editable);
                        }
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };
    private TextWatcher s = new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.5

        /* renamed from: a  reason: collision with root package name */
        Toast f1190a;

        /* renamed from: b  reason: collision with root package name */
        Toast f1191b;
        String c = null;

        {
            this.f1190a = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756144, 0);
            this.f1191b = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756137, 0);
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            int i = 0;
            synchronized (this) {
                if (!TextUtils.isEmpty(editable)) {
                    String valueOf = String.valueOf(editable);
                    int a2 = e.a(TextFieldsEditorView.this.getContext()).a(valueOf, 7, TextFieldsEditorView.this.g);
                    if (a2 > 0) {
                        int selectionStart = Selection.getSelectionStart(editable);
                        if (!TextUtils.isEmpty(this.c)) {
                            editable.replace(0, editable.length(), this.c, 0, this.c.length());
                        } else {
                            editable.replace(0, editable.length(), valueOf, 0, a2);
                        }
                        try {
                            Selection.setSelection(editable, selectionStart - 1);
                        } catch (Exception e) {
                            if (!TextUtils.isEmpty(editable)) {
                                Selection.setSelection(editable, editable.length());
                            }
                        }
                        this.f1190a.show();
                    } else if (!valueOf.equals(IccUtils.adnStringFieldToString(GsmAlphabet.stringToGsm8BitPacked(valueOf), 0, GsmAlphabet.stringToGsm8BitPacked(valueOf).length))) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= valueOf.length()) {
                                break;
                            }
                            String substring = valueOf.substring(valueOf.length() - (i2 + 1), valueOf.length() - i2);
                            if (!substring.equals(IccUtils.adnStringFieldToString(GsmAlphabet.stringToGsm8BitPacked(substring), 0, GsmAlphabet.stringToGsm8BitPacked(substring).length))) {
                                i = valueOf.indexOf(substring);
                                break;
                            }
                            i2++;
                        }
                        String str = valueOf.substring(0, i) + valueOf.substring(i + 1, valueOf.length());
                        int selectionStart2 = Selection.getSelectionStart(editable);
                        editable.replace(0, editable.length(), str, 0, str.length());
                        try {
                            Selection.setSelection(editable, selectionStart2 - 1);
                        } catch (Exception e2) {
                            if (!TextUtils.isEmpty(editable)) {
                                Selection.setSelection(editable, editable.length());
                            }
                        }
                        this.f1191b.show();
                    } else {
                        this.c = String.valueOf(editable);
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };
    private TextWatcher t = new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.6

        /* renamed from: a  reason: collision with root package name */
        Toast f1192a;

        /* renamed from: b  reason: collision with root package name */
        Toast f1193b;
        String c = null;

        {
            this.f1192a = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756142, 0);
            this.f1193b = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756137, 0);
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            int indexOf;
            synchronized (this) {
                if (!TextUtils.isEmpty(editable)) {
                    String b2 = e.b(String.valueOf(editable));
                    int a2 = e.a(TextFieldsEditorView.this.getContext()).a(b2, 8, TextFieldsEditorView.this.g);
                    if (a2 > 0) {
                        int selectionStart = Selection.getSelectionStart(editable);
                        if (!TextUtils.isEmpty(this.c)) {
                            editable.replace(0, editable.length(), this.c, 0, this.c.length());
                        } else {
                            editable.replace(0, editable.length(), b2, 0, a2);
                        }
                        try {
                            Selection.setSelection(editable, selectionStart - 1);
                        } catch (Exception e) {
                            if (!TextUtils.isEmpty(editable)) {
                                Selection.setSelection(editable, editable.length());
                            }
                        }
                        this.f1192a.show();
                    } else {
                        if (b2.indexOf(";") >= 0) {
                            String str = b2.substring(0, indexOf) + b2.substring(indexOf + 1, b2.length());
                            int selectionStart2 = Selection.getSelectionStart(editable);
                            editable.replace(0, editable.length(), str, 0, str.length());
                            try {
                                Selection.setSelection(editable, selectionStart2 - 1);
                            } catch (Exception e2) {
                                if (!TextUtils.isEmpty(editable)) {
                                    Selection.setSelection(editable, editable.length());
                                }
                            }
                            this.f1193b.show();
                        } else {
                            this.c = String.valueOf(editable);
                        }
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };
    private TextWatcher u = new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.7

        /* renamed from: a  reason: collision with root package name */
        Toast f1194a;

        /* renamed from: b  reason: collision with root package name */
        String f1195b = null;

        {
            this.f1194a = Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756148, 0);
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            Object[] spans;
            synchronized (this) {
                if (!TextUtils.isEmpty(editable)) {
                    int i = -1;
                    int i2 = -1;
                    for (Object obj : editable.getSpans(0, editable.length(), Object.class)) {
                        if (obj instanceof UnderlineSpan) {
                            i2 = editable.getSpanStart(obj);
                            i = editable.getSpanEnd(obj);
                        }
                    }
                    int a2 = e.a(TextFieldsEditorView.this.getContext()).a((i2 < 0 || i < 0) ? String.valueOf(editable) : editable.toString().substring(0, i2) + editable.toString().substring(i, editable.length()), 9, TextFieldsEditorView.this.g);
                    if (a2 > 0) {
                        int selectionStart = Selection.getSelectionStart(editable);
                        editable.replace(0, editable.length(), editable, 0, a2);
                        try {
                            Selection.setSelection(editable, selectionStart - 1);
                        } catch (Exception e) {
                            if (!TextUtils.isEmpty(editable)) {
                                Selection.setSelection(editable, editable.length());
                            }
                        }
                        this.f1194a.show();
                    } else {
                        this.f1195b = String.valueOf(editable);
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };
    private View.OnFocusChangeListener v = new View.OnFocusChangeListener() { // from class: com.android.contacts.editor.TextFieldsEditorView.8
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            if (!z) {
                EditText editText = (EditText) view;
                int intValue = ((Integer) view.getTag()).intValue();
                String obj = editText.getText().toString();
                int a2 = e.a(TextFieldsEditorView.this.getContext()).a(obj, intValue, TextFieldsEditorView.this.g);
                if (a2 > 0) {
                    editText.setText(obj.substring(0, a2));
                    if (intValue == 5) {
                        Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756146, 0).show();
                    } else if (intValue == 9) {
                        Toast.makeText(TextFieldsEditorView.this.getContext(), 2131756148, 0).show();
                    }
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/TextFieldsEditorView$SavedState.class */
    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.contacts.editor.TextFieldsEditorView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (byte) 0);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public boolean f1197a;

        /* renamed from: b  reason: collision with root package name */
        public int[] f1198b;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f1198b = new int[parcel.readInt()];
            parcel.readIntArray(this.f1198b);
        }

        /* synthetic */ SavedState(Parcel parcel, byte b2) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1198b.length);
            parcel.writeIntArray(this.f1198b);
        }
    }

    public TextFieldsEditorView(Context context) {
        super(context);
    }

    public TextFieldsEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextFieldsEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.android.contacts.editor.d
    public final boolean a() {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= this.l.getChildCount()) {
                z = true;
                break;
            } else if (!TextUtils.isEmpty(((EditText) this.l.getChildAt(i)).getText())) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    @Override // com.android.contacts.editor.d
    public final void c() {
        if (this.k != null) {
            for (EditText editText : this.k) {
                editText.setText(BuildConfig.FLAVOR);
            }
        }
    }

    @Override // com.android.contacts.editor.d
    public final void d() {
        View childAt = this.l.getChildAt(0);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null && !inputMethodManager.showSoftInput(childAt, 1)) {
            Log.w(j, "Failed to show soft input method.");
        }
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected final void e() {
        boolean z;
        EditText editText;
        if (this.k != null && this.k.length != 0) {
            EditText editText2 = null;
            EditText[] editTextArr = this.k;
            int length = editTextArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    editText = editText2;
                    break;
                }
                EditText editText3 = editTextArr[i];
                editText = editText2;
                if (editText2 == null) {
                    editText = editText2;
                    if (editText3.getVisibility() == 0) {
                        editText = editText3;
                    }
                }
                if (editText3.hasFocus()) {
                    z = true;
                    break;
                } else {
                    i++;
                    editText2 = editText;
                }
            }
            if (!z && editText != null) {
                editText.requestFocus();
            }
        }
    }

    public final boolean g() {
        return !this.o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setDrawingCacheEnabled(true);
        setAlwaysDrawnWithCacheEnabled(true);
        this.p = getContext().getResources().getDimensionPixelSize(2131100083);
        this.l = (ViewGroup) findViewById(2131296782);
        this.n = (ImageView) findViewById(2131296794);
        this.m = findViewById(2131296795);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.TextFieldsEditorView.1
            /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
                if (r0.getVisibility() == 8) goto L_0x0065;
             */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.view.View r8) {
                /*
                    r7 = this;
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    android.view.View r0 = r0.getFocusedChild()
                    r8 = r0
                    r0 = r8
                    if (r0 != 0) goto L_0x0070
                    r0 = -1
                    r9 = r0
                L_0x000e:
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    r8 = r0
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    boolean r0 = com.android.contacts.editor.TextFieldsEditorView.a(r0)
                    if (r0 != 0) goto L_0x0078
                    r0 = 1
                    r10 = r0
                L_0x001f:
                    r0 = r8
                    r1 = r10
                    boolean r0 = com.android.contacts.editor.TextFieldsEditorView.a(r0, r1)
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    r0.i()
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    r8 = r0
                    r0 = r8
                    r1 = r8
                    com.android.contacts.model.a.b r1 = r1.f1156a
                    r2 = r8
                    com.android.contacts.model.RawContactDelta$ValuesDelta r2 = r2.f1157b
                    r3 = r8
                    com.android.contacts.model.RawContactDelta r3 = r3.c
                    r4 = r8
                    boolean r4 = r4.d
                    r5 = r8
                    com.android.contacts.editor.ViewIdGenerator r5 = r5.e
                    r0.setValues(r1, r2, r3, r4, r5)
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    r1 = r9
                    android.view.View r0 = r0.findViewById(r1)
                    r11 = r0
                    r0 = r11
                    if (r0 == 0) goto L_0x0065
                    r0 = r11
                    r8 = r0
                    r0 = r11
                    int r0 = r0.getVisibility()
                    r1 = 8
                    if (r0 != r1) goto L_0x006a
                L_0x0065:
                    r0 = r7
                    com.android.contacts.editor.TextFieldsEditorView r0 = com.android.contacts.editor.TextFieldsEditorView.this
                    r8 = r0
                L_0x006a:
                    r0 = r8
                    boolean r0 = r0.requestFocus()
                    return
                L_0x0070:
                    r0 = r8
                    int r0 = r0.getId()
                    r9 = r0
                    goto L_0x000e
                L_0x0078:
                    r0 = 0
                    r10 = r0
                    goto L_0x001f
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.editor.TextFieldsEditorView.AnonymousClass1.onClick(android.view.View):void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.o = savedState.f1197a;
        if (this.k != null) {
            int min = Math.min(this.k.length, savedState.f1198b.length);
            for (int i = 0; i < min; i++) {
                this.k[i].setVisibility(savedState.f1198b[i]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1197a = this.o;
        int length = this.k == null ? 0 : this.k.length;
        savedState.f1198b = new int[length];
        for (int i = 0; i < length; i++) {
            savedState.f1198b[i] = this.k[i].getVisibility();
        }
        return savedState;
    }

    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    public void setEnabled(boolean z) {
        boolean z2 = true;
        super.setEnabled(z);
        if (this.k != null) {
            for (int i = 0; i < this.k.length; i++) {
                this.k[i].setEnabled(!this.d && z);
            }
        }
        ImageView imageView = this.n;
        if (this.d || !z) {
            z2 = false;
        }
        imageView.setEnabled(z2);
    }

    public void setSimCardStyle(int i) {
        int i2;
        if (this.k != null && this.k.length > 0) {
            EditText editText = this.k[0];
            switch (i) {
                case 1:
                    editText.addTextChangedListener(this.q);
                    editText.setTag(5);
                    editText.setOnFocusChangeListener(this.v);
                    if (!TextUtils.isEmpty(editText.getText())) {
                        e a2 = e.a(getContext());
                        String obj = editText.getText().toString();
                        int a3 = a2.a(obj, 5, this.g);
                        if (a3 > 0) {
                            editText.setText(obj.substring(0, a3));
                            Toast.makeText(getContext(), 2131756146, 0).show();
                            return;
                        }
                        return;
                    }
                    return;
                case 2:
                    editText.addTextChangedListener(this.r);
                    if (!TextUtils.isEmpty(editText.getText())) {
                        e a4 = e.a(getContext());
                        String obj2 = editText.getText().toString();
                        int a5 = a4.a(obj2, 6, this.g);
                        if (a5 > 0 && a5 > 0) {
                            editText.setText(obj2.substring(0, a5));
                            Toast.makeText(getContext(), 2131756147, 0).show();
                        }
                        String obj3 = editText.getText().toString();
                        int indexOf = obj3.indexOf(";");
                        if (indexOf >= 0) {
                            editText.setText(obj3.substring(0, indexOf) + obj3.substring(indexOf + 1, obj3.length()));
                            Toast.makeText(getContext(), 2131756137, 0).show();
                            return;
                        }
                        return;
                    }
                    return;
                case 3:
                    editText.addTextChangedListener(this.s);
                    if (!TextUtils.isEmpty(editText.getText())) {
                        e a6 = e.a(getContext());
                        String obj4 = editText.getText().toString();
                        int a7 = a6.a(obj4, 7, this.g);
                        if (a7 > 0) {
                            editText.setText(obj4.substring(0, a7));
                            Toast.makeText(getContext(), 2131756144, 0).show();
                        }
                        String obj5 = editText.getText().toString();
                        if (!obj5.equals(IccUtils.adnStringFieldToString(GsmAlphabet.stringToGsm8BitPacked(obj5), 0, GsmAlphabet.stringToGsm8BitPacked(obj5).length))) {
                            int i3 = 0;
                            while (true) {
                                if (i3 < obj5.length()) {
                                    String substring = obj5.substring(obj5.length() - (i3 + 1), obj5.length() - i3);
                                    if (!substring.equals(IccUtils.adnStringFieldToString(GsmAlphabet.stringToGsm8BitPacked(substring), 0, GsmAlphabet.stringToGsm8BitPacked(substring).length))) {
                                        i2 = obj5.indexOf(substring);
                                    } else {
                                        i3++;
                                    }
                                } else {
                                    i2 = 0;
                                }
                            }
                            editText.setText(obj5.substring(0, i2) + obj5.substring(i2 + 1, obj5.length()));
                            Toast.makeText(getContext(), 2131756137, 0).show();
                            return;
                        }
                        return;
                    }
                    return;
                case 4:
                    editText.addTextChangedListener(this.t);
                    if (!TextUtils.isEmpty(editText.getText())) {
                        e a8 = e.a(getContext());
                        String obj6 = editText.getText().toString();
                        int a9 = a8.a(obj6, 8, this.g);
                        if (a9 > 0 && a9 > 0) {
                            editText.setText(obj6.substring(0, a9));
                            Toast.makeText(getContext(), 2131756142, 0).show();
                        }
                        String obj7 = editText.getText().toString();
                        int indexOf2 = obj7.indexOf(";");
                        if (indexOf2 >= 0) {
                            editText.setText(obj7.substring(0, indexOf2) + obj7.substring(indexOf2 + 1, obj7.length()));
                            Toast.makeText(getContext(), 2131756137, 0).show();
                            return;
                        }
                        return;
                    }
                    return;
                case 5:
                    editText.addTextChangedListener(this.u);
                    editText.setTag(9);
                    editText.setOnFocusChangeListener(this.v);
                    if (!TextUtils.isEmpty(editText.getText())) {
                        e a10 = e.a(getContext());
                        String obj8 = editText.getText().toString();
                        int a11 = a10.a(obj8, 9, this.g);
                        if (a11 > 0) {
                            editText.setText(obj8.substring(0, a11));
                            Toast.makeText(getContext(), 2131756148, 0).show();
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.d
    public void setValues(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        boolean z2;
        super.setValues(bVar, valuesDelta, rawContactDelta, z, viewIdGenerator);
        if (this.k != null) {
            for (EditText editText : this.k) {
                this.l.removeView(editText);
            }
        }
        int size = bVar.o.size();
        this.k = new EditText[size];
        boolean z3 = false;
        String a2 = valuesDelta.a("mimetype");
        boolean z4 = false;
        for (int i = 0; i < size; i++) {
            a.c cVar = bVar.o.get(i);
            EditText editText2 = new EditText(getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMarginStart(getResources().getDimensionPixelOffset(2131099716) * (-1));
            editText2.setLayoutParams(layoutParams);
            if (cVar.d != 0) {
                editText2.setMinLines(cVar.d);
            } else {
                editText2.setMinHeight(this.p);
            }
            editText2.setTextAppearance(getContext(), 16973892);
            editText2.setGravity(16);
            this.k[i] = editText2;
            editText2.setId(viewIdGenerator.a(rawContactDelta, bVar, valuesDelta, i));
            if (cVar.f2005b > 0) {
                editText2.setHint(cVar.f2005b);
            }
            int i2 = cVar.c;
            editText2.setInputType(i2);
            if (i2 == 3) {
                PhoneNumberFormatter.setPhoneNumberFormattingTextWatcher(getContext(), editText2);
            }
            editText2.setImeOptions(5);
            final String str = cVar.f2004a;
            String a3 = valuesDelta.a(str);
            editText2.setText(a3);
            if ("vnd.android.cursor.item/postal-address_v2".equals(a2)) {
                if (a3 != null) {
                    z3 = true;
                }
                z2 = z3;
            } else {
                z2 = a3 != null;
            }
            setDeleteButtonVisible(z2);
            editText2.addTextChangedListener(new TextWatcher() { // from class: com.android.contacts.editor.TextFieldsEditorView.2
                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                    TextFieldsEditorView.this.a(str, editable.toString());
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                }
            });
            editText2.setEnabled(isEnabled() && !z);
            if (cVar.f) {
                this.i = true;
                editText2.setVisibility(this.o ? 0 : 8);
                z4 = true;
            } else if (cVar.g) {
                this.i = true;
                editText2.setVisibility(this.o ? 8 : 0);
                z4 = true;
            } else {
                boolean z5 = !q.a((CharSequence) a3) && cVar.e;
                editText2.setVisibility(this.o && z5 ? 8 : 0);
                z4 = z4 || z5;
            }
            this.l.addView(editText2);
        }
        boolean z6 = this.o;
        if (z4) {
            this.m.setVisibility(0);
            this.n.setImageResource(z6 ? 2131165334 : 2131165333);
        } else {
            this.m.setVisibility(8);
        }
        this.n.setEnabled(!z && isEnabled());
    }

    public void setValues2(b bVar, RawContactDelta.ValuesDelta valuesDelta) {
        int size = bVar.o.size();
        for (int i = 0; i < size; i++) {
            if (f.b(getContext()).contains(valuesDelta.a(bVar.o.get(i).f2004a))) {
                setDeleteButtonVisible(false);
                setLabelInvisible();
                setEnabled(false);
            }
        }
    }
}
