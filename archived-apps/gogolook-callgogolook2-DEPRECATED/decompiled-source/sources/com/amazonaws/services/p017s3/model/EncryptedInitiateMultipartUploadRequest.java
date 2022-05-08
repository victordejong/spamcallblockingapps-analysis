package com.amazonaws.services.p017s3.model;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.EncryptedInitiateMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest.class */
public class EncryptedInitiateMultipartUploadRequest extends InitiateMultipartUploadRequest implements MaterialsDescriptionProvider {
    public EncryptedInitiateMultipartUploadRequest(String str, String str2) {
        super(str, str2);
    }

    public void setMaterialsDescription(Map<String, String> map) {
        if (map != null) {
            Collections.unmodifiableMap(new HashMap(map));
        }
    }
}
