package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import f.h.k.h;
/* renamed from: androidx.appcompat.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
final class C0136w {

    /* renamed from: a */
    private TextView f595a;

    /* renamed from: b */
    private TextClassifier f596b;

    C0136w(TextView textView) {
        h.c(textView);
        this.f595a = textView;
    }

    /* renamed from: a */
    public TextClassifier m6443a() {
        TextClassifier textClassifier = this.f596b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f595a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }

    /* renamed from: b */
    public void m6442b(TextClassifier textClassifier) {
        this.f596b = textClassifier;
    }
}
