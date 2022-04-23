package androidx.p027c.p028a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.c.a.c */
/* loaded from: classes-dex2jar.jar:androidx/c/a/c.class */
public abstract class AbstractC0558c extends AbstractC0554a {

    /* renamed from: j */
    private int f2549j;

    /* renamed from: k */
    private int f2550k;

    /* renamed from: l */
    private LayoutInflater f2551l;

    @Override // androidx.p027c.p028a.AbstractC0554a
    /* renamed from: a */
    public View mo8860a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2551l.inflate(this.f2549j, viewGroup, false);
    }

    @Override // androidx.p027c.p028a.AbstractC0554a
    /* renamed from: b */
    public final View mo8859b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2551l.inflate(this.f2550k, viewGroup, false);
    }
}
