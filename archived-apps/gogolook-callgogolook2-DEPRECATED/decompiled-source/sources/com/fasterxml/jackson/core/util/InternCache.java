package com.fasterxml.jackson.core.util;

import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/util/InternCache.class */
public final class InternCache extends ConcurrentHashMap<String, String> {
    public static final InternCache instance = new InternCache();
    public final Object lock = new Object();

    public InternCache() {
        super(180, 0.8f, 4);
    }

    public String intern(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (this.lock) {
                if (size() >= 180) {
                    clear();
                }
            }
        }
        String intern = str.intern();
        put(intern, intern);
        return intern;
    }
}
