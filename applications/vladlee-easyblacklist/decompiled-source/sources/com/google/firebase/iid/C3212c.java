package com.google.firebase.iid;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.firebase.iid.c */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/c.class */
public final class C3212c {
    /* renamed from: a */
    public static KeyPair m486a() {
        try {
            KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA");
            instance.initialize(2048);
            return instance.generateKeyPair();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }
}
