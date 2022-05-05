package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.p037g.AbstractC0740s;
import androidx.core.widget.AbstractC0790n;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageView.class */
public class AppCompatImageView extends ImageView implements AbstractC0740s, AbstractC0790n {

    /* renamed from: a */
    private final C0517o f1898a;

    /* renamed from: b */
    private final C0522t f1899b;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(C0481bj.m9102a(context), attributeSet, i);
        this.f1898a = new C0517o(this);
        this.f1898a.m9004a(attributeSet, i);
        this.f1899b = new C0522t(this);
        this.f1899b.m8969a(attributeSet, i);
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            oVar.m9007a(colorStateList);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            oVar.m9006a(mode);
        }
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            return oVar.m9001c();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: b */
    public final void mo1167b(ColorStateList colorStateList) {
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8972a(colorStateList);
        }
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: b */
    public final void mo1166b(PorterDuff.Mode mode) {
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8971a(mode);
        }
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: c */
    public final ColorStateList mo1163c() {
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            return tVar.m8968b();
        }
        return null;
    }

    @Override // androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            return oVar.m9003b();
        }
        return null;
    }

    @Override // androidx.core.widget.AbstractC0790n
    /* renamed from: d */
    public final PorterDuff.Mode mo1158d() {
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            return tVar.m8967c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            oVar.m9000d();
        }
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8966d();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1899b.m8974a() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            oVar.m9009a();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0517o oVar = this.f1898a;
        if (oVar != null) {
            oVar.m9008a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8966d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8966d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8973a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0522t tVar = this.f1899b;
        if (tVar != null) {
            tVar.m8966d();
        }
    }
}
