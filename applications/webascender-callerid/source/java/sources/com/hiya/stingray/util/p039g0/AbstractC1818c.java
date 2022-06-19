package com.hiya.stingray.util.p039g0;

import android.os.Bundle;
import android.os.Parcelable;
import com.appsflyer.internal.referrer.Payload;
/* renamed from: com.hiya.stingray.util.g0.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/c.class */
public abstract class AbstractC1818c implements Parcelable {

    /* renamed from: com.hiya.stingray.util.g0.c$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/c$a.class */
    public static final class C1819a {

        /* renamed from: a */
        private Bundle f4994a = new Bundle();

        /* renamed from: b */
        public static C1819a m906b() {
            return new C1819a();
        }

        /* renamed from: a */
        public AbstractC1818c m907a() {
            return AbstractC1818c.m909b(this.f4994a);
        }

        /* renamed from: c */
        public C1819a m905c(String str) {
            this.f4994a.putString("action", str);
            return this;
        }

        /* renamed from: d */
        public C1819a m904d(String str) {
            this.f4994a.putString("category", str);
            return this;
        }

        /* renamed from: e */
        public C1819a m903e(String str) {
            this.f4994a.putString("content_type", str);
            return this;
        }

        /* renamed from: f */
        public C1819a m902f(String str) {
            this.f4994a.putString("identity", str);
            return this;
        }

        /* renamed from: g */
        public C1819a m901g(String str) {
            this.f4994a.putString("label", str);
            return this;
        }

        /* renamed from: h */
        public C1819a m900h(String str) {
            this.f4994a.putString("name", str);
            return this;
        }

        /* renamed from: i */
        public C1819a m899i(Boolean bool) {
            this.f4994a.putBoolean("overlay_shown", bool.booleanValue());
            return this;
        }

        /* renamed from: j */
        public C1819a m898j(String str) {
            this.f4994a.putString("reputation", str);
            return this;
        }

        /* renamed from: k */
        public C1819a m897k(String str) {
            this.f4994a.putString("screen", str);
            return this;
        }

        /* renamed from: l */
        public C1819a m896l(String str) {
            this.f4994a.putString(Payload.SOURCE, str);
            return this;
        }

        /* renamed from: m */
        public C1819a m895m(String str) {
            this.f4994a.putString(Payload.TYPE, str);
            return this;
        }

        /* renamed from: n */
        public C1819a m894n(String str) {
            this.f4994a.putString("value", str);
            return this;
        }
    }

    /* renamed from: b */
    public static AbstractC1818c m909b(Bundle bundle) {
        return new b(bundle);
    }

    /* renamed from: c */
    public abstract Bundle m908c();
}
