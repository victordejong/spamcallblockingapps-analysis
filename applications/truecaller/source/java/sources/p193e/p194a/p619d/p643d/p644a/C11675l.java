package p193e.p194a.p619d.p643d.p644a;

import android.view.KeyEvent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/l.class */
public final class C11675l implements TextView.OnEditorActionListener {

    /* renamed from: a */
    public final /* synthetic */ VoipContactsActivity f34244a;

    public C11675l(VoipContactsActivity voipContactsActivity) {
        this.f34244a = voipContactsActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3) {
            AbstractC11682s m34340wa = this.f34244a.m34340wa();
            AppCompatEditText appCompatEditText = this.f34244a.m34343ta().f51247k;
            l.d(appCompatEditText, "bindingContent.searchFieldEditText");
            m34340wa.mo24254Fh(String.valueOf(appCompatEditText.getText()), true);
            return true;
        }
        return false;
    }
}
