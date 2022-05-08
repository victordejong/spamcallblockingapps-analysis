package com.privacystar.core.application;

import android.content.Context;
import dagger.Module;
import dagger.Provides;
import io.realm.Realm;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\b\u0007\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0007J\b\u0010\u0006\u001a\u00020\u0007H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/application/ApplicationModule;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "provideContext", "provideRealm", "Lio/realm/Realm;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
@Module
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/ApplicationModule.class */
public final class ApplicationModule {
    private final Context context;

    public ApplicationModule(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    @Provides
    @Singleton
    @NotNull
    public final Context provideContext() {
        return this.context;
    }

    @Provides
    @Singleton
    @NotNull
    public final Realm provideRealm() {
        Realm defaultInstance = Realm.getDefaultInstance();
        Intrinsics.checkExpressionValueIsNotNull(defaultInstance, "Realm.getDefaultInstance()");
        return defaultInstance;
    }
}
