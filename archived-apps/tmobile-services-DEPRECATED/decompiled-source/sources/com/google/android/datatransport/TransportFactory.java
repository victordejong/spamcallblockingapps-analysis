package com.google.android.datatransport;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/TransportFactory.class */
public interface TransportFactory {
    <T> Transport<T> getTransport(String str, Class<T> cls, Encoding encoding, Transformer<T, byte[]> transformer);
}
