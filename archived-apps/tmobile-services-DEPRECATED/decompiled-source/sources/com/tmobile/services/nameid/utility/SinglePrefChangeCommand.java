package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import retrofit2.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SinglePrefChangeCommand.class */
public class SinglePrefChangeCommand implements Command {

    /* renamed from: a */
    private UserPreference f14434a;

    /* renamed from: b */
    private ApiUtils.Mode f14435b;

    /* renamed from: c */
    private Observer<UserPreferenceStatus> f14436c;

    /* renamed from: d */
    private Observer<Response<Void>> f14437d;

    /* renamed from: com.tmobile.services.nameid.utility.SinglePrefChangeCommand$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SinglePrefChangeCommand$1.class */
    static /* synthetic */ class C19091 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14438a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ApiUtils.Mode.values().length];
            f14438a = iArr;
            try {
                iArr[ApiUtils.Mode.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14438a[ApiUtils.Mode.UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14438a[ApiUtils.Mode.DELETE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public SinglePrefChangeCommand(@NonNull UserPreference userPreference, @NonNull ApiUtils.Mode mode, Observer<UserPreferenceStatus> observer, Observer<Response<Void>> observer2) {
        this.f14434a = userPreference;
        this.f14435b = mode;
        this.f14436c = observer;
        this.f14437d = observer2;
    }

    /* renamed from: a */
    private void m5349a() {
        ApiUtils.m6872a(this.f14434a);
        ApiWrapper.m6785c(this.f14434a, this.f14436c);
    }

    /* renamed from: b */
    private void m5348b() {
        ApiUtils.m6850l(this.f14434a);
        ApiWrapper.m6775h(this.f14434a, this.f14437d);
    }

    /* renamed from: c */
    private void m5347c() {
        ApiUtils.m6829v0(this.f14434a);
        ApiWrapper.m6766l0(this.f14434a, this.f14437d);
    }

    /* renamed from: d */
    private void m5346d(Throwable th) {
        Observer<UserPreferenceStatus> observer = this.f14436c;
        if (observer != null) {
            observer.onError(th);
        }
        Observer<Response<Void>> observer2 = this.f14437d;
        if (observer2 != null) {
            observer2.onError(th);
        }
    }

    @Override // com.tmobile.services.nameid.utility.Command
    public void execute() {
        int i = C19091.f14438a[this.f14435b.ordinal()];
        if (i == 1) {
            m5349a();
        } else if (i == 2) {
            m5347c();
        } else if (i != 3) {
            m5346d(new IllegalArgumentException("Unrecognized Mode: " + this.f14435b));
        } else {
            m5348b();
        }
    }

    public String toString() {
        return "SinglePrefChangeCommand{userPreference=" + this.f14434a.toString() + ", userPrefMode=" + this.f14435b + ", addObserver=" + this.f14436c + ", voidResponseObserver=" + this.f14437d + '}';
    }
}
