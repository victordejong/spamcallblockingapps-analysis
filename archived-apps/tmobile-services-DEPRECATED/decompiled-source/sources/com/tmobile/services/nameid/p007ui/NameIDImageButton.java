package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageButton;
/* renamed from: com.tmobile.services.nameid.ui.NameIDImageButton */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDImageButton.class */
public class NameIDImageButton extends AppCompatImageButton implements NameIDUIComponent {

    /* renamed from: h */
    private String f13840h = "";

    public NameIDImageButton(Context context) {
        super(context);
        m6267a();
    }

    public NameIDImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6267a();
    }

    public NameIDImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6267a();
    }

    /* renamed from: a */
    public void m6267a() {
        m6266b(UIAnalyticConfigurator.m6246f(this));
    }

    /* renamed from: b */
    public void m6266b(String str) {
        this.f13840h = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13840h.isEmpty()) {
            this.f13840h = UIAnalyticConfigurator.m6246f(this);
        }
        return this.f13840h;
    }
}
