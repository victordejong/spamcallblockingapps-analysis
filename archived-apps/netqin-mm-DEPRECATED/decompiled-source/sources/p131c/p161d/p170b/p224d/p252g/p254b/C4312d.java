package p131c.p161d.p170b.p224d.p252g.p254b;

import android.graphics.drawable.Drawable;
import com.google.android.gms.internal.base.zaf;
/* renamed from: c.d.b.d.g.b.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/b/d.class */
public final class C4312d extends Drawable.ConstantState {

    /* renamed from: a */
    public int f16476a;

    /* renamed from: b */
    public int f16477b;

    public C4312d(C4312d dVar) {
        if (dVar != null) {
            this.f16476a = dVar.f16476a;
            this.f16477b = dVar.f16477b;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f16476a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zaf(this);
    }
}
