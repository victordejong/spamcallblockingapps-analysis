package com.android.a.b;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/a/b/a.class */
public abstract class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f407a;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<C0018a> f408b;
    protected boolean c;
    private int d;
    private boolean e;
    private boolean f;

    /* renamed from: com.android.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/a/b/a$a.class */
    public static class C0018a {

        /* renamed from: a  reason: collision with root package name */
        boolean f409a;

        /* renamed from: b  reason: collision with root package name */
        boolean f410b;
        Cursor c;
        int d;
        int e;

        public C0018a(boolean z, boolean z2) {
            this.f409a = z;
            this.f410b = z2;
        }
    }

    public a(Context context) {
        this(context, (byte) 0);
    }

    private a(Context context, byte b2) {
        this.d = 0;
        this.c = true;
        this.e = true;
        this.f407a = context;
        this.f408b = new ArrayList<>();
    }

    private void b() {
        if (!this.c) {
            this.d = 0;
            Iterator<C0018a> it = this.f408b.iterator();
            while (it.hasNext()) {
                C0018a next = it.next();
                Cursor cursor = next.c;
                int count = cursor != null ? cursor.getCount() : 0;
                int i = count;
                if (next.f410b) {
                    if (count == 0) {
                        i = count;
                        if (!next.f409a) {
                        }
                    }
                    i = count + 1;
                }
                next.e = i;
                this.d += i;
            }
            this.c = true;
        }
    }

    public int a(int i, int i2) {
        return 1;
    }

    public abstract View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup);

    public View a(Context context, int i, ViewGroup viewGroup) {
        return null;
    }

    public void a() {
        Iterator<C0018a> it = this.f408b.iterator();
        while (it.hasNext()) {
            it.next().c = null;
        }
        this.c = false;
        notifyDataSetChanged();
    }

    public void a(int i, Cursor cursor) {
        Cursor cursor2 = this.f408b.get(i).c;
        if (cursor2 != cursor) {
            if (cursor2 != null && !cursor2.isClosed()) {
                cursor2.close();
            }
            this.f408b.get(i).c = cursor;
            if (cursor != null) {
                this.f408b.get(i).d = cursor.getColumnIndex("_id");
            }
            this.c = false;
            notifyDataSetChanged();
        }
    }

    public final void a(int i, boolean z) {
        this.f408b.get(i).f410b = z;
        this.c = false;
    }

    public void a(View view, int i, Cursor cursor) {
    }

    public abstract void a(View view, int i, Cursor cursor, int i2);

    public final void a(C0018a aVar) {
        this.f408b.add(aVar);
        this.c = false;
        notifyDataSetChanged();
    }

    public final void a(boolean z, boolean z2) {
        a(new C0018a(z, z2));
    }

    public final void a_(int i) {
        Cursor cursor = this.f408b.get(i).c;
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
        this.f408b.remove(i);
        this.c = false;
        notifyDataSetChanged();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        boolean z;
        Iterator<C0018a> it = this.f408b.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().f410b) {
                    z = false;
                    break;
                }
            } else {
                z = true;
                break;
            }
        }
        return z;
    }

    public final void b(int i) {
        this.f408b.get(i).f409a = false;
        this.c = false;
    }

    public final C0018a c(int i) {
        return this.f408b.get(i);
    }

    public final boolean d(int i) {
        return this.f408b.get(i).f410b;
    }

    public final Cursor e(int i) {
        return this.f408b.get(i).c;
    }

    public final boolean f(int i) {
        Cursor cursor = this.f408b.get(i).c;
        return cursor == null || cursor.getCount() == 0;
    }

    public final int g(int i) {
        int i2;
        b();
        int size = this.f408b.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= size) {
                i2 = -1;
                break;
            }
            int i5 = this.f408b.get(i3).e + i4;
            if (i >= i4 && i < i5) {
                i2 = i3;
                break;
            }
            i3++;
            i4 = i5;
        }
        return i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        b();
        return this.d;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        b();
        Iterator<C0018a> it = this.f408b.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                cursor = null;
                break;
            }
            C0018a next = it.next();
            int i3 = next.e + i2;
            if (i < i2 || i >= i3) {
                i2 = i3;
            } else {
                int i4 = i - i2;
                int i5 = i4;
                if (next.f410b) {
                    i5 = i4 - 1;
                }
                if (i5 == -1) {
                    cursor = null;
                } else {
                    cursor = next.c;
                    cursor.moveToPosition(i5);
                }
            }
        }
        return cursor;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        long j;
        b();
        Iterator<C0018a> it = this.f408b.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                j = 0;
                break;
            }
            C0018a next = it.next();
            int i3 = next.e + i2;
            if (i < i2 || i >= i3) {
                i2 = i3;
            } else {
                int i4 = i - i2;
                int i5 = i4;
                if (next.f410b) {
                    i5 = i4 - 1;
                }
                if (i5 == -1) {
                    j = 0;
                } else if (next.d == -1) {
                    j = 0;
                } else {
                    Cursor cursor = next.c;
                    j = (cursor == null || cursor.isClosed() || !cursor.moveToPosition(i5)) ? 0L : cursor.getLong(next.d);
                }
            }
        }
        return j;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        b();
        int size = this.f408b.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            int i4 = i3 + this.f408b.get(i2).e;
            if (i < i3 || i >= i4) {
                i2++;
                i3 = i4;
            } else {
                int i5 = i - i3;
                if (this.f408b.get(i2).f410b) {
                    i5--;
                }
                return i5 == -1 ? -1 : a(i2, i5);
            }
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b();
        int size = this.f408b.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            int i4 = this.f408b.get(i2).e + i3;
            if (i < i3 || i >= i4) {
                i2++;
                i3 = i4;
            } else {
                int i5 = i - i3;
                int i6 = i5;
                if (this.f408b.get(i2).f410b) {
                    i6 = i5 - 1;
                }
                if (i6 == -1) {
                    Cursor cursor = this.f408b.get(i2).c;
                    if (view == null) {
                        view = a(this.f407a, i2, viewGroup);
                    }
                    a(view, i2, cursor);
                } else if (!this.f408b.get(i2).c.moveToPosition(i6)) {
                    throw new IllegalStateException("Couldn't move cursor to position " + i6);
                } else {
                    Cursor cursor2 = this.f408b.get(i2).c;
                    View view2 = view;
                    if (view == null) {
                        view2 = a(this.f407a, i2, cursor2, i6, viewGroup);
                    }
                    a(view2, i2, cursor2, i6);
                    view = view2;
                }
                if (view != null) {
                    return view;
                }
                throw new NullPointerException("View should not be null, partition: " + i2 + " position: " + i6);
            }
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    public final int h(int i) {
        int i2;
        b();
        Iterator<C0018a> it = this.f408b.iterator();
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            C0018a next = it.next();
            int i4 = next.e + i3;
            if (i < i3 || i >= i4) {
                i3 = i4;
            } else {
                i2 = i - i3;
                if (next.f410b) {
                    i2--;
                }
            }
        }
        return i2;
    }

    public final int i(int i) {
        b();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += this.f408b.get(i3).e;
        }
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        boolean z;
        b();
        int size = this.f408b.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            int i4 = i3 + this.f408b.get(i2).e;
            if (i < i3 || i >= i4) {
                i2++;
                i3 = i4;
            } else {
                z = !this.f408b.get(i2).f410b || i - i3 != 0;
            }
        }
        return z;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        if (this.e) {
            this.f = false;
            super.notifyDataSetChanged();
            return;
        }
        this.f = true;
    }
}
