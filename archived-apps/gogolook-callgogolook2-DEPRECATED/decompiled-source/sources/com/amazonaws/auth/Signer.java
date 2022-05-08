package com.amazonaws.auth;

import com.amazonaws.Request;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/Signer.class */
public interface Signer {
    void sign(Request<?> request, AWSCredentials aWSCredentials);
}
