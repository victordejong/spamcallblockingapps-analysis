package com.hiya.stingray.util.p009g0;

import android.os.Bundle;
import android.os.Parcelable;
/* renamed from: com.hiya.stingray.util.g0.c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/c.class */
public abstract class AbstractC0156c implements Parcelable {

    /* renamed from: com.hiya.stingray.util.g0.c$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/g0/c$a.class */
    public static final class C0157a {

        /* renamed from: a */
        private Bundle f315a = new Bundle();

        /* renamed from: b */
        public static C0157a m906b() {
            return new C0157a();
        }

        /* renamed from: a */
        public AbstractC0156c m907a() {
            return AbstractC0156c.m909b(this.f315a);
        }

        /* renamed from: c */
        public C0157a m905c(String str) {
            this.f315a.putString("action", str);
            return this;
        }

        /* renamed from: d */
        public C0157a m904d(String str) {
            this.f315a.putString("category", str);
            return this;
        }

        /* renamed from: e */
        public C0157a m903e(String str) {
            this.f315a.putString("content_type", str);
            return this;
        }

        /* renamed from: f */
        public C0157a m902f(String str) {
            this.f315a.putString("identity", str);
            return this;
        }

        /* renamed from: g */
        public C0157a m901g(String str) {
            this.f315a.putString("label", str);
            return this;
        }

        /* renamed from: h */
        public C0157a m900h(String str) {
            this.f315a.putString("name", str);
            return this;
        }

        /* renamed from: i */
        public C0157a m899i(Boolean bool) {
            this.f315a.putBoolean("overlay_shown", bool.booleanValue());
            return this;
        }

        /* renamed from: j */
        public C0157a m898j(String str) {
            this.f315a.putString("reputation", str);
            return this;
        }

        /* renamed from: k */
        public C0157a m897k(String str) {
            this.f315a.putString("screen", str);
            return this;
        }

        /* renamed from: l */
        public C0157a m896l(String str) {
            this.f315a.putString("source", str);
            return this;
        }

        /* renamed from: m */
        public C0157a m895m(String str) {
            this.f315a.putString("type", str);
            return this;
        }

        /* renamed from: n */
        public C0157a m894n(String str) {
            this.f315a.putString("value", str);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static AbstractC0156c m909b(Bundle bundle) {
        return new b(bundle);
    }

    /* renamed from: c */
    public abstract Bundle m908c();
}
