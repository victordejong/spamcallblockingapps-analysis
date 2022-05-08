package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import p081h.p451q.p454c.AbstractC10857e;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskUploadProvider.class */
public class ZendeskUploadProvider implements UploadProvider {
    public final ZendeskUploadService uploadService;

    public ZendeskUploadProvider(ZendeskUploadService zendeskUploadService) {
        this.uploadService = zendeskUploadService;
    }

    @Override // zendesk.support.UploadProvider
    public void uploadAttachment(@NonNull String str, @NonNull File file, @NonNull String str2, @Nullable final AbstractC10857e<UploadResponse> eVar) {
        this.uploadService.uploadAttachment(str, file, str2, new ZendeskCallbackSuccess<UploadResponseWrapper>(this, eVar) { // from class: zendesk.support.ZendeskUploadProvider.1
            public void onSuccess(UploadResponseWrapper uploadResponseWrapper) {
                AbstractC10857e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.onSuccess(uploadResponseWrapper.getUpload());
                }
            }
        });
    }
}
