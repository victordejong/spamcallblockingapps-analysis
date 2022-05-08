package com.google.android.gms.common.internal;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private final String f3999a;

    public ac(String str) {
        this.f3999a = str;
    }

    private static CharSequence a(Object obj) {
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final StringBuilder a(StringBuilder sb, Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        if (it.hasNext()) {
            sb.append(a(it.next()));
            while (it.hasNext()) {
                sb.append(this.f3999a);
                sb.append(a(it.next()));
            }
        }
        return sb;
    }
}
