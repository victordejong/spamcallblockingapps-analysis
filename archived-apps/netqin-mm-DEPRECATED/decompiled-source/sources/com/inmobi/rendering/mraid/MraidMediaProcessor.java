package com.inmobi.rendering.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.rendering.RenderView;
import com.squareup.picasso.Dispatcher;
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MraidMediaProcessor.class */
public final class MraidMediaProcessor {

    /* renamed from: f */
    public static final String f32930f = "MraidMediaProcessor";

    /* renamed from: a */
    public RenderView f32931a;

    /* renamed from: b */
    public MediaRenderView f32932b;

    /* renamed from: c */
    public RingerModeChangeReceiver f32933c;

    /* renamed from: d */
    public C8481a f32934d;

    /* renamed from: e */
    public HeadphonesPluggedChangeReceiver f32935e;

    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver.class */
    public final class HeadphonesPluggedChangeReceiver extends BroadcastReceiver {

        /* renamed from: b */
        public String f32940b;

        public HeadphonesPluggedChangeReceiver(String str) {
            this.f32940b = str;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null && "android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                boolean z = false;
                int intExtra = intent.getIntExtra(Dispatcher.NetworkBroadcastReceiver.EXTRA_AIRPLANE_STATE, 0);
                String unused = MraidMediaProcessor.f32930f;
                MraidMediaProcessor mraidMediaProcessor = MraidMediaProcessor.this;
                String str = this.f32940b;
                if (1 == intExtra) {
                    z = true;
                }
                MraidMediaProcessor.m5483b(mraidMediaProcessor, str, z);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver.class */
    public final class RingerModeChangeReceiver extends BroadcastReceiver {

        /* renamed from: b */
        public String f32942b;

        public RingerModeChangeReceiver(String str) {
            this.f32942b = str;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null && "android.media.RINGER_MODE_CHANGED".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("android.media.EXTRA_RINGER_MODE", 2);
                String unused = MraidMediaProcessor.f32930f;
                MraidMediaProcessor.m5486a(MraidMediaProcessor.this, this.f32942b, 2 != intExtra);
            }
        }
    }

    /* renamed from: com.inmobi.rendering.mraid.MraidMediaProcessor$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MraidMediaProcessor$a.class */
    public final class C8481a extends ContentObserver {

        /* renamed from: b */
        public Context f32944b;

        /* renamed from: c */
        public int f32945c = -1;

        /* renamed from: d */
        public String f32946d;

        public C8481a(String str, Context context, Handler handler) {
            super(handler);
            this.f32946d = str;
            this.f32944b = context;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            int streamVolume;
            super.onChange(z);
            Context context = this.f32944b;
            if (context != null && (streamVolume = ((AudioManager) context.getSystemService("audio")).getStreamVolume(3)) != this.f32945c) {
                this.f32945c = streamVolume;
                MraidMediaProcessor.m5487a(MraidMediaProcessor.this, this.f32946d, streamVolume);
            }
        }
    }

    public MraidMediaProcessor(RenderView renderView) {
        this.f32931a = renderView;
    }

    /* renamed from: a */
    public static /* synthetic */ void m5487a(MraidMediaProcessor mraidMediaProcessor, String str, int i) {
        RenderView renderView = mraidMediaProcessor.f32931a;
        if (renderView != null) {
            renderView.m5597a(str, "fireDeviceVolumeChangeEvent(" + i + ");");
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5486a(MraidMediaProcessor mraidMediaProcessor, String str, boolean z) {
        RenderView renderView = mraidMediaProcessor.f32931a;
        if (renderView != null) {
            renderView.m5597a(str, "fireDeviceMuteChangeEvent(" + z + ");");
        }
    }

    /* renamed from: a */
    public static boolean m5489a() {
        Context b = C8326a.m5891b();
        return (b == null || 2 == ((AudioManager) b.getSystemService("audio")).getRingerMode()) ? false : true;
    }

    /* renamed from: b */
    public static /* synthetic */ void m5483b(MraidMediaProcessor mraidMediaProcessor, String str, boolean z) {
        RenderView renderView = mraidMediaProcessor.f32931a;
        if (renderView != null) {
            renderView.m5597a(str, "fireHeadphonePluggedEvent(" + z + ");");
        }
    }

    /* renamed from: d */
    public static boolean m5481d() {
        Context b = C8326a.m5891b();
        if (b == null) {
            return false;
        }
        return ((AudioManager) b.getSystemService("audio")).isWiredHeadsetOn();
    }

    /* renamed from: b */
    public final void m5485b() {
        RingerModeChangeReceiver ringerModeChangeReceiver;
        Context b = C8326a.m5891b();
        if (b != null && (ringerModeChangeReceiver = this.f32933c) != null) {
            b.unregisterReceiver(ringerModeChangeReceiver);
            this.f32933c = null;
        }
    }

    /* renamed from: c */
    public final void m5482c() {
        Context b = C8326a.m5891b();
        if (b != null && this.f32934d != null) {
            b.getContentResolver().unregisterContentObserver(this.f32934d);
            this.f32934d = null;
        }
    }

    /* renamed from: e */
    public final void m5480e() {
        HeadphonesPluggedChangeReceiver headphonesPluggedChangeReceiver;
        Context b = C8326a.m5891b();
        if (b != null && (headphonesPluggedChangeReceiver = this.f32935e) != null) {
            b.unregisterReceiver(headphonesPluggedChangeReceiver);
            this.f32935e = null;
        }
    }
}
