package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
/* renamed from: com.tmobile.services.nameid.ui.NameIDCardView */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDCardView.class */
public class NameIDCardView extends CardView implements NameIDUIComponent {

    /* renamed from: o */
    private String f13831o = "";

    public NameIDCardView(Context context) {
        super(context);
        m6274w();
    }

    public NameIDCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6274w();
    }

    public NameIDCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6274w();
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13831o.isEmpty()) {
            this.f13831o = UIAnalyticConfigurator.m6248d(this);
        }
        return this.f13831o;
    }

    /* renamed from: w */
    public void m6274w() {
        m6273x(UIAnalyticConfigurator.m6248d(this));
    }

    /* renamed from: x */
    public void m6273x(String str) {
        this.f13831o = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }
}
