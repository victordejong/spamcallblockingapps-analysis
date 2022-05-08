package p081h.p430l.p435d;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.ViewBinder;
/* renamed from: h.l.d.j */
/* loaded from: classes2-dex2jar.jar:h/l/d/j.class */
public class C10743j {
    @VisibleForTesting

    /* renamed from: i */
    public static final C10743j f24496i = new C10743j();
    @Nullable

    /* renamed from: a */
    public View f24497a;
    @Nullable

    /* renamed from: b */
    public TextView f24498b;
    @Nullable

    /* renamed from: c */
    public TextView f24499c;
    @Nullable

    /* renamed from: d */
    public TextView f24500d;
    @Nullable

    /* renamed from: e */
    public ImageView f24501e;
    @Nullable

    /* renamed from: f */
    public ImageView f24502f;
    @Nullable

    /* renamed from: g */
    public ImageView f24503g;
    @Nullable

    /* renamed from: h */
    public TextView f24504h;

    @NonNull
    /* renamed from: a */
    public static C10743j m10748a(@NonNull View view, @NonNull ViewBinder viewBinder) {
        C10743j jVar = new C10743j();
        jVar.f24497a = view;
        try {
            jVar.f24498b = (TextView) view.findViewById(viewBinder.f9303b);
            jVar.f24499c = (TextView) view.findViewById(viewBinder.f9304c);
            jVar.f24500d = (TextView) view.findViewById(viewBinder.f9305d);
            jVar.f24501e = (ImageView) view.findViewById(viewBinder.f9306e);
            jVar.f24502f = (ImageView) view.findViewById(viewBinder.f9307f);
            jVar.f24503g = (ImageView) view.findViewById(viewBinder.f9308g);
            jVar.f24504h = (TextView) view.findViewById(viewBinder.f9309h);
            return jVar;
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Could not cast from id in ViewBinder to expected View type", e);
            return f24496i;
        }
    }
}
