package org.mozilla.javascript.commonjs.module.provider;

import java.io.Reader;
import java.io.Serializable;
import java.net.URI;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/provider/ModuleSource.class */
public class ModuleSource implements Serializable {
    private static final long serialVersionUID = 1;
    private final URI base;
    private final Reader reader;
    private final Object securityDomain;
    private final URI uri;
    private final Object validator;

    public ModuleSource(Reader reader, Object obj, URI uri, URI uri2, Object obj2) {
        this.reader = reader;
        this.securityDomain = obj;
        this.uri = uri;
        this.base = uri2;
        this.validator = obj2;
    }

    public URI getBase() {
        return this.base;
    }

    public Reader getReader() {
        return this.reader;
    }

    public Object getSecurityDomain() {
        return this.securityDomain;
    }

    public URI getUri() {
        return this.uri;
    }

    public Object getValidator() {
        return this.validator;
    }
}
