package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import com.facebook.ads.ExtraHints;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/AWS3Signer.class */
public class AWS3Signer extends AbstractAWSSigner {
    public static final Log log = LogFactory.getLog(AWS3Signer.class);
    public String overriddenDate;

    public void addSessionCredentials(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.addHeader("x-amz-security-token", aWSSessionCredentials.getSessionToken());
    }

    public String getCanonicalizedHeadersForStringToSign(Request<?> request) {
        List<String> headersForStringToSign = getHeadersForStringToSign(request);
        for (int i = 0; i < headersForStringToSign.size(); i++) {
            headersForStringToSign.set(i, StringUtils.lowerCase(headersForStringToSign.get(i)));
        }
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            if (headersForStringToSign.contains(StringUtils.lowerCase(entry.getKey()))) {
                treeMap.put(StringUtils.lowerCase(entry.getKey()), entry.getValue());
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry2 : treeMap.entrySet()) {
            sb.append(StringUtils.lowerCase((String) entry2.getKey()));
            sb.append(":");
            sb.append((String) entry2.getValue());
            sb.append("\n");
        }
        return sb.toString();
    }

    public List<String> getHeadersForStringToSign(Request<?> request) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : request.getHeaders().entrySet()) {
            String key = entry.getKey();
            String lowerCase = StringUtils.lowerCase(key);
            if (lowerCase.startsWith("x-amz") || lowerCase.equals("host")) {
                arrayList.add(key);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public final String getSignedHeadersComponent(Request<?> request) {
        StringBuilder sb = new StringBuilder();
        sb.append("SignedHeaders=");
        boolean z = true;
        for (String str : getHeadersForStringToSign(request)) {
            if (!z) {
                sb.append(ExtraHints.KEYWORD_SEPARATOR);
            }
            sb.append(str);
            z = false;
        }
        return sb.toString();
    }

    @Override // com.amazonaws.auth.Signer
    public void sign(Request<?> request, AWSCredentials aWSCredentials) throws AmazonClientException {
        AWSCredentials sanitizeCredentials = sanitizeCredentials(aWSCredentials);
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        UUID.randomUUID().toString();
        String formatRFC822Date = DateUtils.formatRFC822Date(getSignatureDate(getTimeOffset(request)));
        String str = this.overriddenDate;
        if (str != null) {
            formatRFC822Date = str;
        }
        request.addHeader("Date", formatRFC822Date);
        request.addHeader("X-Amz-Date", formatRFC822Date);
        String host = request.getEndpoint().getHost();
        String str2 = host;
        if (HttpUtils.isUsingNonDefaultPort(request.getEndpoint())) {
            str2 = host + ":" + request.getEndpoint().getPort();
        }
        request.addHeader("Host", str2);
        if (sanitizeCredentials instanceof AWSSessionCredentials) {
            addSessionCredentials(request, (AWSSessionCredentials) sanitizeCredentials);
        }
        String appendUri = HttpUtils.appendUri(request.getEndpoint().getPath(), request.getResourcePath());
        String str3 = request.getHttpMethod().toString() + "\n" + getCanonicalizedResourcePath(appendUri) + "\n" + getCanonicalizedQueryString(request.getParameters()) + "\n" + getCanonicalizedHeadersForStringToSign(request) + "\n" + getRequestPayloadWithoutQueryParams(request);
        byte[] hash = hash(str3);
        log.debug("Calculated StringToSign: " + str3);
        String signAndBase64Encode = signAndBase64Encode(hash, sanitizeCredentials.getAWSSecretKey(), signingAlgorithm);
        StringBuilder sb = new StringBuilder();
        sb.append("AWS3");
        sb.append(" ");
        sb.append("AWSAccessKeyId=" + sanitizeCredentials.getAWSAccessKeyId() + ",");
        sb.append("Algorithm=" + signingAlgorithm.toString() + ",");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getSignedHeadersComponent(request));
        sb2.append(",");
        sb.append(sb2.toString());
        sb.append("Signature=" + signAndBase64Encode);
        request.addHeader("X-Amzn-Authorization", sb.toString());
    }
}
