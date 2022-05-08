package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.ads.AdRequest;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
/* renamed from: com.vladlee.easyblacklist.bw */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bw.class */
public final class C3314bw extends AbstractC3377dv {

    /* renamed from: c */
    private LayoutInflater f19412c;

    /* renamed from: e */
    private Context f19414e;

    /* renamed from: g */
    private final HandlerC3315a f19416g;

    /* renamed from: f */
    private LruCache<String, Bitmap> f19415f = new LruCache<>(AdRequest.MAX_CONTENT_URL_LENGTH);

    /* renamed from: d */
    private int f19413d = 2131492979;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.bw$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bw$a.class */
    public static final class HandlerC3315a extends Handler {

        /* renamed from: a */
        private final WeakReference<Context> f19417a;

        /* renamed from: b */
        private final WeakReference<LruCache<String, Bitmap>> f19418b;

        HandlerC3315a(Context context, LruCache<String, Bitmap> lruCache) {
            this.f19417a = new WeakReference<>(context);
            this.f19418b = new WeakReference<>(lruCache);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i;
            Resources resources;
            Context context = this.f19417a.get();
            LruCache<String, Bitmap> lruCache = this.f19418b.get();
            if (context != null && lruCache != null) {
                C3313bv bvVar = (C3313bv) ((Object[]) message.obj)[0];
                C3304bp bpVar = (C3304bp) ((Object[]) message.obj)[1];
                View view = (View) ((Object[]) message.obj)[2];
                boolean booleanValue = ((Boolean) ((Object[]) message.obj)[3]).booleanValue();
                if (bvVar.f19406b == null || bvVar.f19408d == null) {
                    view.setVisibility(8);
                    return;
                }
                view.setVisibility(0);
                TextView textView = (TextView) view.findViewById(2131296606);
                textView.setText(C3456gn.m28b(bvVar.f19407c));
                if (!booleanValue) {
                    C3303bo.m253a(view, bpVar, bvVar.f19406b, lruCache);
                    view.findViewById(2131296381).setVisibility(8);
                    view.findViewById(2131296382).setVisibility(0);
                } else {
                    view.findViewById(2131296381).setVisibility(0);
                    view.findViewById(2131296382).setVisibility(8);
                }
                if (bvVar.f19410f) {
                    textView.setTypeface(null, 0);
                } else {
                    textView.setTypeface(null, 1);
                }
                TextView textView2 = (TextView) view.findViewById(2131296598);
                textView2.setText(bvVar.f19408d);
                if (bvVar.f19410f) {
                    resources = context.getResources();
                    i = 2131099758;
                } else {
                    resources = context.getResources();
                    i = 2131099756;
                }
                textView2.setTextColor(resources.getColor(i));
                ((TextView) view.findViewById(2131296594)).setText(new SimpleDateFormat(DateUtils.isToday(bvVar.f19409e) ? !DateFormat.is24HourFormat(context) ? "h:mm a" : "H:mm" : "d LLL", context.getResources().getConfiguration().locale).format(new Date(bvVar.f19409e)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.bw$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bw$b.class */
    public static final class RunnableC3316b implements Runnable {

        /* renamed from: a */
        private final WeakReference<Context> f19419a;

        /* renamed from: b */
        private final WeakReference<View> f19420b;

        /* renamed from: c */
        private final WeakReference<Handler> f19421c;

        /* renamed from: d */
        private C3313bv f19422d;

        /* renamed from: e */
        private Boolean f19423e;

        RunnableC3316b(Context context, View view, Handler handler, C3313bv bvVar, boolean z) {
            this.f19422d = null;
            this.f19423e = Boolean.FALSE;
            this.f19419a = new WeakReference<>(context);
            this.f19420b = new WeakReference<>(view);
            this.f19421c = new WeakReference<>(handler);
            this.f19422d = bvVar;
            this.f19423e = Boolean.valueOf(z);
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context = this.f19419a.get();
            View view = this.f19420b.get();
            Handler handler = this.f19421c.get();
            C3311bt a = context != null ? C3311bt.m229a(context) : null;
            if (context != null && view != null && handler != null && a != null) {
                C3313bv bvVar = this.f19422d;
                bvVar.f19406b = C3318by.m171g(context, bvVar.f19411g);
                C3304bp b = a.m220b(context, this.f19422d.f19406b);
                this.f19422d.f19407c = b.f19373a;
                handler.sendMessage(handler.obtainMessage(0, new Object[]{this.f19422d, b, view, this.f19423e}));
            }
        }
    }

    public C3314bw(Context context) {
        super(context);
        this.f19414e = null;
        this.f19412c = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f19414e = context;
        this.f19416g = new HandlerC3315a(context, this.f19415f);
        this.f19416g.removeMessages(0);
    }

    /* renamed from: a */
    public final void m207a() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                C3318by.m177e(this.f19414e, entry.getKey().longValue());
            }
        }
    }

    /* renamed from: b */
    public final void m206b() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                C3318by.m201a(this.f19414e, (String) this.f19526b.get(entry.getKey()));
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x00b9 -> B:11:0x0096). Please submit an issue!!! */
    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
        if (EasyBlacklistActivity.m308j() != null) {
            C3313bv bvVar = new C3313bv();
            bvVar.f19405a = Long.valueOf(cursor.getLong(cursor.getColumnIndex("_id")));
            bvVar.f19410f = cursor.getInt(cursor.getColumnIndex("read")) != 0;
            bvVar.f19408d = cursor.getString(cursor.getColumnIndex("snippet"));
            bvVar.f19409e = cursor.getLong(cursor.getColumnIndex("date"));
            bvVar.f19411g = cursor.getString(cursor.getColumnIndex("recipient_ids"));
            if (EasyBlacklistActivity.m308j().getQueue().size() > EasyBlacklistActivity.f19247l) {
                try {
                    EasyBlacklistActivity.m308j().getQueue().take();
                } catch (InterruptedException e) {
                }
            }
            EasyBlacklistActivity.m308j().execute(new RunnableC3316b(this.f19414e, view, this.f19416g, bvVar, m120b(bvVar.f19405a.longValue())));
        }
    }

    /* renamed from: c */
    public final void m205c() {
        this.f19416g.removeMessages(0);
    }

    @Override // android.widget.CursorAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = newView(this.f19414e, getCursor(), viewGroup);
        }
        bindView(view2, view2.getContext(), (Cursor) getItem(i));
        return view2;
    }

    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f19412c.inflate(this.f19413d, viewGroup, false);
    }
}
