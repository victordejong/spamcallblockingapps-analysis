package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.AttributeSet;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p459j.p460a.p521j0.p522u.p523d.C12697v0;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/RoundImageView.class */
public class RoundImageView extends RecycleSafeImageView {
    public RoundImageView(Context context) {
        super(context);
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // gogolook.callgogolook2.view.RecycleSafeImageView
    /* renamed from: a */
    public AbstractC5810g<Bitmap> mo25902a() {
        return new C12697v0(getContext());
    }

    /* renamed from: a */
    public void m25901a(float f, int i) {
    }

    @Override // gogolook.callgogolook2.view.RecycleSafeImageView, androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
    }

    @Override // gogolook.callgogolook2.view.RecycleSafeImageView, androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
    }
}
