package p193e.p194a.p982k0.p989n.p991b;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import com.truecaller.callrecording.p154ui.bubble.BubblesService;
import java.util.Objects;
import p193e.p194a.p982k0.p989n.p991b.C16372h;
/* renamed from: e.a.k0.n.b.i */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/i.class */
public class C16375i {

    /* renamed from: h */
    public static C16375i f46050h;

    /* renamed from: a */
    public final Context f46051a;

    /* renamed from: b */
    public boolean f46052b;

    /* renamed from: c */
    public BubblesService f46053c;

    /* renamed from: d */
    public int f46054d;

    /* renamed from: e */
    public AbstractC16391p f46055e;

    /* renamed from: f */
    public C16372h.AbstractC16374b f46056f;

    /* renamed from: g */
    public final ServiceConnection f46057g = new ServiceConnectionC16376a();

    /* renamed from: e.a.k0.n.b.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/i$a.class */
    public class ServiceConnectionC16376a implements ServiceConnection {
        public ServiceConnectionC16376a() {
            C16375i.this = r4;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                C16375i c16375i = C16375i.this;
                c16375i.f46053c = BubblesService.this;
                c16375i.m17497a();
                C16375i c16375i2 = C16375i.this;
                c16375i2.f46052b = true;
                AbstractC16391p abstractC16391p = c16375i2.f46055e;
                if (abstractC16391p != null) {
                    abstractC16391p.mo17476a();
                }
                C16375i c16375i3 = C16375i.this;
                BubblesService bubblesService = c16375i3.f46053c;
                C16372h.AbstractC16374b abstractC16374b = c16375i3.f46056f;
                bubblesService.f10806g = abstractC16374b;
                C16372h c16372h = bubblesService.f10805f;
                if (c16372h == null) {
                    return;
                }
                c16372h.f46048d = abstractC16374b;
            } catch (ClassCastException e) {
                e.toString();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C16375i.this.f46052b = false;
        }
    }

    /* renamed from: e.a.k0.n.b.i$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/i$b.class */
    public static class C16377b {

        /* renamed from: a */
        public final C16375i f46059a;

        public C16377b(Context context) {
            if (C16375i.f46050h == null) {
                C16375i.f46050h = new C16375i(context);
            }
            this.f46059a = C16375i.f46050h;
        }
    }

    public C16375i(Context context) {
        this.f46051a = context;
    }

    /* renamed from: a */
    public void m17497a() {
        BubblesService bubblesService = this.f46053c;
        int i = this.f46054d;
        Objects.requireNonNull(bubblesService);
        if (i != 0) {
            if (bubblesService.f10803d != null) {
                bubblesService.m35733c();
            }
            C16371g c16371g = new C16371g(bubblesService);
            bubblesService.f10803d = c16371g;
            c16371g.setWindowManager(bubblesService.f10804e);
            C16371g c16371g2 = bubblesService.f10803d;
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, bubblesService.f10807h.mo17623g(), 524296, -3);
            layoutParams.x = 0;
            layoutParams.y = 0;
            c16371g2.setViewParams(layoutParams);
            bubblesService.f10803d.setVisibility(8);
            LayoutInflater.from(bubblesService).inflate(i, (ViewGroup) bubblesService.f10803d, true);
            bubblesService.f10802c.post(new RunnableC16366b(bubblesService, bubblesService.f10803d));
            C16372h.C16373a c16373a = new C16372h.C16373a(bubblesService);
            WindowManager m35734b = bubblesService.m35734b();
            C16372h c16372h = c16373a.f46049a;
            c16372h.f46046b = m35734b;
            c16372h.f46048d = bubblesService.f10806g;
            c16372h.f46045a = bubblesService.f10803d;
            bubblesService.f10805f = c16372h;
        }
    }

    /* renamed from: b */
    public void m17496b(BubbleLayout bubbleLayout) {
        if (this.f46052b) {
            BubblesService bubblesService = this.f46053c;
            Objects.requireNonNull(bubblesService);
            if (bubbleLayout == null) {
                return;
            }
            bubblesService.f10802c.post(new RunnableC16369e(bubblesService, bubbleLayout));
        }
    }
}
