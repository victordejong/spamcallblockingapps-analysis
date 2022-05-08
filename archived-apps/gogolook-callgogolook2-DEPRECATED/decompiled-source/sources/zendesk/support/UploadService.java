package zendesk.support;

import okhttp3.RequestBody;
import p655o.AbstractC15235b;
import p655o.p658y.AbstractC15313a;
import p655o.p658y.AbstractC15325m;
import p655o.p658y.AbstractC15330r;
/* loaded from: classes3-dex2jar.jar:zendesk/support/UploadService.class */
public interface UploadService {
    @AbstractC15325m("/api/mobile/uploads.json")
    AbstractC15235b<UploadResponseWrapper> uploadAttachment(@AbstractC15330r("filename") String str, @AbstractC15313a RequestBody requestBody);
}
