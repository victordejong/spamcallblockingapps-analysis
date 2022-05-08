package com.mopub.nativeads;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ViewBinder.class */
public class ViewBinder {

    /* renamed from: a */
    public final int f9302a;

    /* renamed from: b */
    public final int f9303b;

    /* renamed from: c */
    public final int f9304c;

    /* renamed from: d */
    public final int f9305d;

    /* renamed from: e */
    public final int f9306e;

    /* renamed from: f */
    public final int f9307f;

    /* renamed from: g */
    public final int f9308g;

    /* renamed from: h */
    public final int f9309h;
    @NonNull

    /* renamed from: i */
    public final Map<String, Integer> f9310i;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/ViewBinder$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public final int f9311a;

        /* renamed from: b */
        public int f9312b;

        /* renamed from: c */
        public int f9313c;

        /* renamed from: d */
        public int f9314d;

        /* renamed from: e */
        public int f9315e;

        /* renamed from: f */
        public int f9316f;

        /* renamed from: g */
        public int f9317g;

        /* renamed from: h */
        public int f9318h;
        @NonNull

        /* renamed from: i */
        public Map<String, Integer> f9319i;

        public Builder(int i) {
            this.f9319i = Collections.emptyMap();
            this.f9311a = i;
            this.f9319i = new HashMap();
        }

        @NonNull
        public final Builder addExtra(String str, int i) {
            this.f9319i.put(str, Integer.valueOf(i));
            return this;
        }

        @NonNull
        public final Builder addExtras(Map<String, Integer> map) {
            this.f9319i = new HashMap(map);
            return this;
        }

        @NonNull
        public final ViewBinder build() {
            return new ViewBinder(this);
        }

        @NonNull
        public final Builder callToActionId(int i) {
            this.f9314d = i;
            return this;
        }

        @NonNull
        public final Builder iconImageId(int i) {
            this.f9316f = i;
            return this;
        }

        @NonNull
        public final Builder mainImageId(int i) {
            this.f9315e = i;
            return this;
        }

        @NonNull
        public final Builder privacyInformationIconImageId(int i) {
            this.f9317g = i;
            return this;
        }

        @NonNull
        public final Builder sponsoredTextId(int i) {
            this.f9318h = i;
            return this;
        }

        @NonNull
        public final Builder textId(int i) {
            this.f9313c = i;
            return this;
        }

        @NonNull
        public final Builder titleId(int i) {
            this.f9312b = i;
            return this;
        }
    }

    public ViewBinder(@NonNull Builder builder) {
        this.f9302a = builder.f9311a;
        this.f9303b = builder.f9312b;
        this.f9304c = builder.f9313c;
        this.f9305d = builder.f9314d;
        this.f9306e = builder.f9315e;
        this.f9307f = builder.f9316f;
        this.f9308g = builder.f9317g;
        this.f9309h = builder.f9318h;
        this.f9310i = builder.f9319i;
    }
}
