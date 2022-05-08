package android.support.v4.view;

import android.view.WindowInsets;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/ac.class */
final class ac extends ab {

    /* renamed from: a  reason: collision with root package name */
    final WindowInsets f221a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(WindowInsets windowInsets) {
        this.f221a = windowInsets;
    }

    @Override // android.support.v4.view.ab
    public final int a() {
        return this.f221a.getSystemWindowInsetLeft();
    }

    @Override // android.support.v4.view.ab
    public final ab a(int i, int i2, int i3, int i4) {
        return new ac(this.f221a.replaceSystemWindowInsets(i, i2, i3, i4));
    }

    @Override // android.support.v4.view.ab
    public final int b() {
        return this.f221a.getSystemWindowInsetTop();
    }

    @Override // android.support.v4.view.ab
    public final int c() {
        return this.f221a.getSystemWindowInsetRight();
    }

    @Override // android.support.v4.view.ab
    public final int d() {
        return this.f221a.getSystemWindowInsetBottom();
    }

    @Override // android.support.v4.view.ab
    public final boolean e() {
        return this.f221a.isConsumed();
    }
}
