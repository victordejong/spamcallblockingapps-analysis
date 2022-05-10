package com.mopub.network;

import com.mopub.common.Preconditions;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/ImpressionsEmitter.class */
public class ImpressionsEmitter {

    /* renamed from: a */
    public static final HashSet<ImpressionListener> f35024a = new HashSet<>();

    /* renamed from: a */
    public static Set<ImpressionListener> m3794a() {
        HashSet hashSet;
        synchronized (ImpressionsEmitter.class) {
            try {
                hashSet = new HashSet(f35024a);
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m3793a(String str, ImpressionData impressionData) {
        Preconditions.checkNotNull(str);
        for (ImpressionListener impressionListener : m3794a()) {
            impressionListener.onImpression(str, impressionData);
        }
    }

    public static void addListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f35024a.add(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void removeListener(ImpressionListener impressionListener) {
        Preconditions.checkNotNull(impressionListener);
        synchronized (ImpressionsEmitter.class) {
            try {
                f35024a.remove(impressionListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
