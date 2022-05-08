package p081h.p119d.p120a.p124s.p126i.p128o;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.appcompat.widget.ActivityChooserModel;
/* renamed from: h.d.a.s.i.o.i */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/i.class */
public class C5886i {

    /* renamed from: a */
    public final int f14811a;

    /* renamed from: b */
    public final int f14812b;

    /* renamed from: c */
    public final Context f14813c;

    /* renamed from: h.d.a.s.i.o.i$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/i$a.class */
    public static class C5887a implements AbstractC5888b {

        /* renamed from: a */
        public final DisplayMetrics f14814a;

        public C5887a(DisplayMetrics displayMetrics) {
            this.f14814a = displayMetrics;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p128o.C5886i.AbstractC5888b
        /* renamed from: a */
        public int mo24169a() {
            return this.f14814a.heightPixels;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p128o.C5886i.AbstractC5888b
        /* renamed from: b */
        public int mo24168b() {
            return this.f14814a.widthPixels;
        }
    }

    /* renamed from: h.d.a.s.i.o.i$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/i$b.class */
    public interface AbstractC5888b {
        /* renamed from: a */
        int mo24169a();

        /* renamed from: b */
        int mo24168b();
    }

    public C5886i(Context context) {
        this(context, (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY), new C5887a(context.getResources().getDisplayMetrics()));
    }

    public C5886i(Context context, ActivityManager activityManager, AbstractC5888b bVar) {
        this.f14813c = context;
        int a = m24172a(activityManager);
        int b = bVar.mo24168b() * bVar.mo24169a() * 4;
        int i = b * 4;
        int i2 = b * 2;
        int i3 = i2 + i;
        if (i3 <= a) {
            this.f14812b = i2;
            this.f14811a = i;
        } else {
            int round = Math.round(a / 6.0f);
            this.f14812b = round * 2;
            this.f14811a = round * 4;
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculated memory cache size: ");
            sb.append(m24173a(this.f14812b));
            sb.append(" pool size: ");
            sb.append(m24173a(this.f14811a));
            sb.append(" memory class limited? ");
            sb.append(i3 > a);
            sb.append(" max size: ");
            sb.append(m24173a(a));
            sb.append(" memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(" isLowMemoryDevice: ");
            sb.append(m24170b(activityManager));
            sb.toString();
        }
    }

    /* renamed from: a */
    public static int m24172a(ActivityManager activityManager) {
        return Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (m24170b(activityManager) ? 0.33f : 0.4f));
    }

    @TargetApi(19)
    /* renamed from: b */
    public static boolean m24170b(ActivityManager activityManager) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return activityManager.isLowRamDevice();
        }
        return i < 11;
    }

    /* renamed from: a */
    public int m24174a() {
        return this.f14811a;
    }

    /* renamed from: a */
    public final String m24173a(int i) {
        return Formatter.formatFileSize(this.f14813c, i);
    }

    /* renamed from: b */
    public int m24171b() {
        return this.f14812b;
    }
}
