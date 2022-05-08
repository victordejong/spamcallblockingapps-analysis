package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatToggleButton.class */
public class AppCompatToggleButton extends ToggleButton {

    /* renamed from: a */
    private final C0431ad f1935a;

    public AppCompatToggleButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842827);
    }

    public AppCompatToggleButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1935a = new C0431ad(this);
        this.f1935a.m9224a(attributeSet, i);
    }
}
