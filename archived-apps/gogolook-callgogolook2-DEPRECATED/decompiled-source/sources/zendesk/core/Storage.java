package zendesk.core;
/* loaded from: classes3-dex2jar.jar:zendesk/core/Storage.class */
public interface Storage {
    void clear();

    SessionStorage getSessionStorage();

    boolean hasSdkConfigChanged(ApplicationConfiguration applicationConfiguration);

    void storeSdkHash(ApplicationConfiguration applicationConfiguration);
}
