package gogolook.callgogolook2.search.views.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
import p459j.p460a.p551p0.p552o.p553a.AbstractC13354a;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/SearchBarEditText.class */
public class SearchBarEditText extends EditText {

    /* renamed from: a */
    public AbstractC13354a f12754a = null;

    public SearchBarEditText(Context context) {
        super(context);
    }

    public SearchBarEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SearchBarEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m26186a(AbstractC13354a aVar) {
        this.f12754a = aVar;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        AbstractC13354a aVar;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 0 && (aVar = this.f12754a) != null) {
            aVar.mo4133a();
        }
        return super.onKeyPreIme(i, keyEvent);
    }
}
