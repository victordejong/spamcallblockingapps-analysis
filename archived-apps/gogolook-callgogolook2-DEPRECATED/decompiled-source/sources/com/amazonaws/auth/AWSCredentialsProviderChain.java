package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWSCredentialsProviderChain.class */
public class AWSCredentialsProviderChain implements AWSCredentialsProvider {
    public static final Log log = LogFactory.getLog(AWSCredentialsProviderChain.class);
    public AWSCredentialsProvider lastUsedProvider;
    public List<AWSCredentialsProvider> credentialsProviders = new LinkedList();
    public boolean reuseLastProvider = true;

    public AWSCredentialsProviderChain(AWSCredentialsProvider... aWSCredentialsProviderArr) {
        if (aWSCredentialsProviderArr == null || aWSCredentialsProviderArr.length == 0) {
            throw new IllegalArgumentException("No credential providers specified");
        }
        for (AWSCredentialsProvider aWSCredentialsProvider : aWSCredentialsProviderArr) {
            this.credentialsProviders.add(aWSCredentialsProvider);
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        AWSCredentialsProvider aWSCredentialsProvider;
        if (this.reuseLastProvider && (aWSCredentialsProvider = this.lastUsedProvider) != null) {
            return aWSCredentialsProvider.getCredentials();
        }
        for (AWSCredentialsProvider aWSCredentialsProvider2 : this.credentialsProviders) {
            try {
                AWSCredentials credentials = aWSCredentialsProvider2.getCredentials();
                if (!(credentials.getAWSAccessKeyId() == null || credentials.getAWSSecretKey() == null)) {
                    Log log2 = log;
                    log2.debug("Loading credentials from " + aWSCredentialsProvider2.toString());
                    this.lastUsedProvider = aWSCredentialsProvider2;
                    return credentials;
                }
            } catch (Exception e) {
                Log log3 = log;
                log3.debug("Unable to load credentials from " + aWSCredentialsProvider2.toString() + ": " + e.getMessage());
            }
        }
        throw new AmazonClientException("Unable to load AWS credentials from any provider in the chain");
    }
}
