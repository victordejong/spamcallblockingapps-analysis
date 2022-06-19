package p193e.p194a.p804h.p806b.p814e;

import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import e.m.f.a.a;
import e.m.f.a.j;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.h.b.e.d */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/e/d.class */
public final class C14601d implements TextWatcher {

    /* renamed from: a */
    public boolean f41944a;

    /* renamed from: b */
    public boolean f41945b;

    /* renamed from: c */
    public final a f41946c;

    public C14601d(String str) {
        Objects.requireNonNull(j.q());
        a aVar = new a(str);
        l.d(aVar, "PhoneNumberUtil.getInsta…ypeFormatter(countryCode)");
        this.f41946c = aVar;
    }

    /* renamed from: a */
    public final String m19947a(char c, boolean z) {
        String str;
        String str2;
        if (z) {
            a aVar = this.f41946c;
            str = aVar.k(c, true);
            aVar.a = str;
            str2 = "formatter.inputDigitAndR…osition(lastNonSeparator)";
        } else {
            a aVar2 = this.f41946c;
            str = aVar2.k(c, false);
            aVar2.a = str;
            str2 = "formatter.inputDigit(lastNonSeparator)";
        }
        l.d(str, str2);
        return str;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        int i;
        synchronized (this) {
            l.e(editable, "editable");
            boolean z = false;
            if (this.f41945b) {
                if (editable.length() > 0) {
                    z = true;
                }
                this.f41945b = z;
            } else if (this.f41944a) {
            } else {
                int selectionEnd = Selection.getSelectionEnd(editable);
                this.f41946c.g();
                char c = (char) 0;
                int length = editable.length();
                CharSequence charSequence = null;
                int i2 = 0;
                boolean z2 = false;
                char c2 = c;
                while (i2 < length) {
                    char charAt = editable.charAt(i2);
                    char c3 = c2;
                    String str = charSequence;
                    boolean z3 = z2;
                    if (PhoneNumberUtils.isNonSeparator(charAt)) {
                        z3 = z2;
                        if (c2 != 0) {
                            charSequence = m19947a(c2, z2);
                            z3 = false;
                        }
                        c3 = charAt;
                        str = charSequence;
                    }
                    z2 = z3;
                    if (i2 == selectionEnd - 1) {
                        z2 = true;
                    }
                    i2++;
                    c2 = c3;
                    charSequence = str;
                }
                if (c2 != 0) {
                    charSequence = m19947a(c2, z2);
                }
                if (charSequence != null) {
                    a aVar = this.f41946c;
                    if (aVar.f) {
                        i = 0;
                        int i3 = 0;
                        while (true) {
                            int i4 = i3;
                            if (i4 >= aVar.p || i >= aVar.a.length()) {
                                break;
                            }
                            int i5 = i4;
                            if (aVar.e.charAt(i4) == aVar.a.charAt(i)) {
                                i5 = i4 + 1;
                            }
                            i++;
                            i3 = i5;
                        }
                    } else {
                        i = aVar.o;
                    }
                    this.f41944a = true;
                    editable.replace(0, editable.length(), charSequence, 0, charSequence.length());
                    if (l.a(charSequence, editable.toString())) {
                        Selection.setSelection(editable, i);
                    }
                    this.f41944a = false;
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m19946b(CharSequence charSequence, int i, int i2) {
        for (int i3 = i; i3 < i2 + i; i3++) {
            if (!PhoneNumberUtils.isNonSeparator(charSequence.charAt(i3))) {
                return true;
            }
        }
        return false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
        if (this.f41944a || this.f41945b || i2 <= 0 || !m19946b(charSequence, i, i2)) {
            return;
        }
        this.f41945b = true;
        this.f41946c.g();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
        if (this.f41944a || this.f41945b || i3 <= 0 || !m19946b(charSequence, i, i3)) {
            return;
        }
        this.f41945b = true;
        this.f41946c.g();
    }
}
