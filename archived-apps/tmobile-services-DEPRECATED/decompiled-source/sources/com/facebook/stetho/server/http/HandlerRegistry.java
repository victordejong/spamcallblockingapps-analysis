package com.facebook.stetho.server.http;

import androidx.annotation.Nullable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/server/http/HandlerRegistry.class */
public class HandlerRegistry {
    private final ArrayList<PathMatcher> mPathMatchers = new ArrayList<>();
    private final ArrayList<HttpHandler> mHttpHandlers = new ArrayList<>();

    @Nullable
    public HttpHandler lookup(String str) {
        synchronized (this) {
            int size = this.mPathMatchers.size();
            for (int i = 0; i < size; i++) {
                if (this.mPathMatchers.get(i).match(str)) {
                    return this.mHttpHandlers.get(i);
                }
            }
            return null;
        }
    }

    public void register(PathMatcher pathMatcher, HttpHandler httpHandler) {
        synchronized (this) {
            this.mPathMatchers.add(pathMatcher);
            this.mHttpHandlers.add(httpHandler);
        }
    }

    public boolean unregister(PathMatcher pathMatcher, HttpHandler httpHandler) {
        synchronized (this) {
            int indexOf = this.mPathMatchers.indexOf(pathMatcher);
            if (indexOf < 0 || httpHandler != this.mHttpHandlers.get(indexOf)) {
                return false;
            }
            this.mPathMatchers.remove(indexOf);
            this.mHttpHandlers.remove(indexOf);
            return true;
        }
    }
}
