package com.nimbusds.jose.p012m;

import com.nimbusds.jose.f;
import java.util.Collection;
/* renamed from: com.nimbusds.jose.m.a */
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/m/a.class */
class C0193a {
    /* renamed from: a */
    private static String m795a(Collection collection) {
        StringBuilder sb = new StringBuilder();
        Object[] array = collection.toArray();
        for (int i = 0; i < array.length; i++) {
            if (i != 0) {
                if (i < array.length - 1) {
                    sb.append(", ");
                } else if (i == array.length - 1) {
                    sb.append(" or ");
                }
            }
            sb.append(array[i].toString());
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m794b(f fVar, Collection<f> collection) {
        return "Unsupported JWS algorithm " + fVar + ", must be " + m795a(collection);
    }
}
