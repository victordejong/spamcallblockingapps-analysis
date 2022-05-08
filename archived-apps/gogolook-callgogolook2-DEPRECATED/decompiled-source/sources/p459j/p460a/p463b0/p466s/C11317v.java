package p459j.p460a.p463b0.p466s;

import android.content.Context;
import android.os.Vibrator;
import android.provider.Settings;
/* renamed from: j.a.b0.s.v */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/v.class */
public class C11317v {

    /* renamed from: a */
    public long[] f25405a;

    /* renamed from: b */
    public Vibrator f25406b;

    /* renamed from: c */
    public boolean f25407c;

    /* renamed from: d */
    public boolean f25408d;

    /* renamed from: a */
    public void m9797a() {
        if (this.f25407c && this.f25408d) {
            long[] jArr = this.f25405a;
            if (jArr == null || jArr.length != 1) {
                this.f25406b.vibrate(this.f25405a, -1);
            } else {
                this.f25406b.vibrate(jArr[0]);
            }
        }
    }

    /* renamed from: a */
    public void m9796a(Context context, boolean z) {
        this.f25407c = z;
        if (z) {
            this.f25406b = (Vibrator) context.getSystemService("vibrator");
            this.f25405a = new long[]{0, 10};
            new Settings.System();
            context.getContentResolver();
        }
    }
}
