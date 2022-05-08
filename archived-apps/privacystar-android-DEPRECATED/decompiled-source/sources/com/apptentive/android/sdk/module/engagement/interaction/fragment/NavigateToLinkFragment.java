package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.module.engagement.interaction.model.NavigateToLinkInteraction;
import com.apptentive.android.sdk.util.Util;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment.class */
public class NavigateToLinkFragment extends ApptentiveBaseFragment<NavigateToLinkInteraction> {

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.fragment.NavigateToLinkFragment$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/NavigateToLinkFragment$1.class */
    static /* synthetic */ class C07981 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$NavigateToLinkInteraction$Target */
        static final /* synthetic */ int[] f68xc6407b83 = new int[NavigateToLinkInteraction.Target.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f68xc6407b83[NavigateToLinkInteraction.Target.New.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f68xc6407b83[NavigateToLinkInteraction.Target.Self.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static NavigateToLinkFragment newInstance(Bundle bundle) {
        NavigateToLinkFragment navigateToLinkFragment = new NavigateToLinkFragment();
        navigateToLinkFragment.setArguments(bundle);
        return navigateToLinkFragment;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        JSONObject jSONObject;
        Exception e;
        super.onCreate(bundle);
        boolean z = true;
        try {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(((NavigateToLinkInteraction) this.interaction).getUrl()));
                switch (C07981.f68xc6407b83[((NavigateToLinkInteraction) this.interaction).getTarget().ordinal()]) {
                    case 1:
                        intent.setFlags(268435456);
                        break;
                }
                if (Util.canLaunchIntent(getContext(), intent)) {
                    getActivity().startActivity(intent);
                } else {
                    z = false;
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                    jSONObject2.put(NavigateToLinkInteraction.KEY_TARGET, ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                    jSONObject2.put("success", z);
                } catch (Exception e2) {
                    ApptentiveLog.m408e(e2, "Error creating Event data object.", new Object[0]);
                }
                engageInternal(NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, jSONObject2.toString());
            } catch (Throwable th) {
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                    jSONObject3.put(NavigateToLinkInteraction.KEY_TARGET, ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                    jSONObject3.put("success", false);
                } catch (Exception e3) {
                    ApptentiveLog.m408e(e3, "Error creating Event data object.", new Object[0]);
                }
                engageInternal(NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, jSONObject3.toString());
                throw th;
            }
        } catch (ActivityNotFoundException e4) {
            ApptentiveLog.m396w(e4, "NavigateToLink Error: ", new Object[0]);
            jSONObject = new JSONObject();
            try {
                jSONObject.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                jSONObject.put(NavigateToLinkInteraction.KEY_TARGET, ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                jSONObject.put("success", false);
            } catch (Exception e5) {
                e = e5;
                ApptentiveLog.m408e(e, "Error creating Event data object.", new Object[0]);
                engageInternal(NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, jSONObject.toString());
            }
            engageInternal(NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, jSONObject.toString());
        } catch (Exception e6) {
            ApptentiveLog.m408e(e6, "Exception in %s.onCreate()", getClass().getSimpleName());
            jSONObject = new JSONObject();
            try {
                jSONObject.put("url", ((NavigateToLinkInteraction) this.interaction).getUrl());
                jSONObject.put(NavigateToLinkInteraction.KEY_TARGET, ((NavigateToLinkInteraction) this.interaction).getTarget().lowercaseName());
                jSONObject.put("success", false);
            } catch (Exception e7) {
                e = e7;
                ApptentiveLog.m408e(e, "Error creating Event data object.", new Object[0]);
                engageInternal(NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, jSONObject.toString());
            }
            engageInternal(NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, jSONObject.toString());
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        return false;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.Fragment
    public void onPause() {
        super.onPause();
        transit();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected void sendLaunchEvent(Activity activity) {
    }
}
