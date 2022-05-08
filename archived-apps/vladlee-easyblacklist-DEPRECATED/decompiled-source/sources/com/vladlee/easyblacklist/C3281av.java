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
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.AdRequest;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
/* renamed from: com.vladlee.easyblacklist.av */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/av.class */
public final class C3281av extends AbstractC3377dv {

    /* renamed from: c */
    private LayoutInflater f19328c;

    /* renamed from: e */
    private Context f19330e;

    /* renamed from: g */
    private final HandlerC3282a f19332g;

    /* renamed from: h */
    private boolean f19333h;

    /* renamed from: f */
    private LruCache<String, Bitmap> f19331f = new LruCache<>(AdRequest.MAX_CONTENT_URL_LENGTH);

    /* renamed from: d */
    private int f19329d = 2131492899;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.av$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/av$a.class */
    public static final class HandlerC3282a extends Handler {

        /* renamed from: a */
        private final WeakReference<Context> f19334a;

        /* renamed from: b */
        private final WeakReference<LruCache<String, Bitmap>> f19335b;

        HandlerC3282a(Context context, LruCache<String, Bitmap> lruCache) {
            this.f19334a = new WeakReference<>(context);
            this.f19335b = new WeakReference<>(lruCache);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Context context = this.f19334a.get();
            LruCache<String, Bitmap> lruCache = this.f19335b.get();
            if (context != null && lruCache != null) {
                C3304bp bpVar = (C3304bp) ((Object[]) message.obj)[0];
                String str = (String) ((Object[]) message.obj)[1];
                Boolean bool = (Boolean) ((Object[]) message.obj)[2];
                String str2 = (String) ((Object[]) message.obj)[3];
                String str3 = (String) ((Object[]) message.obj)[4];
                Integer num = (Integer) ((Object[]) message.obj)[5];
                String str4 = (String) ((Object[]) message.obj)[6];
                View view = (View) ((Object[]) message.obj)[7];
                boolean booleanValue = ((Boolean) ((Object[]) message.obj)[8]).booleanValue();
                TextView textView = (TextView) view.findViewById(2131296358);
                if (textView != null) {
                    textView.setText((str3 == null || str3.length() <= 0) ? context.getString(2131624085) : C3456gn.m28b(bpVar.f19373a));
                    TextView textView2 = (TextView) view.findViewById(2131296356);
                    if (str4.length() == 0 || bool.booleanValue()) {
                        textView2.setVisibility(8);
                    } else {
                        textView2.setVisibility(0);
                        textView2.setText(str4);
                    }
                    TextView textView3 = (TextView) view.findViewById(2131296357);
                    if (!booleanValue) {
                        if (str3 == null || str3.length() <= 0) {
                            view.findViewById(2131296443).setVisibility(0);
                            view.findViewById(2131296593).setVisibility(8);
                            view.findViewById(2131296444).setVisibility(8);
                            textView3.setVisibility(8);
                        } else {
                            C3303bo.m253a(view, bpVar, bpVar.f19373a, lruCache);
                        }
                        view.findViewById(2131296381).setVisibility(8);
                        view.findViewById(2131296382).setVisibility(0);
                    } else {
                        view.findViewById(2131296381).setVisibility(0);
                        view.findViewById(2131296382).setVisibility(8);
                    }
                    if (str == null || str.equals(bpVar.f19373a)) {
                        textView3.setVisibility(8);
                    } else {
                        textView3.setVisibility(0);
                        textView3.setText(C3456gn.m28b(str));
                    }
                    ((TextView) view.findViewById(2131296360)).setText(str2);
                    ImageView imageView = (ImageView) view.findViewById(2131296359);
                    if (num.intValue() == 0) {
                        imageView.setImageResource(2131230913);
                    } else {
                        imageView.setImageResource(2131230914);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.vladlee.easyblacklist.av$b */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/av$b.class */
    public static final class RunnableC3283b implements Runnable {

        /* renamed from: a */
        private final WeakReference<Context> f19336a;

        /* renamed from: b */
        private final WeakReference<View> f19337b;

        /* renamed from: c */
        private final WeakReference<Handler> f19338c;

        /* renamed from: d */
        private String f19339d;

        /* renamed from: e */
        private String f19340e;

        /* renamed from: f */
        private long f19341f;

        /* renamed from: g */
        private int f19342g;

        /* renamed from: h */
        private boolean f19343h;

        /* renamed from: i */
        private boolean f19344i;

        RunnableC3283b(Context context, View view, Handler handler, String str, String str2, long j, int i, boolean z, boolean z2) {
            this.f19339d = null;
            this.f19340e = null;
            this.f19344i = true;
            this.f19336a = new WeakReference<>(context);
            this.f19337b = new WeakReference<>(view);
            this.f19338c = new WeakReference<>(handler);
            this.f19339d = str;
            this.f19340e = str2;
            this.f19341f = j;
            this.f19342g = i;
            this.f19343h = z;
            this.f19344i = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context = this.f19336a.get();
            View view = this.f19337b.get();
            Handler handler = this.f19338c.get();
            C3311bt a = context != null ? C3311bt.m229a(context) : null;
            if (context != null && view != null && handler != null && a != null) {
                handler.sendMessage(handler.obtainMessage(0, new Object[]{a.m220b(context, this.f19339d), a.m209f(context, this.f19339d), Boolean.valueOf(this.f19344i), new SimpleDateFormat(C3456gn.m33a(context, this.f19341f), context.getResources().getConfiguration().locale).format(new Date(this.f19341f)), this.f19339d, Integer.valueOf(this.f19342g), this.f19340e, view, Boolean.valueOf(this.f19343h)}));
            }
        }
    }

    public C3281av(Context context) {
        super(context);
        this.f19330e = null;
        this.f19333h = true;
        this.f19328c = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f19330e = context;
        this.f19332g = new HandlerC3282a(context, this.f19331f);
        this.f19332g.removeMessages(0);
        this.f19333h = C3392ee.m80a(context, "pref_hide_blocked_messages", true);
    }

    /* renamed from: a */
    public final void m260a() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                C3318by.m174f(this.f19330e, entry.getKey().longValue());
            }
        }
    }

    /* renamed from: b */
    public final void m259b() {
        this.f19332g.removeMessages(0);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00a4 -> B:10:0x007c). Please submit an issue!!! */
    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
        if (EasyBlacklistActivity.m308j() != null) {
            long j = cursor.getLong(cursor.getColumnIndex("_id"));
            int i = cursor.getInt(cursor.getColumnIndex("type"));
            String string = cursor.getString(cursor.getColumnIndex("phone"));
            if (string == null) {
                string = "";
            }
            String string2 = cursor.getString(cursor.getColumnIndex("message"));
            long j2 = cursor.getLong(cursor.getColumnIndex("time"));
            if (EasyBlacklistActivity.m308j().getQueue().size() > EasyBlacklistActivity.f19247l) {
                try {
                    EasyBlacklistActivity.m308j().getQueue().take();
                } catch (InterruptedException e) {
                }
            }
            EasyBlacklistActivity.m308j().execute(new RunnableC3283b(this.f19330e, view, this.f19332g, string, string2, j2, i, m120b(j), this.f19333h));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x003d, code lost:
        if (r8.findViewById(2131296358) == null) goto L_0x0040;
     */
    @Override // android.widget.CursorAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.getItem(r1)
            android.database.Cursor r0 = (android.database.Cursor) r0
            r10 = r0
            r0 = r10
            r1 = r10
            java.lang.String r2 = "type"
            int r1 = r1.getColumnIndex(r2)
            int r0 = r0.getInt(r1)
            r1 = -1
            if (r0 != r1) goto L_0x0030
            r0 = r6
            android.content.Context r0 = r0.f19330e
            r1 = r6
            android.view.LayoutInflater r1 = r1.f19328c
            r2 = r9
            r3 = 0
            android.view.View r0 = com.vladlee.easyblacklist.C3335ch.m153a(r0, r1, r2, r3)
            r10 = r0
            goto L_0x004f
        L_0x0030:
            r0 = r8
            if (r0 == 0) goto L_0x0040
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 2131296358(0x7f090066, float:1.821063E38)
            android.view.View r0 = r0.findViewById(r1)
            if (r0 != 0) goto L_0x004f
        L_0x0040:
            r0 = r6
            r1 = r6
            android.content.Context r1 = r1.f19330e
            r2 = r6
            android.database.Cursor r2 = r2.getCursor()
            r3 = r9
            android.view.View r0 = r0.newView(r1, r2, r3)
            r10 = r0
        L_0x004f:
            r0 = r6
            r1 = r10
            r2 = r10
            android.content.Context r2 = r2.getContext()
            r3 = r6
            r4 = r7
            java.lang.Object r3 = r3.getItem(r4)
            android.database.Cursor r3 = (android.database.Cursor) r3
            r0.bindView(r1, r2, r3)
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.C3281av.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // com.vladlee.easyblacklist.AbstractC3377dv, android.widget.CursorAdapter
    public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f19328c.inflate(this.f19329d, viewGroup, false);
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        this.f19333h = C3392ee.m80a(this.f19330e, "pref_hide_blocked_messages", true);
        super.notifyDataSetChanged();
    }
}
