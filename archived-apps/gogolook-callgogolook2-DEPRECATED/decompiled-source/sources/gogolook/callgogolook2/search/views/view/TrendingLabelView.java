package gogolook.callgogolook2.search.views.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p551p0.C13351n;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/search/views/view/TrendingLabelView.class */
public class TrendingLabelView extends FrameLayout {

    /* renamed from: a */
    public Context f12756a;

    /* renamed from: b */
    public TextView f12757b;

    /* renamed from: c */
    public int f12758c;

    public TrendingLabelView(@NonNull Context context) {
        this(context, null);
    }

    public TrendingLabelView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrendingLabelView(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.f12758c = -1;
        this.f12756a = context;
        m26181c();
    }

    /* renamed from: a */
    public String m26185a() {
        return this.f12757b.getText().toString();
    }

    /* renamed from: a */
    public void m26184a(int i) {
        this.f12758c = i;
    }

    /* renamed from: a */
    public void m26183a(String str) {
        this.f12757b.setText(str);
    }

    /* renamed from: b */
    public int m26182b() {
        return this.f12758c;
    }

    /* renamed from: c */
    public final void m26181c() {
        C13351n a = C13351n.m4136a();
        this.f12757b = new TextView(this.f12756a);
        this.f12757b.setId(R$id.search_label_text);
        this.f12757b.setTextSize(a.f30035E);
        this.f12757b.setGravity(17);
        this.f12757b.setTextColor(a.f30034D);
        this.f12757b.setTypeface(null, 1);
        this.f12757b.setSingleLine();
        this.f12757b.setEllipsize(TextUtils.TruncateAt.END);
        setId(R$id.search_label_area);
        setPadding(0, a.f30031A, 0, a.f30032B);
        addView(this.f12757b);
        setClickable(true);
    }
}
