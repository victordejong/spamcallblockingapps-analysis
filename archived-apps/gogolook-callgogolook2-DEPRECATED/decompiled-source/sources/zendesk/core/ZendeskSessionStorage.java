package zendesk.core;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.Cache;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskSessionStorage.class */
public class ZendeskSessionStorage implements SessionStorage {
    public final BaseStorage additionalSdkStorage;
    public final IdentityStorage identityStorage;
    public final BaseStorage mediaCache;
    public final List<File> registeredFolders;
    public final Cache responseCache;
    public final File zendeskCacheDir;
    public final File zendeskDataDir;

    public ZendeskSessionStorage(IdentityStorage identityStorage, BaseStorage baseStorage, Cache cache, BaseStorage baseStorage2, File file, File file2, File file3) {
        this.identityStorage = identityStorage;
        this.additionalSdkStorage = baseStorage;
        this.responseCache = cache;
        this.zendeskCacheDir = file;
        this.zendeskDataDir = file2;
        this.mediaCache = baseStorage2;
        this.registeredFolders = new ArrayList(Arrays.asList(this.zendeskCacheDir, this.zendeskDataDir, file3));
    }

    public static void clearDirectory(File file) {
        if (file != null && file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && file.isDirectory() && C10858a.m10398b(listFiles)) {
                for (File file2 : listFiles) {
                    clearDirectory(file2);
                }
            }
            file.delete();
        }
    }

    @Override // zendesk.core.SessionStorage
    public void clear() {
        this.identityStorage.clear();
        this.additionalSdkStorage.clear();
        this.mediaCache.clear();
        try {
            this.responseCache.evictAll();
        } catch (IOException e) {
        }
        for (File file : this.registeredFolders) {
            clearDirectory(file);
        }
    }

    @Override // zendesk.core.SessionStorage
    public BaseStorage getAdditionalSdkStorage() {
        return this.additionalSdkStorage;
    }
}
