package com.taiwanmobile.p055pt.adp.view.p059b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import java.io.IOException;
import java.lang.ref.WeakReference;
import kotlinx.coroutines.DebugKt;
import p081h.p447o.p448a.p449a.C10831c;
/* renamed from: com.taiwanmobile.pt.adp.view.b.a */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/a.class */
public class C4154a {

    /* renamed from: a */
    public static final String f9942a = "a";

    /* renamed from: b */
    public WeakReference<Context> f9943b;

    /* renamed from: c */
    public WeakReference<JSWebView> f9944c;

    /* renamed from: d */
    public Camera f9945d = null;

    /* renamed from: e */
    public HandlerC4155a f9946e = null;

    /* renamed from: com.taiwanmobile.pt.adp.view.b.a$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/a$a.class */
    public class HandlerC4155a extends Handler {

        /* renamed from: a */
        public float f9947a;

        /* renamed from: b */
        public int f9948b;

        /* renamed from: c */
        public boolean f9949c = false;

        /* renamed from: d */
        public boolean f9950d = false;

        /* renamed from: f */
        public WeakReference<JSWebView> f9952f;

        public HandlerC4155a(float f, int i, JSWebView jSWebView) {
            this.f9952f = new WeakReference<>(jSWebView);
            this.f9947a = f;
            this.f9948b = i;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<JSWebView> weakReference = this.f9952f;
            if (weakReference == null || weakReference.get() == null) {
                C10831c.m10520b("SwithFlashLightHandler", "reference is null");
                return;
            }
            super.handleMessage(message);
            int i = this.f9948b;
            if (i < 0 && i != -1) {
                C10831c.m10518c("SwithFlashLightHandler", "bad argument");
            } else if (this.f9948b == 0) {
                this.f9950d = false;
                C4154a.this.m29501b();
            } else {
                this.f9950d = true;
                if (this.f9949c) {
                    C10831c.m10518c("SwithFlashLightHandler", "torch is turn off!");
                    C4154a.this.m29502a(2);
                    this.f9949c = false;
                    int i2 = this.f9948b;
                    if (i2 != -1) {
                        this.f9948b = i2 - 1;
                    }
                } else {
                    C10831c.m10518c("SwithFlashLightHandler", "torch is turn on!");
                    C4154a.this.m29502a(1);
                    this.f9949c = true;
                }
                postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HandlerC4155a.this.sendEmptyMessage(0);
                    }
                }, this.f9947a * 1000);
            }
        }
    }

    public C4154a(Context context, JSWebView jSWebView) {
        this.f9943b = null;
        this.f9944c = null;
        this.f9943b = new WeakReference<>(context);
        this.f9944c = new WeakReference<>(jSWebView);
    }

    /* renamed from: a */
    public void m29503a(float f, int i) {
        if (this.f9946e == null) {
            this.f9946e = new HandlerC4155a(f, i, this.f9944c.get());
        }
        HandlerC4155a aVar = this.f9946e;
        if (!aVar.f9950d) {
            aVar.sendEmptyMessage(0);
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public void m29502a(int i) {
        String str = f9942a;
        C10831c.m10518c(str, "switchFlashLight involved!!! callType : " + i);
        if (this.f9945d == null) {
            try {
                this.f9945d = Camera.open();
            } catch (Exception e) {
                String str2 = f9942a;
                C10831c.m10520b(str2, "switchFlashLight Camera.open Exception: " + e.getMessage());
                return;
            }
        }
        if (i == 0) {
            m29501b();
        } else if (i == 1) {
            this.f9945d.stopPreview();
            Camera.Parameters parameters = this.f9945d.getParameters();
            parameters.setFlashMode("torch");
            this.f9945d.setParameters(parameters);
            try {
                if (Build.VERSION.SDK_INT > 11) {
                    this.f9945d.setPreviewTexture(new SurfaceTexture(0));
                }
            } catch (IOException e2) {
                String str3 = f9942a;
                C10831c.m10520b(str3, "switchFlashLight setPreviewTexture IOException: " + e2.getMessage());
            } catch (Exception e3) {
                String str4 = f9942a;
                C10831c.m10520b(str4, "switchFlashLight setPreviewTexture Exception: " + e3.getMessage());
                return;
            }
            this.f9945d.startPreview();
        } else if (i == 2) {
            Camera.Parameters parameters2 = this.f9945d.getParameters();
            parameters2.setFlashMode(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
            this.f9945d.setParameters(parameters2);
        }
    }

    /* renamed from: a */
    public boolean m29504a() {
        WeakReference<Context> weakReference = this.f9943b;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        PackageManager packageManager = this.f9943b.get().getPackageManager();
        if (packageManager.hasSystemFeature("android.hardware.camera")) {
            return packageManager.checkPermission("android.permission.CAMERA", this.f9943b.get().getPackageName()) == 0;
        }
        C10831c.m10520b(f9942a, "Device has no camera!");
        return false;
    }

    /* renamed from: b */
    public void m29501b() {
        C10831c.m10518c(f9942a, "releaseCamera involved!!!");
        if (this.f9945d != null) {
            C10831c.m10518c(f9942a, "camera != null!!!");
            Camera.Parameters parameters = this.f9945d.getParameters();
            parameters.setFlashMode(DebugKt.DEBUG_PROPERTY_VALUE_OFF);
            this.f9945d.setParameters(parameters);
            this.f9945d.stopPreview();
            this.f9945d.setPreviewCallback(null);
            this.f9945d.release();
            this.f9945d = null;
        }
        HandlerC4155a aVar = this.f9946e;
        if (aVar != null) {
            aVar.f9950d = false;
            aVar.removeCallbacksAndMessages(null);
            this.f9946e = null;
        }
    }
}
