package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.ads.AdRequest;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
/* renamed from: com.vladlee.easyblacklist.k */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/k.class */
public final class C3468k extends AbstractC3377dv {

    /* renamed from: d */
    private Context f19651d;

    /* renamed from: e */
    private LayoutInflater f19652e;

    /* renamed from: g */
    private final HandlerC3469a f19654g;

    /* renamed from: c */
    private LruCache<String, Bitmap> f19650c = new LruCache<>(AdRequest.MAX_CONTENT_URL_LENGTH);

    /* renamed from: f */
    private int f19653f = 2131492896;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.k$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/k$a.class */
    public static final class HandlerC3469a extends Handler {

        /* renamed from: a */
        private final WeakReference<Context> f19655a;

        /* renamed from: b */
        private final WeakReference<LruCache<String, Bitmap>> f19656b;

        HandlerC3469a(Context context, LruCache<String, Bitmap> lruCache) {
            this.f19655a = new WeakReference<>(context);
            this.f19656b = new WeakReference<>(lruCache);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Context context = this.f19655a.get();
            LruCache<String, Bitmap> lruCache = this.f19656b.get();
            if (context != null && lruCache != null) {
                C3304bp bpVar = (C3304bp) ((Object[]) message.obj)[0];
                int i = 1;
                View view = (View) ((Object[]) message.obj)[1];
                Object obj = message.obj;
                boolean booleanValue = ((Boolean) ((Object[]) message.obj)[3]).booleanValue();
                TextView textView = (TextView) view.findViewById(2131296475);
                if (textView != null) {
                    textView.setText(C3456gn.m28b(bpVar.f19373a));
                    if (bpVar.f19375c) {
                        i = 3;
                    } else if (bpVar.f19373a.startsWith("?")) {
                        i = 2;
                    } else if (!bpVar.f19373a.endsWith("?")) {
                        i = 0;
                    }
                    if (!booleanValue) {
                        C3303bo.m252a(view, bpVar, bpVar.f19373a, lruCache, i);
                        view.findViewById(2131296381).setVisibility(8);
                        view.findViewById(2131296382).setVisibility(0);
                        return;
                    }
                    view.findViewById(2131296381).setVisibility(0);
                    view.findViewById(2131296382).setVisibility(8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.k$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/k$b.class */
    public static final class RunnableC3470b implements Runnable {

        /* renamed from: a */
        private final WeakReference<Context> f19657a;

        /* renamed from: b */
        private final WeakReference<View> f19658b;

        /* renamed from: c */
        private final WeakReference<Handler> f19659c;

        /* renamed from: d */
        private String f19660d;

        /* renamed from: e */
        private String f19661e;

        /* renamed from: f */
        private ThreadPoolExecutor f19662f = null;

        /* renamed from: g */
        private Boolean f19663g;

        RunnableC3470b(Context context, View view, Handler handler, String str, String str2, boolean z) {
            this.f19660d = null;
            this.f19661e = null;
            this.f19663g = Boolean.FALSE;
            this.f19657a = new WeakReference<>(context);
            this.f19658b = new WeakReference<>(view);
            this.f19659c = new WeakReference<>(handler);
            this.f19660d = str;
            this.f19661e = str2;
            this.f19663g = Boolean.valueOf(z);
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context = this.f19657a.get();
            View view = this.f19658b.get();
            Handler handler = this.f19659c.get();
            C3304bp bpVar = null;
            C3311bt a = context != null ? C3311bt.m229a(context) : null;
            if (context != null && view != null && handler != null && a != null) {
                String str = this.f19660d;
                if (str != null) {
                    bpVar = a.m220b(context, str);
                } else if (this.f19661e != null) {
                    bpVar = new C3304bp();
                    bpVar.f19373a = this.f19661e;
                    bpVar.f19375c = true;
                }
                int identityHashCode = System.identityHashCode(view);
                Message obtainMessage = handler.obtainMessage(identityHashCode, new Object[]{bpVar, view, this.f19660d, this.f19663g});
                handler.removeMessages(identityHashCode);
                handler.sendMessage(obtainMessage);
            }
        }
    }

    /* renamed from: com.vladlee.easyblacklist.k$c */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/k$c.class */
    public static final class C3471c {

        /* renamed from: a */
        long f19664a;

        /* renamed from: b */
        String f19665b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C3471c(long j, String str) {
            this.f19664a = 0L;
            this.f19664a = j;
            this.f19665b = str;
        }
    }

    public C3468k(Context context) {
        super(context);
        this.f19651d = null;
        this.f19652e = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f19651d = context;
        this.f19654g = new HandlerC3469a(context, this.f19650c);
        this.f19654g.removeMessages(0);
    }

    /* renamed from: a */
    public final void m27a() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                C3471c cVar = (C3471c) this.f19526b.get(entry.getKey());
                if (cVar.f19664a > 0) {
                    C3318by.m202a(this.f19651d, cVar.f19664a);
                } else {
                    C3318by.m183c(this.f19651d, cVar.f19665b);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m26b() {
        this.f19654g.removeMessages(0);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0070 -> B:7:0x0051). Please submit an issue!!! */
    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
        if (EasyBlacklistActivity.m308j() != null) {
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            String string = cursor.getString(cursor.getColumnIndex("phone"));
            String string2 = cursor.getString(cursor.getColumnIndex("filter"));
            if (EasyBlacklistActivity.m308j().getQueue().size() > EasyBlacklistActivity.f19247l) {
                try {
                    EasyBlacklistActivity.m308j().getQueue().take();
                } catch (InterruptedException e) {
                }
            }
            EasyBlacklistActivity.m308j().execute(new RunnableC3470b(this.f19651d, view, this.f19654g, string, string2, m120b(j)));
        }
    }

    @Override // android.widget.CursorAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        View view3 = view;
        if (view == null) {
            view3 = newView(this.f19651d, getCursor(), viewGroup);
        }
        Cursor cursor = (Cursor) getItem(i);
        view3.setVisibility(0);
        String string = cursor.getString(cursor.getColumnIndex("phone"));
        String str = null;
        if (string == null) {
            str = cursor.getString(cursor.getColumnIndex("filter"));
        }
        if (string == null && str == null) {
            view2 = C3335ch.m153a(this.f19651d, this.f19652e, viewGroup, true);
        } else {
            view2 = view3;
            if (view3.findViewById(2131296475) == null) {
                view2 = newView(this.f19651d, getCursor(), viewGroup);
            }
            bindView(view2, view2.getContext(), cursor);
        }
        return view2;
    }

    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f19652e.inflate(this.f19653f, viewGroup, false);
    }
}
