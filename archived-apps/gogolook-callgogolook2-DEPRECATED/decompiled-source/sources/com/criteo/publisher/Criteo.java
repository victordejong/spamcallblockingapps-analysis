package com.criteo.publisher;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.model.C2046r;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.criteo.publisher.p029v.C2157a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/Criteo.class */
public abstract class Criteo {

    /* renamed from: a */
    public static final String f1979a = "Criteo";

    /* renamed from: b */
    public static Criteo f1980b;

    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/Criteo$Builder.class */
    public static class Builder {
        @NonNull

        /* renamed from: a */
        public final String f1981a;
        @NonNull

        /* renamed from: b */
        public final Application f1982b;
        @Nullable

        /* renamed from: c */
        public List<AdUnit> f1983c;
        @Nullable

        /* renamed from: d */
        public Boolean f1984d;
        @Nullable

        /* renamed from: e */
        public String f1985e;

        public Builder(@NonNull Application application, @NonNull String str) {
            this.f1982b = application;
            this.f1981a = str;
        }

        public Builder adUnits(@Nullable List<AdUnit> list) {
            this.f1983c = list;
            return this;
        }

        public Criteo init() throws CriteoInitException {
            return Criteo.m36066b(this.f1982b, this.f1981a, this.f1983c, this.f1984d, this.f1985e);
        }

        public Builder mopubConsent(@Nullable String str) {
            this.f1985e = str;
            return this;
        }

        public Builder usPrivacyOptOut(boolean z) {
            this.f1984d = Boolean.valueOf(z);
            return this;
        }
    }

    /* renamed from: b */
    public static Criteo m36066b(@NonNull Application application, @NonNull String str, @Nullable List<AdUnit> list, @Nullable Boolean bool, @Nullable String str2) throws CriteoInitException {
        Criteo criteo;
        synchronized (Criteo.class) {
            try {
                if (f1980b == null) {
                    try {
                        C1974i U = C1974i.m35912U();
                        U.m35910a(application);
                        U.m35908a(str);
                        if (U.m35890s().m36009g()) {
                            f1980b = new C1969e(application, list, bool, str2, U);
                        } else {
                            f1980b = new C2014j();
                        }
                    } catch (IllegalArgumentException e) {
                        throw e;
                    }
                }
                criteo = f1980b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return criteo;
    }

    public static Criteo getInstance() {
        Criteo criteo = f1980b;
        if (criteo != null) {
            return criteo;
        }
        throw new C1973h("You must initialize the SDK before calling Criteo.getInstance()");
    }

    @Deprecated
    public static Criteo init(@NonNull Application application, @NonNull String str, @Nullable List<AdUnit> list) throws CriteoInitException {
        Builder builder = new Builder(application, str);
        builder.adUnits(list);
        return builder.init();
    }

    @NonNull
    /* renamed from: a */
    public abstract C2042p mo35882a();

    @Nullable
    /* renamed from: a */
    public abstract C2046r mo35881a(@Nullable BidToken bidToken, @NonNull EnumC1908a aVar);

    @Nullable
    /* renamed from: a */
    public abstract C2052w mo35880a(@Nullable AdUnit adUnit);

    @NonNull
    /* renamed from: b */
    public abstract C2043q mo35879b();

    @NonNull
    /* renamed from: c */
    public abstract C2157a mo35878c();

    @NonNull
    public abstract C1967d createBannerController(CriteoBannerView criteoBannerView);

    public abstract BidResponse getBidResponse(AdUnit adUnit);

    public abstract void setBidsForAdUnit(Object obj, AdUnit adUnit);

    public abstract void setMopubConsent(@Nullable String str);

    public abstract void setUsPrivacyOptOut(boolean z);
}
