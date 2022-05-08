package com.uservoice.uservoicesdk.ui;

import android.content.Context;
import android.widget.BaseAdapter;
import com.uservoice.uservoicesdk.j.f;
import java.util.ArrayList;
import java.util.List;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/h.class */
public abstract class h<T> extends BaseAdapter {
    protected List<T> h = new ArrayList();
    protected boolean i = false;
    protected boolean j;
    protected Context k;
    protected String l;
    protected String m;
    protected int n;
    protected h<T>.a o;

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/h$a.class */
    private final class a extends TimerTask {

        /* renamed from: b  reason: collision with root package name */
        private final String f4793b;
        private boolean c;
        private f d;

        public a(String str) {
            this.f4793b = str;
        }

        @Override // java.util.TimerTask
        public final boolean cancel() {
            this.c = true;
            if (this.d == null) {
                return true;
            }
            this.d.cancel(true);
            return true;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            h.this.l = this.f4793b;
            this.d = h.this.a(this.f4793b, new com.uservoice.uservoicesdk.ui.a<List<T>>(h.this.k) { // from class: com.uservoice.uservoicesdk.ui.h.a.1
                @Override // com.uservoice.uservoicesdk.j.a
                public final /* synthetic */ void a(Object obj) {
                    List<T> list = (List) obj;
                    if (!a.this.c) {
                        h.this.h = list;
                        h.this.j = false;
                        h.this.notifyDataSetChanged();
                        h.this.j_();
                    }
                }
            });
            if (this.d == null) {
                h.this.j = false;
            }
        }
    }

    public f a(String str, com.uservoice.uservoicesdk.j.a<List<T>> aVar) {
        return null;
    }

    public final void a(int i) {
        this.n = i;
        notifyDataSetChanged();
    }

    public final void a(String str) {
        this.m = str;
        if (str.length() == 0) {
            this.h = new ArrayList();
            this.j = false;
            notifyDataSetChanged();
            return;
        }
        this.j = true;
        notifyDataSetChanged();
        if (this.o != null) {
            this.o.cancel();
        }
        this.o = new a(str);
        this.o.run();
    }

    public final void a(boolean z) {
        this.i = z;
        this.j = false;
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean e() {
        return this.i && this.m != null && this.m.length() > 0;
    }

    protected void j_() {
    }
}
