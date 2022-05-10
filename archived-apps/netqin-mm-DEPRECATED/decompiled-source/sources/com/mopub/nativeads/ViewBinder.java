package com.mopub.nativeads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ViewBinder.class */
public class ViewBinder {

    /* renamed from: a */
    public final int f34952a;

    /* renamed from: b */
    public final int f34953b;

    /* renamed from: c */
    public final int f34954c;

    /* renamed from: d */
    public final int f34955d;

    /* renamed from: e */
    public final int f34956e;

    /* renamed from: f */
    public final int f34957f;

    /* renamed from: g */
    public final int f34958g;

    /* renamed from: h */
    public final int f34959h;

    /* renamed from: i */
    public final Map<String, Integer> f34960i;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final int f34961a;

        /* renamed from: b */
        public int f34962b;

        /* renamed from: c */
        public int f34963c;

        /* renamed from: d */
        public int f34964d;

        /* renamed from: e */
        public int f34965e;

        /* renamed from: f */
        public int f34966f;

        /* renamed from: g */
        public int f34967g;

        /* renamed from: h */
        public int f34968h;

        /* renamed from: i */
        public Map<String, Integer> f34969i;

        public Builder(int i) {
            this.f34969i = Collections.emptyMap();
            this.f34961a = i;
            this.f34969i = new HashMap();
        }

        public final Builder addExtra(String str, int i) {
            this.f34969i.put(str, Integer.valueOf(i));
            return this;
        }

        public final Builder addExtras(Map<String, Integer> map) {
            this.f34969i = new HashMap(map);
            return this;
        }

        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        public final Builder callToActionId(int i) {
            this.f34964d = i;
            return this;
        }

        public final Builder iconImageId(int i) {
            this.f34966f = i;
            return this;
        }

        public final Builder mainImageId(int i) {
            this.f34965e = i;
            return this;
        }

        public final Builder privacyInformationIconImageId(int i) {
            this.f34967g = i;
            return this;
        }

        public final Builder sponsoredTextId(int i) {
            this.f34968h = i;
            return this;
        }

        public final Builder textId(int i) {
            this.f34963c = i;
            return this;
        }

        public final Builder titleId(int i) {
            this.f34962b = i;
            return this;
        }
    }

    public ViewBinder(Builder builder) {
        this.f34952a = builder.f34961a;
        this.f34953b = builder.f34962b;
        this.f34954c = builder.f34963c;
        this.f34955d = builder.f34964d;
        this.f34956e = builder.f34965e;
        this.f34957f = builder.f34966f;
        this.f34958g = builder.f34967g;
        this.f34959h = builder.f34968h;
        this.f34960i = builder.f34969i;
    }
}
