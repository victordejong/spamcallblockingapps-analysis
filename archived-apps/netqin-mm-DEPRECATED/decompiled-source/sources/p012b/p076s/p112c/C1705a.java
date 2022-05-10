package p012b.p076s.p112c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.util.Log;
import androidx.media.AudioAttributesCompat;
import androidx.media2.player.MediaPlayer;
/* renamed from: b.s.c.a */
/* loaded from: classes-dex2jar.jar:b/s/c/a.class */
public class C1705a {

    /* renamed from: a */
    public final AbstractC1706a f6968a;

    /* renamed from: b.s.c.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/a$a.class */
    public interface AbstractC1706a {
        /* renamed from: a */
        boolean mo32313a();

        /* renamed from: b */
        void mo32311b();

        void close();

        void onPause();
    }

    /* renamed from: b.s.c.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/c/a$b.class */
    public static class C1707b implements AbstractC1706a {

        /* renamed from: a */
        public final BroadcastReceiver f6969a = new C1709b();

        /* renamed from: b */
        public final IntentFilter f6970b = new IntentFilter("android.media.AUDIO_BECOMING_NOISY");

        /* renamed from: c */
        public final AudioManager.OnAudioFocusChangeListener f6971c = new C1708a();

        /* renamed from: d */
        public final Object f6972d = new Object();

        /* renamed from: e */
        public final Context f6973e;

        /* renamed from: f */
        public final MediaPlayer f6974f;

        /* renamed from: g */
        public final AudioManager f6975g;

        /* renamed from: h */
        public AudioAttributesCompat f6976h;

        /* renamed from: i */
        public int f6977i;

        /* renamed from: j */
        public boolean f6978j;

        /* renamed from: k */
        public boolean f6979k;

        /* renamed from: b.s.c.a$b$a */
        /* loaded from: classes-dex2jar.jar:b/s/c/a$b$a.class */
        public class C1708a implements AudioManager.OnAudioFocusChangeListener {

            /* renamed from: a */
            public float f6980a;

            /* renamed from: b */
            public float f6981b;

            public C1708a() {
            }

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                boolean z = false;
                if (i == -3) {
                    Object obj = C1707b.this.f6972d;
                    synchronized (obj) {
                        if (C1707b.this.f6976h != null) {
                            if (C1707b.this.f6976h.m38311b() == 1) {
                                z = true;
                            }
                            if (z) {
                                C1707b.this.f6974f.mo37833l();
                            } else {
                                float t = C1707b.this.f6974f.m37826t();
                                float f = 0.2f * t;
                                obj = C1707b.this.f6972d;
                                synchronized (obj) {
                                    this.f6980a = t;
                                    this.f6981b = f;
                                }
                                C1707b.this.f6974f.m37858b(f);
                            }
                        }
                    }
                } else if (i == -2) {
                    C1707b.this.f6974f.mo37833l();
                    synchronized (C1707b.this.f6972d) {
                        C1707b.this.f6978j = true;
                    }
                } else if (i == -1) {
                    C1707b.this.f6974f.mo37833l();
                    synchronized (C1707b.this.f6972d) {
                        C1707b.this.f6978j = false;
                    }
                } else if (i == 1) {
                    if (C1707b.this.f6974f.mo37837h() == 1) {
                        synchronized (C1707b.this.f6972d) {
                            if (C1707b.this.f6978j) {
                                C1707b.this.f6974f.mo37832m();
                            }
                        }
                        return;
                    }
                    float t2 = C1707b.this.f6974f.m37826t();
                    synchronized (C1707b.this.f6972d) {
                        if (t2 == this.f6981b) {
                            C1707b.this.f6974f.m37858b(this.f6980a);
                        }
                    }
                }
            }
        }

        /* renamed from: b.s.c.a$b$b */
        /* loaded from: classes-dex2jar.jar:b/s/c/a$b$b.class */
        public class C1709b extends BroadcastReceiver {
            public C1709b() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                    synchronized (C1707b.this.f6972d) {
                        Log.d("AudioFocusHandler", "Received noisy intent, intent=" + intent + ", registered=" + C1707b.this.f6979k + ", attr=" + C1707b.this.f6976h);
                        if (C1707b.this.f6979k && C1707b.this.f6976h != null) {
                            int a = C1707b.this.f6976h.m38315a();
                            if (a == 1) {
                                C1707b.this.f6974f.mo37833l();
                            } else if (a == 14) {
                                MediaPlayer mediaPlayer = C1707b.this.f6974f;
                                mediaPlayer.m37858b(mediaPlayer.m37826t() * 0.2f);
                            }
                        }
                    }
                }
            }
        }

        public C1707b(Context context, MediaPlayer mediaPlayer) {
            this.f6973e = context;
            this.f6974f = mediaPlayer;
            this.f6975g = (AudioManager) context.getSystemService("audio");
        }

        /* renamed from: a */
        public static int m32312a(AudioAttributesCompat audioAttributesCompat) {
            if (audioAttributesCompat == null) {
                return 0;
            }
            switch (audioAttributesCompat.m38315a()) {
                case 0:
                    Log.w("AudioFocusHandler", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                    return 1;
                case 1:
                case 14:
                    return 1;
                case 2:
                case 4:
                    return 2;
                case 3:
                    return 0;
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 12:
                case 13:
                    return 3;
                case 11:
                    return audioAttributesCompat.m38311b() == 1 ? 2 : 3;
                case 15:
                default:
                    Log.w("AudioFocusHandler", "Unidentified AudioAttribute " + audioAttributesCompat);
                    return 0;
                case 16:
                    return 4;
            }
        }

        @Override // p012b.p076s.p112c.C1705a.AbstractC1706a
        /* renamed from: a */
        public boolean mo32313a() {
            boolean z;
            AudioAttributesCompat s = this.f6974f.m37827s();
            synchronized (this.f6972d) {
                this.f6976h = s;
                if (s == null) {
                    m32310c();
                    m32307f();
                    z = true;
                } else {
                    boolean e = m32308e();
                    z = e;
                    if (e) {
                        m32309d();
                        z = e;
                    }
                }
            }
            return z;
        }

        @Override // p012b.p076s.p112c.C1705a.AbstractC1706a
        /* renamed from: b */
        public void mo32311b() {
            synchronized (this.f6972d) {
                m32310c();
                m32307f();
            }
        }

        /* renamed from: c */
        public final void m32310c() {
            if (this.f6977i != 0) {
                Log.d("AudioFocusHandler", "abandoningAudioFocusLocked, currently=" + this.f6977i);
                this.f6975g.abandonAudioFocus(this.f6971c);
                this.f6977i = 0;
                this.f6978j = false;
            }
        }

        @Override // p012b.p076s.p112c.C1705a.AbstractC1706a
        public void close() {
            synchronized (this.f6972d) {
                m32307f();
                m32310c();
            }
        }

        /* renamed from: d */
        public final void m32309d() {
            if (!this.f6979k) {
                Log.d("AudioFocusHandler", "registering becoming noisy receiver");
                this.f6973e.registerReceiver(this.f6969a, this.f6970b);
                this.f6979k = true;
            }
        }

        /* renamed from: e */
        public final boolean m32308e() {
            int a = m32312a(this.f6976h);
            boolean z = true;
            if (a != 0) {
                int requestAudioFocus = this.f6975g.requestAudioFocus(this.f6971c, this.f6976h.m38310c(), a);
                if (requestAudioFocus == 1) {
                    this.f6977i = a;
                } else {
                    Log.w("AudioFocusHandler", "requestAudioFocus(" + a + ") failed (return=" + requestAudioFocus + ") playback wouldn't start.");
                    this.f6977i = 0;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("requestAudioFocus(");
                sb.append(a);
                sb.append("), result=");
                sb.append(requestAudioFocus == 1);
                Log.d("AudioFocusHandler", sb.toString());
                this.f6978j = false;
                if (this.f6977i == 0) {
                    z = false;
                }
                return z;
            } else if (this.f6976h != null) {
                return true;
            } else {
                Log.e("AudioFocusHandler", "requestAudioFocusLocked() shouldn't be called when AudioAttributes is null");
                return true;
            }
        }

        /* renamed from: f */
        public final void m32307f() {
            if (this.f6979k) {
                Log.d("AudioFocusHandler", "unregistering becoming noisy receiver");
                this.f6973e.unregisterReceiver(this.f6969a);
                this.f6979k = false;
            }
        }

        @Override // p012b.p076s.p112c.C1705a.AbstractC1706a
        public void onPause() {
            synchronized (this.f6972d) {
                this.f6978j = false;
                m32307f();
            }
        }
    }

    public C1705a(Context context, MediaPlayer mediaPlayer) {
        this.f6968a = new C1707b(context, mediaPlayer);
    }

    /* renamed from: a */
    public void m32317a() {
        this.f6968a.close();
    }

    /* renamed from: b */
    public void m32316b() {
        this.f6968a.onPause();
    }

    /* renamed from: c */
    public boolean m32315c() {
        return this.f6968a.mo32313a();
    }

    /* renamed from: d */
    public void m32314d() {
        this.f6968a.mo32311b();
    }
}
