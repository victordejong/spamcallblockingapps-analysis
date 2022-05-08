package android.support.v4.a.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a.c;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/f.class */
class f extends e {

    /* loaded from: classes-dex2jar.jar:android/support/v4/a/a/f$a.class */
    private static final class a extends c.a {
        a(c.a aVar) {
            super(aVar);
        }

        @Override // android.support.v4.a.a.c.a, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new f(this, resources);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Drawable drawable) {
        super(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(c.a aVar, Resources resources) {
        super(aVar, resources);
    }

    @Override // android.support.v4.a.a.e, android.support.v4.a.a.c
    c.a a() {
        return new a(this.f22b);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.c.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.c.setAutoMirrored(z);
    }
}
