package com.google.android.gms.tagmanager;

import android.content.Context;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ck.class */
public final class ck {

    /* renamed from: a  reason: collision with root package name */
    Tracker f4357a;

    /* renamed from: b  reason: collision with root package name */
    private GoogleAnalytics f4358b;
    private Context c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ck$a.class */
    static final class a implements Logger {
        a() {
        }

        @Override // com.google.android.gms.analytics.Logger
        public final void error(Exception exc) {
            an.a(BuildConfig.FLAVOR, exc);
        }

        @Override // com.google.android.gms.analytics.Logger
        public final void error(String str) {
            an.a(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public final int getLogLevel() {
            int i = 3;
            switch (an.a()) {
                case 2:
                    i = 0;
                    break;
                case 3:
                case 4:
                    i = 1;
                    break;
                case 5:
                    i = 2;
                    break;
                case 6:
                    break;
                default:
                    i = 3;
                    break;
            }
            return i;
        }

        @Override // com.google.android.gms.analytics.Logger
        public final void info(String str) {
            an.c(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public final void setLogLevel(int i) {
            an.b("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
        }

        @Override // com.google.android.gms.analytics.Logger
        public final void verbose(String str) {
            an.e(str);
        }

        @Override // com.google.android.gms.analytics.Logger
        public final void warn(String str) {
            an.b(str);
        }
    }

    public ck(Context context) {
        this.c = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        synchronized (this) {
            if (this.f4358b == null) {
                this.f4358b = GoogleAnalytics.getInstance(this.c);
                this.f4358b.setLogger(new a());
                this.f4357a = this.f4358b.newTracker(str);
            }
        }
    }
}
