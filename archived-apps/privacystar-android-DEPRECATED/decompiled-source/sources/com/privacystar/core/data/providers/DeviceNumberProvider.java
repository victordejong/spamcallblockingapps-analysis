package com.privacystar.core.data.providers;

import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.InformationUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0002J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/data/providers/DeviceNumberProvider;", "Lcom/privacystar/core/data/providers/NumberProvider;", "()V", "cydNumber", "", "simNumber", "fetchCydNumber", "fetchSimNumber", "getNumber", "setNumber", "", "number", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/DeviceNumberProvider.class */
public final class DeviceNumberProvider implements NumberProvider {
    public static final DeviceNumberProvider INSTANCE = new DeviceNumberProvider();
    private static String cydNumber;
    private static String simNumber;

    private DeviceNumberProvider() {
    }

    private final String fetchCydNumber() {
        String str = cydNumber;
        if (str == null) {
            str = PreferenceUtil.getUserNumberToVerify();
        }
        return str;
    }

    private final String fetchSimNumber() {
        String str = simNumber;
        if (str == null) {
            str = InformationUtil.getPhoneNumber(PSApplication.context());
        }
        return str;
    }

    @Override // com.privacystar.core.data.providers.NumberProvider
    @NotNull
    public String getNumber() {
        String fetchCydNumber = fetchCydNumber();
        if (fetchCydNumber == null) {
            fetchCydNumber = fetchSimNumber();
        }
        if (fetchCydNumber == null) {
            fetchCydNumber = "";
        }
        return fetchCydNumber;
    }

    @Override // com.privacystar.core.data.providers.NumberProvider
    public void setNumber(@NotNull String number) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        Timber.m37d("Manually setting user device number: [%s]", number);
        PreferenceUtil.putUserNumberToVerify(number);
    }
}
