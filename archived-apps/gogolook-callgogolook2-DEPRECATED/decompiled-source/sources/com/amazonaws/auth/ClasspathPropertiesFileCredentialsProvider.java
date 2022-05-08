package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.InputStream;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider.class */
public class ClasspathPropertiesFileCredentialsProvider implements AWSCredentialsProvider {
    public static String DEFAULT_PROPERTIES_FILE = "AwsCredentials.properties";
    public final String credentialsFilePath;

    public ClasspathPropertiesFileCredentialsProvider() {
        this(DEFAULT_PROPERTIES_FILE);
    }

    public ClasspathPropertiesFileCredentialsProvider(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Credentials file path cannot be null");
        } else if (!str.startsWith("/")) {
            this.credentialsFilePath = "/" + str;
        } else {
            this.credentialsFilePath = str;
        }
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        InputStream resourceAsStream = ClasspathPropertiesFileCredentialsProvider.class.getResourceAsStream(this.credentialsFilePath);
        if (resourceAsStream != null) {
            try {
                return new PropertiesCredentials(resourceAsStream);
            } catch (IOException e) {
                throw new AmazonClientException("Unable to load AWS credentials from the " + this.credentialsFilePath + " file on the classpath", e);
            }
        } else {
            throw new AmazonClientException("Unable to load AWS credentials from the " + this.credentialsFilePath + " file on the classpath");
        }
    }

    public String toString() {
        return ClasspathPropertiesFileCredentialsProvider.class.getSimpleName() + "(" + this.credentialsFilePath + ")";
    }
}
