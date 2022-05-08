package com.flurry.sdk;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.fs */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fs.class */
public final class C3112fs {

    /* renamed from: c */
    public float f5037c = 0.0f;

    /* renamed from: a */
    public float f5035a = 0.0f;

    /* renamed from: b */
    public List<C3113a> f5036b = new ArrayList();

    /* renamed from: com.flurry.sdk.fs$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fs$a.class */
    public static final class C3113a {

        /* renamed from: a */
        public C2930da f5038a;

        /* renamed from: b */
        public boolean f5039b;

        /* renamed from: c */
        public float f5040c = 0.0f;

        /* renamed from: d */
        public float f5041d = 0.0f;

        /* renamed from: e */
        public float f5042e = 0.0f;

        /* renamed from: f */
        public long f5043f;

        public C3113a(C2930da daVar) {
            this.f5038a = daVar;
        }

        /* renamed from: a */
        public final boolean m33046a(boolean z, boolean z2, int i, float f) {
            if (this.f5039b || f < this.f5042e) {
                return false;
            }
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.f5043f;
            this.f5043f = currentTimeMillis;
            if (currentTimeMillis - j > 2000) {
                this.f5041d = 0.0f;
            }
            if ((z || i >= this.f5038a.f4554c) && (!this.f5038a.f4556e || z2)) {
                float f2 = f - this.f5042e;
                this.f5042e = f;
                C2930da daVar = this.f5038a;
                if (daVar.f4555d) {
                    this.f5041d += f2;
                    if (this.f5041d < ((float) daVar.f4553b)) {
                        return false;
                    }
                    this.f5039b = true;
                    return true;
                }
                this.f5040c += f2;
                if (this.f5040c < ((float) daVar.f4553b)) {
                    return false;
                }
                this.f5039b = true;
                return true;
            }
            this.f5041d = 0.0f;
            this.f5042e = f;
            return false;
        }
    }

    public C3112fs(List<C2930da> list) {
        for (C2930da daVar : list) {
            this.f5036b.add(new C3113a(daVar));
        }
    }

    /* renamed from: a */
    public final void m33047a(boolean z, int i, float f) {
        float f2 = this.f5037c;
        if (f > f2) {
            if (z && i == 100) {
                this.f5035a += f - f2;
            }
            this.f5037c = f;
        }
    }
}
