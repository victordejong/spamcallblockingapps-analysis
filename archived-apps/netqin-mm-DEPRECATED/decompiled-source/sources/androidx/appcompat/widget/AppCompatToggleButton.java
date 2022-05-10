package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0706l;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatToggleButton.class */
public class AppCompatToggleButton extends ToggleButton {

    /* renamed from: a */
    public final C0706l f599a;

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0706l lVar = new C0706l(this);
        this.f599a = lVar;
        lVar.m36336a(attributeSet, i);
    }
}
