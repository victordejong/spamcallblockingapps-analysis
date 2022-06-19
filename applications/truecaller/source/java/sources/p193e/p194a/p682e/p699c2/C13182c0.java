package p193e.p194a.p682e.p699c2;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import com.truecaller.p183ui.components.EditBase;
import com.truecaller.search.global.GlobalSearchResultActivity;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1342w4.p1344s.C21275p;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.c2.c0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/c0.class */
public class C13182c0 implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ EditBase f38299a;

    public C13182c0(EditBase editBase) {
        this.f38299a = editBase;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditBase editBase = this.f38299a;
        int i4 = EditBase.f15739i;
        boolean z = !h.j(editBase.getText());
        if (!z) {
            editBase.m34533a();
        } else if (editBase.f15741e) {
            editBase.setCompoundDrawables(editBase.f15740d, editBase.getCompoundDrawables()[1], editBase.getCompoundDrawables()[2], editBase.getCompoundDrawables()[3]);
        } else {
            editBase.setCompoundDrawables(editBase.getCompoundDrawables()[0], editBase.getCompoundDrawables()[1], editBase.f15740d, editBase.getCompoundDrawables()[3]);
        }
        EditBase.AbstractC4676a abstractC4676a = editBase.f15744h;
        if (abstractC4676a != null) {
            GlobalSearchResultActivity globalSearchResultActivity = ((C21275p) abstractC4676a).f59605a;
            View view = globalSearchResultActivity.f14654m;
            boolean z2 = false;
            if (!z) {
                z2 = false;
                if (globalSearchResultActivity.f14662u) {
                    z2 = true;
                }
            }
            C19045j0.m14194v(view, z2, true);
        }
    }
}
