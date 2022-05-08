package androidx.appcompat.widget;

import android.util.Property;
/* renamed from: androidx.appcompat.widget.bh */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bh.class */
final class C0479bh extends Property<SwitchCompat, Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C0479bh(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public final /* synthetic */ Float get(SwitchCompat switchCompat) {
        return Float.valueOf(switchCompat.f2087a);
    }

    @Override // android.util.Property
    public final /* synthetic */ void set(SwitchCompat switchCompat, Float f) {
        switchCompat.m9314a(f.floatValue());
    }
}
