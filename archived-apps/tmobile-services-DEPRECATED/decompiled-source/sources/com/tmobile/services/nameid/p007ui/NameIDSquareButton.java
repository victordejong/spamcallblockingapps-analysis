package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatButton;
/* renamed from: com.tmobile.services.nameid.ui.NameIDSquareButton */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDSquareButton.class */
public class NameIDSquareButton extends AppCompatButton implements NameIDUIComponent {

    /* renamed from: h */
    private String f13842h = "";

    public NameIDSquareButton(Context context) {
        super(context);
        m6262a();
    }

    public NameIDSquareButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6262a();
    }

    public NameIDSquareButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m6262a() {
        m6261b(UIAnalyticConfigurator.m6244h(this));
    }

    /* renamed from: b */
    public void m6261b(String str) {
        this.f13842h = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13842h.isEmpty()) {
            this.f13842h = UIAnalyticConfigurator.m6244h(this);
        }
        return this.f13842h;
    }
}
