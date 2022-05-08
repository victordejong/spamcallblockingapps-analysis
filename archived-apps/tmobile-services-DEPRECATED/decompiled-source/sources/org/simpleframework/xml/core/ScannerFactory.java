package org.simpleframework.xml.core;

import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ScannerFactory.class */
public class ScannerFactory {
    private final Cache<Scanner> cache = new ConcurrentCache();
    private final Support support;

    public ScannerFactory(Support support) {
        this.support = support;
    }

    public Scanner getInstance(Class cls) throws Exception {
        Scanner fetch = this.cache.fetch(cls);
        Scanner scanner = fetch;
        if (fetch == null) {
            Detail detail = this.support.getDetail(cls);
            if (this.support.isPrimitive(cls)) {
                scanner = new PrimitiveScanner(detail);
            } else {
                ObjectScanner objectScanner = new ObjectScanner(detail, this.support);
                scanner = objectScanner;
                if (objectScanner.isPrimitive()) {
                    scanner = objectScanner;
                    if (!this.support.isContainer(cls)) {
                        scanner = new DefaultScanner(detail, this.support);
                    }
                }
            }
            this.cache.cache(cls, scanner);
        }
        return scanner;
    }
}
