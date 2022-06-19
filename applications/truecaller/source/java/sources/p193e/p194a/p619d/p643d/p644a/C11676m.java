package p193e.p194a.p619d.p643d.p644a;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.appcompat.widget.AppCompatEditText;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/m.class */
public final class C11676m implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ VoipContactsActivity f34245a;

    public C11676m(VoipContactsActivity voipContactsActivity) {
        this.f34245a = voipContactsActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        l.e(editable, "s");
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        l.e(charSequence, "s");
        AbstractC11682s m34340wa = this.f34245a.m34340wa();
        AppCompatEditText appCompatEditText = this.f34245a.m34343ta().f51247k;
        l.d(appCompatEditText, "bindingContent.searchFieldEditText");
        m34340wa.mo24254Fh(String.valueOf(appCompatEditText.getText()), false);
    }
}
