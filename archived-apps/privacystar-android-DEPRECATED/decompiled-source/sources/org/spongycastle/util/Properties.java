package org.spongycastle.util;

import java.math.BigInteger;
import java.security.AccessControlException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/Properties.class */
public class Properties {
    private static final ThreadLocal threadProperties = new ThreadLocal();

    private Properties() {
    }

    public static BigInteger asBigInteger(String str) {
        String fetchProperty = fetchProperty(str);
        if (fetchProperty != null) {
            return new BigInteger(fetchProperty);
        }
        return null;
    }

    public static Set<String> asKeySet(String str) {
        HashSet hashSet = new HashSet();
        String fetchProperty = fetchProperty(str);
        if (fetchProperty != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(fetchProperty, ",");
            while (stringTokenizer.hasMoreElements()) {
                hashSet.add(Strings.toLowerCase(stringTokenizer.nextToken()).trim());
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static String fetchProperty(final String str) {
        return (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.spongycastle.util.Properties.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                Map map = (Map) Properties.threadProperties.get();
                return map != null ? map.get(str) : System.getProperty(str);
            }
        });
    }

    public static boolean isOverrideSet(String str) {
        try {
            String fetchProperty = fetchProperty(str);
            if (fetchProperty != null) {
                return "true".equals(Strings.toLowerCase(fetchProperty));
            }
            return false;
        } catch (AccessControlException e) {
            return false;
        }
    }

    public static boolean removeThreadOverride(String str) {
        boolean isOverrideSet = isOverrideSet(str);
        Map map = (Map) threadProperties.get();
        if (map == null) {
            return false;
        }
        map.remove(str);
        if (map.isEmpty()) {
            threadProperties.remove();
        } else {
            threadProperties.set(map);
        }
        return isOverrideSet;
    }

    public static boolean setThreadOverride(String str, boolean z) {
        boolean isOverrideSet = isOverrideSet(str);
        Map map = (Map) threadProperties.get();
        Map map2 = map;
        if (map == null) {
            map2 = new HashMap();
        }
        map2.put(str, z ? "true" : "false");
        threadProperties.set(map2);
        return isOverrideSet;
    }
}
