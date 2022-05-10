package com.mopub.common;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mopub.common.UrlResolutionTask;
import com.mopub.common.logging.MoPubLog;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler.class */
public class UrlHandler {

    /* renamed from: h */
    public static final ResultActions f33788h = new C8719a();

    /* renamed from: i */
    public static final MoPubSchemeListener f33789i = new C8720b();

    /* renamed from: a */
    public EnumSet<UrlAction> f33790a;

    /* renamed from: b */
    public ResultActions f33791b;

    /* renamed from: c */
    public MoPubSchemeListener f33792c;

    /* renamed from: d */
    public String f33793d;

    /* renamed from: e */
    public boolean f33794e;

    /* renamed from: f */
    public boolean f33795f;

    /* renamed from: g */
    public boolean f33796g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public EnumSet<UrlAction> f33797a = EnumSet.of(UrlAction.NOOP);

        /* renamed from: b */
        public ResultActions f33798b = UrlHandler.f33788h;

        /* renamed from: c */
        public MoPubSchemeListener f33799c = UrlHandler.f33789i;

        /* renamed from: d */
        public boolean f33800d = false;

        /* renamed from: e */
        public String f33801e;

        public UrlHandler build() {
            return new UrlHandler(this.f33797a, this.f33798b, this.f33799c, this.f33800d, this.f33801e, null);
        }

        public Builder withDspCreativeId(String str) {
            this.f33801e = str;
            return this;
        }

        public Builder withMoPubSchemeListener(MoPubSchemeListener moPubSchemeListener) {
            this.f33799c = moPubSchemeListener;
            return this;
        }

        public Builder withResultActions(ResultActions resultActions) {
            this.f33798b = resultActions;
            return this;
        }

        public Builder withSupportedUrlActions(UrlAction urlAction, UrlAction... urlActionArr) {
            this.f33797a = EnumSet.of(urlAction, urlActionArr);
            return this;
        }

        public Builder withSupportedUrlActions(EnumSet<UrlAction> enumSet) {
            this.f33797a = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public Builder withoutMoPubBrowser() {
            this.f33800d = true;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$MoPubSchemeListener.class */
    public interface MoPubSchemeListener {
        void onClose();

        void onCrash();

        void onFailLoad();

        void onFinishLoad();
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$ResultActions.class */
    public interface ResultActions {
        void urlHandlingFailed(String str, UrlAction urlAction);

        void urlHandlingSucceeded(String str, UrlAction urlAction);
    }

    /* renamed from: com.mopub.common.UrlHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$a.class */
    public static final class C8719a implements ResultActions {
        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
        }
    }

    /* renamed from: com.mopub.common.UrlHandler$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$b.class */
    public static final class C8720b implements MoPubSchemeListener {
        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }
    }

    /* renamed from: com.mopub.common.UrlHandler$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/UrlHandler$c.class */
    public class C8721c implements UrlResolutionTask.AbstractC8722a {

        /* renamed from: a */
        public final /* synthetic */ Context f33802a;

        /* renamed from: b */
        public final /* synthetic */ boolean f33803b;

        /* renamed from: c */
        public final /* synthetic */ Iterable f33804c;

        /* renamed from: d */
        public final /* synthetic */ String f33805d;

        public C8721c(Context context, boolean z, Iterable iterable, String str) {
            this.f33802a = context;
            this.f33803b = z;
            this.f33804c = iterable;
            this.f33805d = str;
        }

        @Override // com.mopub.common.UrlResolutionTask.AbstractC8722a
        public void onFailure(String str, Throwable th) {
            UrlHandler.this.f33796g = false;
            UrlHandler.this.m4603a(this.f33805d, null, str, th);
        }

        @Override // com.mopub.common.UrlResolutionTask.AbstractC8722a
        public void onSuccess(String str) {
            UrlHandler.this.f33796g = false;
            UrlHandler.this.handleResolvedUrl(this.f33802a, str, this.f33803b, this.f33804c);
        }
    }

    public UrlHandler(EnumSet<UrlAction> enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str) {
        this.f33790a = EnumSet.copyOf((EnumSet) enumSet);
        this.f33791b = resultActions;
        this.f33792c = moPubSchemeListener;
        this.f33794e = z;
        this.f33793d = str;
        this.f33795f = false;
        this.f33796g = false;
    }

    public /* synthetic */ UrlHandler(EnumSet enumSet, ResultActions resultActions, MoPubSchemeListener moPubSchemeListener, boolean z, String str, C8719a aVar) {
        this(enumSet, resultActions, moPubSchemeListener, z, str);
    }

    /* renamed from: a */
    public MoPubSchemeListener m4606a() {
        return this.f33792c;
    }

    /* renamed from: a */
    public final void m4603a(String str, UrlAction urlAction, String str2, Throwable th) {
        Preconditions.checkNotNull(str2);
        UrlAction urlAction2 = urlAction;
        if (urlAction == null) {
            urlAction2 = UrlAction.NOOP;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, str2, th);
        this.f33791b.urlHandlingFailed(str, urlAction2);
    }

    /* renamed from: b */
    public boolean m4602b() {
        return this.f33794e;
    }

    public boolean handleResolvedUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        IntentNotResolvableException e;
        if (TextUtils.isEmpty(str)) {
            m4603a(str, null, "Attempted to handle empty url.", null);
            return false;
        }
        UrlAction urlAction = UrlAction.NOOP;
        Uri parse = Uri.parse(str);
        Iterator it = this.f33790a.iterator();
        while (it.hasNext()) {
            UrlAction urlAction2 = (UrlAction) it.next();
            if (urlAction2.shouldTryHandlingUrl(parse)) {
                try {
                    urlAction2.handleUrl(this, context, parse, z, this.f33793d);
                    if (this.f33795f || this.f33796g || UrlAction.IGNORE_ABOUT_SCHEME.equals(urlAction2) || UrlAction.HANDLE_MOPUB_SCHEME.equals(urlAction2)) {
                        return true;
                    }
                    try {
                        TrackingRequest.makeTrackingHttpRequest(iterable, context);
                        this.f33791b.urlHandlingSucceeded(parse.toString(), urlAction2);
                        this.f33795f = true;
                        return true;
                    } catch (IntentNotResolvableException e2) {
                        e = e2;
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, e.getMessage(), e);
                        urlAction = urlAction2;
                    }
                } catch (IntentNotResolvableException e3) {
                    e = e3;
                }
            }
        }
        m4603a(str, urlAction, "Link ignored. Unable to handle url: " + str, null);
        return false;
    }

    public void handleUrl(Context context, String str) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, true);
    }

    public void handleUrl(Context context, String str, boolean z) {
        Preconditions.checkNotNull(context);
        handleUrl(context, str, z, null);
    }

    public void handleUrl(Context context, String str, boolean z, Iterable<String> iterable) {
        Preconditions.checkNotNull(context);
        if (TextUtils.isEmpty(str)) {
            m4603a(str, null, "Attempted to handle empty url.", null);
            return;
        }
        UrlResolutionTask.getResolvedUrl(str, new C8721c(context, z, iterable, str));
        this.f33796g = true;
    }
}
