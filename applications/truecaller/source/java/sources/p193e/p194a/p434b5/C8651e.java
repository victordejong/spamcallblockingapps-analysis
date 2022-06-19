package p193e.p194a.p434b5;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.truecaller.log.AssertionUtil;
import com.truecaller.social.SocialNetworkProvider;
import com.truecaller.social.SocialNetworkType;
import java.util.EnumMap;
import java.util.Iterator;
import p193e.p194a.p372b0.p430q.C8563a;
import p193e.p194a.p434b5.C8647d;
@Deprecated
/* renamed from: e.a.b5.e */
/* loaded from: classes13-dex2jar.jar:e/a/b5/e.class */
public class C8651e {

    /* renamed from: b */
    public static C8651e f26508b;

    /* renamed from: a */
    public final EnumMap<SocialNetworkType, SocialNetworkProvider> f26509a = new EnumMap<>(SocialNetworkType.class);

    public C8651e(Context context) {
        Iterator it = new C8563a(context.getApplicationContext(), SocialNetworkProvider.class, SocialNetworkProvider.class.getClassLoader()).iterator();
        while (true) {
            C8563a.C8565b c8565b = (C8563a.C8565b) it;
            if (c8565b.hasNext()) {
                SocialNetworkProvider socialNetworkProvider = (SocialNetworkProvider) c8565b.next();
                if (socialNetworkProvider.isSupported(context)) {
                    boolean z = this.f26509a.put((EnumMap<SocialNetworkType, SocialNetworkProvider>) socialNetworkProvider.type(), (SocialNetworkType) socialNetworkProvider) == null;
                    AssertionUtil.isTrue(z, socialNetworkProvider.type() + " was redefined");
                } else {
                    socialNetworkProvider.getClass().getName();
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static C8651e m28155a(Context context) {
        if (f26508b == null) {
            synchronized (C8651e.class) {
                try {
                    if (f26508b == null) {
                        f26508b = new C8651e(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f26508b;
    }

    /* renamed from: b */
    public AbstractC8645b m28154b(SocialNetworkType socialNetworkType, Fragment fragment) throws C8647d.C8650c {
        SocialNetworkProvider socialNetworkProvider = this.f26509a.get(socialNetworkType);
        if (socialNetworkProvider != null) {
            return socialNetworkProvider.network(fragment.getActivity(), fragment);
        }
        throw new C8647d.C8650c(String.valueOf(socialNetworkType) + " is not supported");
    }
}
