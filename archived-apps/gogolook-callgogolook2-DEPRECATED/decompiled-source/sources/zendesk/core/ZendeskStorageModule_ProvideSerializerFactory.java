package zendesk.core;

import com.google.gson.Gson;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSerializerFactory.class */
public final class ZendeskStorageModule_ProvideSerializerFactory implements AbstractC10866b<Serializer> {
    public final Provider<Gson> gsonProvider;

    public ZendeskStorageModule_ProvideSerializerFactory(Provider<Gson> provider) {
        this.gsonProvider = provider;
    }

    public static ZendeskStorageModule_ProvideSerializerFactory create(Provider<Gson> provider) {
        return new ZendeskStorageModule_ProvideSerializerFactory(provider);
    }

    public static Serializer provideSerializer(Gson gson) {
        Serializer provideSerializer = ZendeskStorageModule.provideSerializer(gson);
        C10867c.m10383a(provideSerializer, "Cannot return null from a non-@Nullable @Provides method");
        return provideSerializer;
    }

    @Override // javax.inject.Provider
    public Serializer get() {
        return provideSerializer(this.gsonProvider.get());
    }
}
