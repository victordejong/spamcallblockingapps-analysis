package com.amazonaws.auth;

import com.amazonaws.Request;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/NoOpSigner.class */
public class NoOpSigner implements Signer {
    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) {
    }
}
