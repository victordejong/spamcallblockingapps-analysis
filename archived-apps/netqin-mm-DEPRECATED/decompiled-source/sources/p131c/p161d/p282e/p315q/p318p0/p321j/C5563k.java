package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.net.Uri;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.p0.j.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/k.class */
public class C5563k implements Picasso.Listener {

    /* renamed from: a */
    public AbstractC5863i f18545a;

    /* renamed from: b */
    public FirebaseInAppMessagingDisplayCallbacks f18546b;

    @Override // com.squareup.picasso.Picasso.Listener
    public void onImageLoadFailed(Picasso picasso, Uri uri, Exception exc) {
        if (this.f18545a != null && this.f18546b != null) {
            if (!(exc instanceof IOException) || !exc.getLocalizedMessage().contains("Failed to decode")) {
                this.f18546b.mo7319a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.UNSPECIFIED_RENDER_ERROR);
            } else {
                this.f18546b.mo7319a(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.IMAGE_UNSUPPORTED_FORMAT);
            }
        }
    }
}
