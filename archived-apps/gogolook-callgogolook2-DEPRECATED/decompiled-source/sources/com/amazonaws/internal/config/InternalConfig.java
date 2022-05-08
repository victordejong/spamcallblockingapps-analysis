package com.amazonaws.internal.config;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/config/InternalConfig.class */
public class InternalConfig {
    public final SignerConfig defaultSignerConfig = getDefaultSigner();
    public final Map<String, SignerConfig> regionSigners = getDefaultRegionSigners();
    public final Map<String, SignerConfig> serviceSigners = getDefaultServiceSigners();
    public final Map<String, SignerConfig> serviceRegionSigners = getDefaultServiceRegionSigners();
    public final Map<String, HttpClientConfig> httpClients = getDefaultHttpClients();
    public final List<HostRegexToRegionMapping> hostRegexToRegionMappings = getDefaultHostRegexToRegionMappings();

    /* loaded from: classes-dex2jar.jar:com/amazonaws/internal/config/InternalConfig$Factory.class */
    public static class Factory {
        public static final InternalConfig SINGELTON;

        static {
            try {
                SINGELTON = new InternalConfig();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new IllegalStateException("Fatal: Failed to load the internal config for AWS Android SDK", e2);
            }
        }

        public static InternalConfig getInternalConfig() {
            return SINGELTON;
        }
    }

    static {
        LogFactory.getLog(InternalConfig.class);
    }

    public static List<HostRegexToRegionMapping> getDefaultHostRegexToRegionMappings() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-external-1\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com", "us-gov-west-1"));
        return arrayList;
    }

    public static Map<String, HttpClientConfig> getDefaultHttpClients() {
        HashMap hashMap = new HashMap();
        hashMap.put("AmazonCloudWatchClient", new HttpClientConfig("monitoring"));
        hashMap.put("AmazonSimpleDBClient", new HttpClientConfig("sdb"));
        hashMap.put("AmazonSimpleEmailServiceClient", new HttpClientConfig("email"));
        hashMap.put("AWSSecurityTokenServiceClient", new HttpClientConfig("sts"));
        hashMap.put("AmazonCognitoIdentityClient", new HttpClientConfig("cognito-identity"));
        hashMap.put("AmazonCognitoIdentityProviderClient", new HttpClientConfig("cognito-idp"));
        hashMap.put("AmazonCognitoSyncClient", new HttpClientConfig("cognito-sync"));
        hashMap.put("AmazonKinesisFirehoseClient", new HttpClientConfig("firehose"));
        hashMap.put("AWSIotClient", new HttpClientConfig("execute-api"));
        hashMap.put("AmazonLexRuntimeClient", new HttpClientConfig("runtime.lex"));
        hashMap.put("AmazonPinpointClient", new HttpClientConfig("mobiletargeting"));
        hashMap.put("AmazonPinpointAnalyticsClient", new HttpClientConfig("mobileanalytics"));
        return hashMap;
    }

    public static Map<String, SignerConfig> getDefaultRegionSigners() {
        HashMap hashMap = new HashMap();
        hashMap.put("eu-central-1", new SignerConfig("AWS4SignerType"));
        hashMap.put("cn-north-1", new SignerConfig("AWS4SignerType"));
        return hashMap;
    }

    public static Map<String, SignerConfig> getDefaultServiceRegionSigners() {
        HashMap hashMap = new HashMap();
        hashMap.put("s3/eu-central-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap.put("s3/cn-north-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap.put("s3/us-east-2", new SignerConfig("AWSS3V4SignerType"));
        hashMap.put("s3/ca-central-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap.put("s3/ap-south-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap.put("s3/ap-northeast-2", new SignerConfig("AWSS3V4SignerType"));
        hashMap.put("s3/eu-west-2", new SignerConfig("AWSS3V4SignerType"));
        return hashMap;
    }

    public static Map<String, SignerConfig> getDefaultServiceSigners() {
        HashMap hashMap = new HashMap();
        hashMap.put("ec2", new SignerConfig("QueryStringSignerType"));
        hashMap.put("email", new SignerConfig("AWS3SignerType"));
        hashMap.put("s3", new SignerConfig("S3SignerType"));
        hashMap.put("sdb", new SignerConfig("QueryStringSignerType"));
        hashMap.put("runtime.lex", new SignerConfig("AmazonLexV4Signer"));
        return hashMap;
    }

    public static SignerConfig getDefaultSigner() {
        return new SignerConfig("AWS4SignerType");
    }

    public List<HostRegexToRegionMapping> getHostRegexToRegionMappings() {
        return Collections.unmodifiableList(this.hostRegexToRegionMappings);
    }

    public HttpClientConfig getHttpClientConfig(String str) {
        return this.httpClients.get(str);
    }

    public SignerConfig getSignerConfig(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                SignerConfig signerConfig = this.serviceRegionSigners.get(str + "/" + str2);
                if (signerConfig != null) {
                    return signerConfig;
                }
                SignerConfig signerConfig2 = this.regionSigners.get(str2);
                if (signerConfig2 != null) {
                    return signerConfig2;
                }
            }
            SignerConfig signerConfig3 = this.serviceSigners.get(str);
            SignerConfig signerConfig4 = signerConfig3;
            if (signerConfig3 == null) {
                signerConfig4 = this.defaultSignerConfig;
            }
            return signerConfig4;
        }
        throw new IllegalArgumentException();
    }
}
