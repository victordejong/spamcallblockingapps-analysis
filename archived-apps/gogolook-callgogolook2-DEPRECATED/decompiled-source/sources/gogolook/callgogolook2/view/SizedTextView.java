package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14206w4;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SizedTextView.class */
public class SizedTextView extends TextView {

    /* renamed from: a */
    public AbstractC5286a f13109a;

    /* renamed from: gogolook.callgogolook2.view.SizedTextView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SizedTextView$a.class */
    public interface AbstractC5286a {
        /* renamed from: a */
        void m25850a(int i, int i2, int i3, int i4);
    }

    public SizedTextView(Context context) {
        super(context);
        if (!isInEditMode()) {
            float a = m25851a(context, Float.valueOf(getTextSize()));
            if (m25853a(context) == 101) {
                super.setTextSize(a + 2.0f);
            } else if (m25853a(context) == 102) {
                super.setTextSize(a + 4.0f);
            }
        }
    }

    public SizedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (!isInEditMode()) {
            float a = m25851a(context, Float.valueOf(getTextSize()));
            if (m25853a(context) == 101) {
                super.setTextSize(a + 2.0f);
            } else if (m25853a(context) == 102) {
                super.setTextSize(a + 4.0f);
            }
        }
    }

    public SizedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (!isInEditMode()) {
            float a = m25851a(context, Float.valueOf(getTextSize()));
            if (m25853a(context) == 101) {
                super.setTextSize(a + 2.0f);
            } else if (m25853a(context) == 102) {
                super.setTextSize(a + 4.0f);
            }
        }
    }

    /* renamed from: a */
    public static float m25851a(Context context, Float f) {
        return f.floatValue() / context.getResources().getDisplayMetrics().scaledDensity;
    }

    /* renamed from: a */
    public static int m25853a(Context context) {
        int a = C13915b3.m3066a(TtmlNode.ATTR_TTS_FONT_SIZE, 100);
        if (a == 0 || a == 1 || a == 2) {
            C13915b3.m3048d(TtmlNode.ATTR_TTS_FONT_SIZE, 100);
            return 100;
        } else if (a != 3 && a != 4) {
            return a;
        } else {
            C13915b3.m3048d(TtmlNode.ATTR_TTS_FONT_SIZE, 101);
            return 101;
        }
    }

    /* renamed from: a */
    public static String m25854a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m25852a(Context context, int i) {
        return i == 101 ? m25854a((int) R$string.font_size_medium) : i == 102 ? m25854a((int) R$string.font_size_large) : m25854a((int) R$string.font_size_small);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        AbstractC5286a aVar = this.f13109a;
        if (aVar != null) {
            aVar.m25850a(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        if (m25853a(getContext()) == 101) {
            super.setTextSize(f + 2.0f);
        } else if (m25853a(getContext()) == 102) {
            super.setTextSize(f + 4.0f);
        } else {
            super.setTextSize(f);
        }
    }
}
