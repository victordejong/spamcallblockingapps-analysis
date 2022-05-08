package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import p081h.p451q.p455d.C10858a;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestResponse.class */
public class RequestResponse {
    public List<User> lastCommentingAgents;
    public Request request;

    @NonNull
    public List<User> getLastCommentingAgents() {
        return C10858a.m10404a((List) this.lastCommentingAgents);
    }

    @Nullable
    public Request getRequest() {
        return this.request;
    }
}
