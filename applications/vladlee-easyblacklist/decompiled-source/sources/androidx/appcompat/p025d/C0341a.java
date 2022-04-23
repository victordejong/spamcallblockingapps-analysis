package androidx.appcompat.p025d;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* renamed from: androidx.appcompat.d.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/d/a.class */
public final class C0341a implements TransformationMethod {

    /* renamed from: a */
    private Locale f1450a;

    public C0341a(Context context) {
        this.f1450a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f1450a);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
