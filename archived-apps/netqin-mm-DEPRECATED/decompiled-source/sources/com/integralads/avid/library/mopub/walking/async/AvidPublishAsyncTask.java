package com.integralads.avid.library.mopub.walking.async;

import android.text.TextUtils;
import com.integralads.avid.library.mopub.registration.AvidAdSessionRegistry;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.utils.AvidCommand;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.integralads.avid.library.mopub.walking.async.AvidAsyncTask;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AvidPublishAsyncTask.class */
public class AvidPublishAsyncTask extends AbstractAvidPublishAsyncTask {
    public AvidPublishAsyncTask(AvidAsyncTask.StateProvider stateProvider, AvidAdSessionRegistry avidAdSessionRegistry, HashSet<String> hashSet, JSONObject jSONObject, double d) {
        super(stateProvider, avidAdSessionRegistry, hashSet, jSONObject, d);
    }

    @Override // com.integralads.avid.library.mopub.walking.async.AvidAsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            m5356b(str);
        }
        super.onPostExecute(str);
    }

    /* renamed from: b */
    public final void m5356b(String str) {
        for (InternalAvidAdSession internalAvidAdSession : this.f33109c.getInternalAvidAdSessions()) {
            if (this.f33110d.contains(internalAvidAdSession.getAvidAdSessionId())) {
                internalAvidAdSession.publishNativeViewStateCommand(str, this.f33112f);
            }
        }
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Object... objArr) {
        if (AvidJSONUtil.equalStates(this.f33111e, this.f33114b.getPreviousState())) {
            return null;
        }
        this.f33114b.setPreviousState(this.f33111e);
        return AvidCommand.setNativeViewState(AvidJSONUtil.getTreeJSONObject(this.f33111e, this.f33112f).toString());
    }
}
