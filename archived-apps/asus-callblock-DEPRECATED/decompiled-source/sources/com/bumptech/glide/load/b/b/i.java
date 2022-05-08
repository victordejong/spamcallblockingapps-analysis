package com.bumptech.glide.load.b.b;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f3518a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3519b;
    private final Context c;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/i$a.class */
    private static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayMetrics f3520a;

        public a(DisplayMetrics displayMetrics) {
            this.f3520a = displayMetrics;
        }

        @Override // com.bumptech.glide.load.b.b.i.b
        public final int a() {
            return this.f3520a.widthPixels;
        }

        @Override // com.bumptech.glide.load.b.b.i.b
        public final int b() {
            return this.f3520a.heightPixels;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/i$b.class */
    interface b {
        int a();

        int b();
    }

    public i(Context context) {
        this(context, (ActivityManager) context.getSystemService("activity"), new a(context.getResources().getDisplayMetrics()));
    }

    private i(Context context, ActivityManager activityManager, b bVar) {
        this.c = context;
        int round = Math.round((a(activityManager) ? 0.33f : 0.4f) * activityManager.getMemoryClass() * 1024 * 1024);
        int a2 = bVar.a() * bVar.b() * 4;
        int i = a2 * 4;
        int i2 = a2 * 2;
        if (i2 + i <= round) {
            this.f3519b = i2;
            this.f3518a = i;
        } else {
            int round2 = Math.round(round / 6.0f);
            this.f3519b = round2 * 2;
            this.f3518a = round2 * 4;
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Log.d("MemorySizeCalculator", "Calculated memory cache size: " + a(this.f3519b) + " pool size: " + a(this.f3518a) + " memory class limited? " + (i2 + i > round) + " max size: " + a(round) + " memoryClass: " + activityManager.getMemoryClass() + " isLowMemoryDevice: " + a(activityManager));
        }
    }

    private String a(int i) {
        return Formatter.formatFileSize(this.c, i);
    }

    @TargetApi(19)
    private static boolean a(ActivityManager activityManager) {
        int i = Build.VERSION.SDK_INT;
        return i < 11 || (i >= 19 && activityManager.isLowRamDevice());
    }
}
