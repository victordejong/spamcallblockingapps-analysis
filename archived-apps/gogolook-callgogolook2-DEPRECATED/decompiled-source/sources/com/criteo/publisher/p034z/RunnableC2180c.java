package com.criteo.publisher.p034z;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.EnumC1972g;
/* renamed from: com.criteo.publisher.z.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/z/c.class */
public class RunnableC2180c implements Runnable {
    @Nullable

    /* renamed from: a */
    public final CriteoInterstitialAdListener f2515a;
    @NonNull

    /* renamed from: b */
    public final EnumC1972g f2516b;

    /* renamed from: com.criteo.publisher.z.c$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/z/c$a.class */
    public static /* synthetic */ class C2181a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2517a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1972g.values().length];
            f2517a = iArr;
            try {
                iArr[EnumC1972g.VALID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2517a[EnumC1972g.INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public RunnableC2180c(@Nullable CriteoInterstitialAdListener criteoInterstitialAdListener, @NonNull EnumC1972g gVar) {
        this.f2515a = criteoInterstitialAdListener;
        this.f2516b = gVar;
    }

    /* renamed from: a */
    private void m35521a() {
        if (this.f2515a != null) {
            int i = C2181a.f2517a[this.f2516b.ordinal()];
            if (i == 1) {
                this.f2515a.onAdReceived();
            } else if (i == 2) {
                this.f2515a.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            m35521a();
        } catch (Throwable th) {
            Log.e("Criteo.ILCT", "Internal ILCT PostExec error.", th);
        }
    }
}
