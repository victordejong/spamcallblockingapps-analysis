package org.mozilla.javascript.commonjs.module.provider;

import java.net.URLConnection;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/commonjs/module/provider/UrlConnectionExpiryCalculator.class */
public interface UrlConnectionExpiryCalculator {
    long calculateExpiry(URLConnection uRLConnection);
}
