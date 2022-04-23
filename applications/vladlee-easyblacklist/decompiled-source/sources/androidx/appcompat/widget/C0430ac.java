package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.p036f.C0687f;
/* renamed from: androidx.appcompat.widget.ac */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ac.class */
final class C0430ac {

    /* renamed from: a */
    private TextView f2176a;

    /* renamed from: b */
    private TextClassifier f2177b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0430ac(TextView textView) {
        this.f2176a = (TextView) C0687f.m8549a(textView);
    }

    /* renamed from: a */
    public final TextClassifier m9237a() {
        TextClassifier textClassifier = this.f2177b;
        if (textClassifier != null) {
            return textClassifier;
        }
        TextClassificationManager textClassificationManager = (TextClassificationManager) this.f2176a.getContext().getSystemService(TextClassificationManager.class);
        return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
    }

    /* renamed from: a */
    public final void m9236a(TextClassifier textClassifier) {
        this.f2177b = textClassifier;
    }
}
