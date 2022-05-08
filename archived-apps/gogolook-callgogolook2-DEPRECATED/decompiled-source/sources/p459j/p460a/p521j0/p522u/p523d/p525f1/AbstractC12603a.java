package p459j.p460a.p521j0.p522u.p523d.p525f1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: j.a.j0.u.d.f1.a */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/f1/a.class */
public abstract class AbstractC12603a implements AbstractC12604b {

    /* renamed from: a */
    public View f28410a = null;

    @Override // p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b
    @NonNull
    /* renamed from: a */
    public View mo5817a(Context context) {
        if (this.f28410a == null) {
            this.f28410a = LayoutInflater.from(context).inflate(mo5818r(), (ViewGroup) null);
        }
        return this.f28410a;
    }

    @Nullable
    /* renamed from: b */
    public ImageView m5821b(@IdRes int i) {
        View d = m5819d(i);
        return d instanceof ImageView ? (ImageView) d : null;
    }

    @Nullable
    /* renamed from: c */
    public TextView m5820c(@IdRes int i) {
        View d = m5819d(i);
        return d instanceof TextView ? (TextView) d : null;
    }

    @Nullable
    /* renamed from: d */
    public View m5819d(@IdRes int i) {
        View view = this.f28410a;
        return view != null ? view.findViewById(i) : null;
    }

    @LayoutRes
    /* renamed from: r */
    public abstract int mo5818r();
}
