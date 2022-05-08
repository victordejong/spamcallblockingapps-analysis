package org.mozilla.javascript.commonjs.module;

import java.net.URI;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.TopLevel;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/ModuleScope.class */
public class ModuleScope extends TopLevel {
    private static final long serialVersionUID = 1;
    private final URI base;
    private final URI uri;

    public ModuleScope(Scriptable scriptable, URI uri, URI uri2) {
        this.uri = uri;
        this.base = uri2;
        setPrototype(scriptable);
        cacheBuiltins();
    }

    public URI getBase() {
        return this.base;
    }

    public URI getUri() {
        return this.uri;
    }
}
