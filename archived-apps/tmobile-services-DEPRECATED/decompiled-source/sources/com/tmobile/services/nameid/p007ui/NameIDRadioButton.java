package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
/* renamed from: com.tmobile.services.nameid.ui.NameIDRadioButton */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDRadioButton.class */
public class NameIDRadioButton extends AppCompatRadioButton implements NameIDUIComponent {

    /* renamed from: i */
    private String f13841i = "";

    public NameIDRadioButton(Context context) {
        super(context);
        m6265a();
    }

    public NameIDRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6265a();
    }

    public NameIDRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6265a();
    }

    /* renamed from: a */
    public void m6265a() {
        m6264b(UIAnalyticConfigurator.m6245g(this));
    }

    /* renamed from: b */
    public void m6264b(String str) {
        this.f13841i = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }

    /* renamed from: c */
    public void m6263c(String str) {
        m6264b(str);
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13841i.isEmpty()) {
            this.f13841i = UIAnalyticConfigurator.m6245g(this);
        }
        return this.f13841i;
    }
}
