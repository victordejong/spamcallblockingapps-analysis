package com.android.contacts.editor;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.a.o;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/PhoneticNameEditorView.class */
public class PhoneticNameEditorView extends TextFieldsEditorView {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/PhoneticNameEditorView$PhoneticValuesDelta.class */
    private static class PhoneticValuesDelta extends RawContactDelta.ValuesDelta {

        /* renamed from: a  reason: collision with root package name */
        private RawContactDelta.ValuesDelta f1169a;
        private String g;

        public PhoneticValuesDelta(RawContactDelta.ValuesDelta valuesDelta) {
            this.f1169a = valuesDelta;
            d();
        }

        private void d() {
            this.g = PhoneticNameEditorView.a(this.f1169a.a("data9"), this.f1169a.a("data8"), this.f1169a.a("data7"));
        }

        @Override // com.android.contacts.model.RawContactDelta.ValuesDelta
        public final Long a() {
            return this.f1169a.a();
        }

        @Override // com.android.contacts.model.RawContactDelta.ValuesDelta
        public final String a(String str) {
            return str.equals("#phoneticName") ? this.g : this.f1169a.a(str);
        }

        @Override // com.android.contacts.model.RawContactDelta.ValuesDelta
        public final void a(String str, String str2) {
            if (str.equals("#phoneticName")) {
                this.g = str2;
                o a2 = PhoneticNameEditorView.a(str2);
                this.f1169a.a("data9", a2.n());
                this.f1169a.a("data8", a2.m());
                this.f1169a.a("data7", a2.l());
                return;
            }
            this.f1169a.a(str, str2);
            d();
        }

        @Override // com.android.contacts.model.RawContactDelta.ValuesDelta
        public final boolean b() {
            return this.f1169a.b();
        }
    }

    public PhoneticNameEditorView(Context context) {
        super(context);
    }

    public PhoneticNameEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PhoneticNameEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public static o a(String str) {
        String str2;
        String str3;
        String str4;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(" ", 3);
            switch (split.length) {
                case 1:
                    str2 = split[0];
                    str4 = null;
                    str3 = null;
                    break;
                case 2:
                    str2 = split[0];
                    str4 = split[1];
                    str3 = null;
                    break;
                case 3:
                    str2 = split[0];
                    str3 = split[1];
                    str4 = split[2];
                    break;
            }
            o oVar = new o();
            oVar.f1994a.put("data9", str2);
            oVar.f1994a.put("data8", str3);
            oVar.f1994a.put("data7", str4);
            return oVar;
        }
        str4 = null;
        str3 = null;
        str2 = null;
        o oVar2 = new o();
        oVar2.f1994a.put("data9", str2);
        oVar2.f1994a.put("data8", str3);
        oVar2.f1994a.put("data7", str4);
        return oVar2;
    }

    public static String a(String str, String str2, String str3) {
        String str4;
        if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(str)) {
                sb.append(str.trim()).append(' ');
            }
            if (!TextUtils.isEmpty(str2)) {
                sb.append(str2.trim()).append(' ');
            }
            if (!TextUtils.isEmpty(str3)) {
                sb.append(str3.trim()).append(' ');
            }
            sb.setLength(sb.length() - 1);
            str4 = sb.toString();
        } else {
            str4 = null;
        }
        return str4;
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    public final void a(String str, String str2) {
        if (c(str, str2)) {
            if (((TextFieldsEditorView) this).i) {
                if ((!g()) == "#phoneticName".equals(str)) {
                    super.a(str, str2);
                    return;
                }
                return;
            }
            super.a(str, str2);
        }
    }

    @Override // com.android.contacts.editor.TextFieldsEditorView, com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.d
    public void setValues(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        if (!(valuesDelta instanceof PhoneticValuesDelta)) {
            valuesDelta = new PhoneticValuesDelta(valuesDelta);
        }
        super.setValues(bVar, valuesDelta, rawContactDelta, z, viewIdGenerator);
    }
}
