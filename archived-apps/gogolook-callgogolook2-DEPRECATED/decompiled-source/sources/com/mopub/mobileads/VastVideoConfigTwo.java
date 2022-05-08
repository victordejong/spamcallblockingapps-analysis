package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.VastAbsoluteProgressTrackerTwo;
import com.mopub.mobileads.VastFractionalProgressTrackerTwo;
import com.mopub.mobileads.VastTrackerTwo;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p459j.p460a.p541n0.C13032a;
import p626l.p631e0.C14966w;
import p626l.p632u.C15021m;
import p626l.p632u.C15022n;
import p626l.p632u.C15025q;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018�� ±\u00012\u00020\u0001:\u0002±\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010t\u001a\u00020u2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050vH\u0016J\u0018\u0010w\u001a\u00020u2\u000e\u0010x\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001cH\u0016J\u0016\u0010y\u001a\u00020u2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u0016\u0010z\u001a\u00020u2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u0016\u0010{\u001a\u00020u2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\b0vH\u0012J\u0016\u0010}\u001a\u00020u2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\b0vH\u0012J\u0016\u0010~\u001a\u00020u2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u0016\u0010\u007f\u001a\u00020u2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\b0vH\u0012J\u0017\u0010\u0080\u0001\u001a\u00020u2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u001f\u0010\u0081\u0001\u001a\u00020u2\u0014\u0010B\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010CH\u0016J\u0017\u0010\u0082\u0001\u001a\u00020u2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00110vH\u0016J!\u0010\u0083\u0001\u001a\u00020u2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\b0v2\b\u0010\u0084\u0001\u001a\u00030\u0085\u0001H\u0012J\u0017\u0010\u0086\u0001\u001a\u00020u2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u001a\u0010\u0087\u0001\u001a\u00020u2\u000f\u0010\u0088\u0001\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u001cH\u0016J\u0017\u0010\u0089\u0001\u001a\u00020u2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u0017\u0010\u008a\u0001\u001a\u00020u2\f\u0010a\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u0017\u0010\u008b\u0001\u001a\u00020u2\f\u0010f\u001a\b\u0012\u0004\u0012\u00020\n0vH\u0016J\u0017\u0010\u008c\u0001\u001a\u00020u2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\b0vH\u0012J\u0015\u0010\u008d\u0001\u001a\u00020u2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H\u0016J\u001d\u0010\u0090\u0001\u001a\b\u0012\u0004\u0012\u00020\n0v2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020\b0vH\u0012J\u001a\u0010\u0091\u0001\u001a\u0004\u0018\u00010^2\u0007\u0010\u0092\u0001\u001a\u00020^H\u0016¢\u0006\u0003\u0010\u0093\u0001J!\u0010\u0094\u0001\u001a\b\u0012\u0004\u0012\u00020\n0v2\u0007\u0010\u0095\u0001\u001a\u00020^2\u0007\u0010\u0096\u0001\u001a\u00020^H\u0016J\u0014\u0010\u0097\u0001\u001a\u0004\u0018\u00010N2\u0007\u0010\u0098\u0001\u001a\u00020^H\u0016J-\u0010\u0099\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^2\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010^H\u0012¢\u0006\u0003\u0010\u009e\u0001J%\u0010\u009f\u0001\u001a\u00020u2\b\u0010 \u0001\u001a\u00030¡\u00012\u0007\u0010\u009c\u0001\u001a\u00020^2\u0007\u0010\u009d\u0001\u001a\u00020^H\u0016J\u001c\u0010¢\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\u001c\u0010£\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\u001c\u0010¤\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J(\u0010¥\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\n\u0010¦\u0001\u001a\u0005\u0018\u00010§\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\u001c\u0010¨\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\u001c\u0010©\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\u001c\u0010ª\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\u001c\u0010«\u0001\u001a\u00020u2\b\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020^H\u0016J\t\u0010¬\u0001\u001a\u00020;H\u0016J%\u0010\u00ad\u0001\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010v2\t\u0010®\u0001\u001a\u0004\u0018\u00010\b2\u0007\u0010|\u001a\u00030¯\u0001H\u0012J\u001d\u0010°\u0001\u001a\u00020u2\b\u0010M\u001a\u0004\u0018\u00010N2\b\u0010V\u001a\u0004\u0018\u00010NH\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000f8\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\n0\u00048\u0012X\u0093\u0004¢\u0006\u0002\n��R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR \u0010\u001f\u001a\u0004\u0018\u00010\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u001aR\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010\u001aR\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u001aR*\u0010+\u001a\u0004\u0018\u00010\b2\b\u0010*\u001a\u0004\u0018\u00010\b8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010!\"\u0004\b-\u0010#R*\u0010.\u001a\u0004\u0018\u00010\b2\b\u0010*\u001a\u0004\u0018\u00010\b8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u0010!\"\u0004\b0\u0010#R*\u00101\u001a\u0004\u0018\u00010\b2\b\u0010*\u001a\u0004\u0018\u00010\b8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u0010!\"\u0004\b3\u0010#R \u00104\u001a\u0004\u0018\u00010\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b5\u0010!\"\u0004\b6\u0010#R*\u00107\u001a\u0004\u0018\u00010\b2\b\u0010*\u001a\u0004\u0018\u00010\b8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b8\u0010!\"\u0004\b9\u0010#R\u001e\u0010:\u001a\u00020;8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010@\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\u001aR \u0010B\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0C8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER\u001a\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00110\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010\u001aR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bI\u0010\u001aR&\u0010K\u001a\u00020;2\u0006\u0010J\u001a\u00020;8\u0016@PX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bK\u0010=\"\u0004\bL\u0010?R\u0014\u0010M\u001a\u0004\u0018\u00010N8\u0012@\u0012X\u0093\u000e¢\u0006\u0002\n��R\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020\b0\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bP\u0010\u001eR \u0010Q\u001a\u0004\u0018\u00010\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bR\u0010!\"\u0004\bS\u0010#R\u001a\u0010T\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010\u001aR\u0014\u0010V\u001a\u0004\u0018\u00010N8\u0012@\u0012X\u0093\u000e¢\u0006\u0002\n��R \u0010W\u001a\u0004\u0018\u00010\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bX\u0010!\"\u0004\bY\u0010#R*\u0010Z\u001a\u0004\u0018\u00010\b2\b\u0010*\u001a\u0004\u0018\u00010\b8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b[\u0010!\"\u0004\b\\\u0010#R\u0014\u0010]\u001a\u00020^8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b_\u0010`R\u001a\u0010a\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bb\u0010\u001aR*\u0010c\u001a\u0004\u0018\u00010\b2\b\u0010*\u001a\u0004\u0018\u00010\b8\u0016@PX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bd\u0010!\"\u0004\be\u0010#R\u001a\u0010f\u001a\b\u0012\u0004\u0012\u00020\n0\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010\u001aR \u0010h\u001a\u0004\u0018\u00010i8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR*\u0010o\u001a\u0004\u0018\u00010n2\b\u0010*\u001a\u0004\u0018\u00010n8\u0016@VX\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\bp\u0010q\"\u0004\br\u0010s¨\u0006²\u0001"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoConfigTwo;", "Ljava/io/Serializable;", "()V", "_absoluteTrackers", "", "Lcom/mopub/mobileads/VastAbsoluteProgressTrackerTwo;", "_avidJavascriptResources", "", "", "_clickTrackers", "Lcom/mopub/mobileads/VastTrackerTwo;", "_closeTrackers", "_completeTrackers", "_errorTrackers", "_externalViewabilityTrackers", "", "_fractionalTrackers", "Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;", "_impressionTrackers", "_moatImpressionPixels", "_pauseTrackers", "_resumeTrackers", "_skipTrackers", "absoluteTrackers", "Ljava/util/ArrayList;", "getAbsoluteTrackers", "()Ljava/util/ArrayList;", "avidJavascriptResources", "", "getAvidJavascriptResources", "()Ljava/util/Set;", "clickThroughUrl", "getClickThroughUrl", "()Ljava/lang/String;", "setClickThroughUrl", "(Ljava/lang/String;)V", "clickTrackers", "getClickTrackers", "closeTrackers", "getCloseTrackers", "completeTrackers", "getCompleteTrackers", C13032a.f29462d, "customCloseIconUrl", "getCustomCloseIconUrl", "setCustomCloseIconUrl", "customCtaText", "getCustomCtaText", "setCustomCtaText", "customSkipText", "getCustomSkipText", "setCustomSkipText", "diskMediaFileUrl", "getDiskMediaFileUrl", "setDiskMediaFileUrl", "dspCreativeId", "getDspCreativeId", "setDspCreativeId", "enableClickExperiment", "", "getEnableClickExperiment", "()Z", "setEnableClickExperiment", "(Z)V", "errorTrackers", "getErrorTrackers", "externalViewabilityTrackers", "", "getExternalViewabilityTrackers", "()Ljava/util/Map;", "fractionalTrackers", "getFractionalTrackers", "impressionTrackers", "getImpressionTrackers", "<set-?>", "isRewarded", "setRewarded$mopub_sdk_base_release", "landscapeVastCompanionAdConfig", "Lcom/mopub/mobileads/VastCompanionAdConfigTwo;", "moatImpressionPixels", "getMoatImpressionPixels", "networkMediaFileUrl", "getNetworkMediaFileUrl", "setNetworkMediaFileUrl", "pauseTrackers", "getPauseTrackers", "portraitVastCompanionAdConfig", "privacyInformationIconClickthroughUrl", "getPrivacyInformationIconClickthroughUrl", "setPrivacyInformationIconClickthroughUrl", "privacyInformationIconImageUrl", "getPrivacyInformationIconImageUrl", "setPrivacyInformationIconImageUrl", "remainingProgressTrackerCount", "", "getRemainingProgressTrackerCount", "()I", "resumeTrackers", "getResumeTrackers", "skipOffset", "getSkipOffset", "setSkipOffset$mopub_sdk_base_release", "skipTrackers", "getSkipTrackers", "vastIconConfig", "Lcom/mopub/mobileads/VastIconConfigTwo;", "getVastIconConfig", "()Lcom/mopub/mobileads/VastIconConfigTwo;", "setVastIconConfig", "(Lcom/mopub/mobileads/VastIconConfigTwo;)V", "Lcom/mopub/mobileads/VideoViewabilityTracker;", "videoViewabilityTracker", "getVideoViewabilityTracker", "()Lcom/mopub/mobileads/VideoViewabilityTracker;", "setVideoViewabilityTracker", "(Lcom/mopub/mobileads/VideoViewabilityTracker;)V", "addAbsoluteTrackers", "", "", "addAvidJavascriptResources", "javascriptResources", "addClickTrackers", "addCloseTrackers", "addCompanionAdClickTrackersForUrls", Constants.VIDEO_TRACKING_URLS_KEY, "addCompanionAdViewTrackersForUrls", "addCompleteTrackers", "addCompleteTrackersForUrls", "addErrorTrackers", "addExternalViewabilityTrackers", "addFractionalTrackers", "addFractionalTrackersForUrls", "fraction", "", "addImpressionTrackers", "addMoatImpressionPixels", "impressionPixels", "addPauseTrackers", "addResumeTrackers", "addSkipTrackers", "addStartTrackersForUrls", "addVideoTrackers", "videoTrackers", "Lorg/json/JSONObject;", "createVastTrackersForUrls", "getSkipOffsetMillis", "videoDuration", "(I)Ljava/lang/Integer;", "getUntriggeredTrackersBefore", "currentPositionMillis", "videoLengthMillis", "getVastCompanionAd", "orientation", "handleClick", "context", "Landroid/content/Context;", "contentPlayHead", "requestCode", "(Landroid/content/Context;ILjava/lang/Integer;)V", "handleClickForResult", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "handleClickWithoutResult", "handleClose", "handleComplete", "handleError", "errorCode", "Lcom/mopub/mobileads/VastErrorCode;", "handleImpression", "handlePause", "handleResume", "handleSkip", "hasCompanionAd", "hydrateUrls", NotificationCompat.CATEGORY_EVENT, "Lorg/json/JSONArray;", "setVastCompanionAd", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfigTwo.class */
public class VastVideoConfigTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    @AbstractC10120c(Constants.VAST_DSP_CREATIVE_ID)
    @AbstractC10118a

    /* renamed from: A */
    public String f8655A;
    @AbstractC10120c(Constants.VAST_PRIVACY_ICON_IMAGE_URL)
    @AbstractC10118a

    /* renamed from: B */
    public String f8656B;
    @AbstractC10120c(Constants.VAST_PRIVACY_ICON_CLICK_URL)
    @AbstractC10118a

    /* renamed from: C */
    public String f8657C;
    @AbstractC10120c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC10118a

    /* renamed from: a */
    public final List<VastTrackerTwo> f8658a = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_PAUSE)
    @AbstractC10118a

    /* renamed from: b */
    public final List<VastTrackerTwo> f8659b = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_RESUME)
    @AbstractC10118a

    /* renamed from: c */
    public final List<VastTrackerTwo> f8660c = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_COMPLETE)
    @AbstractC10118a

    /* renamed from: d */
    public final List<VastTrackerTwo> f8661d = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_CLOSE)
    @AbstractC10118a

    /* renamed from: e */
    public final List<VastTrackerTwo> f8662e = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_SKIP)
    @AbstractC10118a

    /* renamed from: f */
    public final List<VastTrackerTwo> f8663f = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC10118a

    /* renamed from: g */
    public final List<VastTrackerTwo> f8664g = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_ERROR)
    @AbstractC10118a

    /* renamed from: h */
    public final List<VastTrackerTwo> f8665h = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_FRACTIONAL)
    @AbstractC10118a

    /* renamed from: i */
    public final List<VastFractionalProgressTrackerTwo> f8666i = new ArrayList();
    @AbstractC10120c(Constants.VAST_TRACKERS_ABSOLUTE)
    @AbstractC10118a

    /* renamed from: j */
    public final List<VastAbsoluteProgressTrackerTwo> f8667j = new ArrayList();
    @AbstractC10120c(Constants.VAST_EXTERNAL_VIEWABILITY_TRACKERS)
    @AbstractC10118a

    /* renamed from: k */
    public final Map<String, String> f8668k = new LinkedHashMap();
    @AbstractC10120c(Constants.VAST_AVID_JAVASCRIPT_RESOURCES)
    @AbstractC10118a

    /* renamed from: l */
    public final Set<String> f8669l = new LinkedHashSet();
    @AbstractC10120c(Constants.VAST_MOAT_IMPRESSION_PIXELS)
    @AbstractC10118a

    /* renamed from: m */
    public final Set<String> f8670m = new LinkedHashSet();
    @AbstractC10120c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC10118a

    /* renamed from: n */
    public String f8671n;
    @AbstractC10120c(Constants.VAST_URL_NETWORK_MEDIA_FILE)
    @AbstractC10118a

    /* renamed from: o */
    public String f8672o;
    @AbstractC10120c(Constants.VAST_URL_DISK_MEDIA_FILE)
    @AbstractC10118a

    /* renamed from: p */
    public String f8673p;
    @AbstractC10120c(Constants.VAST_SKIP_OFFSET)
    @AbstractC10118a

    /* renamed from: q */
    public String f8674q;
    @AbstractC10120c(Constants.VAST_COMPANION_AD_LANDSCAPE)
    @AbstractC10118a

    /* renamed from: r */
    public VastCompanionAdConfigTwo f8675r;
    @AbstractC10120c(Constants.VAST_COMPANION_AD_PORTRAIT)
    @AbstractC10118a

    /* renamed from: s */
    public VastCompanionAdConfigTwo f8676s;
    @AbstractC10120c(Constants.VAST_ICON_CONFIG)
    @AbstractC10118a

    /* renamed from: t */
    public VastIconConfigTwo f8677t;
    @AbstractC10120c(Constants.VAST_IS_REWARDED)
    @AbstractC10118a

    /* renamed from: u */
    public boolean f8678u;
    @AbstractC10120c(Constants.VAST_ENABLE_CLICK_EXP)
    @AbstractC10118a

    /* renamed from: v */
    public boolean f8679v;
    @AbstractC10120c(Constants.VAST_CUSTOM_TEXT_CTA)
    @AbstractC10118a

    /* renamed from: w */
    public String f8680w;
    @AbstractC10120c(Constants.VAST_CUSTOM_TEXT_SKIP)
    @AbstractC10118a

    /* renamed from: x */
    public String f8681x;
    @AbstractC10120c(Constants.VAST_CUSTOM_CLOSE_ICON_URL)
    @AbstractC10118a

    /* renamed from: y */
    public String f8682y;
    @AbstractC10120c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC10118a

    /* renamed from: z */
    public VideoViewabilityTracker f8683z;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoConfigTwo$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfigTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfigTwo$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[VideoTrackingEvent.values().length];

        static {
            $EnumSwitchMapping$0[VideoTrackingEvent.START.ordinal()] = 1;
            $EnumSwitchMapping$0[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 2;
            $EnumSwitchMapping$0[VideoTrackingEvent.MIDPOINT.ordinal()] = 3;
            $EnumSwitchMapping$0[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 4;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPLETE.ordinal()] = 5;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPANION_AD_VIEW.ordinal()] = 6;
            $EnumSwitchMapping$0[VideoTrackingEvent.COMPANION_AD_CLICK.ordinal()] = 7;
        }
    }

    /* renamed from: a */
    public final List<String> m30452a(String str, JSONArray jSONArray) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String optString = jSONArray.optString(i);
            if (optString != null) {
                arrayList.add(C14966w.m718a(optString, Constants.VIDEO_TRACKING_URL_MACRO, str, false, 4, (Object) null));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m30453a(final Context context, int i, final Integer num) {
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8664g, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
        String clickThroughUrl = getClickThroughUrl();
        if (!(clickThroughUrl == null || clickThroughUrl.length() == 0)) {
            UrlHandler build = new UrlHandler.Builder().withDspCreativeId(getDspCreativeId()).withoutMoPubBrowser().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastVideoConfigTwo$handleClick$urlHandler$1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(String str, UrlAction urlAction) {
                    C15149k.m377b(str, "url");
                    C15149k.m377b(urlAction, "lastFailedUrlAction");
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(String str, UrlAction urlAction) {
                    C15149k.m377b(str, "url");
                    C15149k.m377b(urlAction, "urlAction");
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                        bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfigTwo.this.getDspCreativeId());
                        Intent startActivityIntent = Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle);
                        try {
                            if (!(context instanceof Activity)) {
                                Intents.startActivity(context, startActivityIntent);
                            } else if (num != null) {
                                ((Activity) context).startActivityForResult(startActivityIntent, num.intValue());
                            } else {
                                throw new IllegalArgumentException("Activity context requires a requestCode".toString());
                            }
                        } catch (ActivityNotFoundException e) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        } catch (IntentNotResolvableException e2) {
                            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent2, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        }
                    }
                }
            }).build();
            String clickThroughUrl2 = getClickThroughUrl();
            if (clickThroughUrl2 != null) {
                build.handleUrl(context, clickThroughUrl2);
            }
        }
    }

    /* renamed from: a */
    public final void m30451a(List<String> list) {
        List<VastTrackerTwo> e = m30446e(list);
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo = this.f8675r;
        if (vastCompanionAdConfigTwo != null) {
            vastCompanionAdConfigTwo.addClickTrackers(e);
        }
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo2 = this.f8676s;
        if (vastCompanionAdConfigTwo2 != null) {
            vastCompanionAdConfigTwo2.addClickTrackers(e);
        }
    }

    /* renamed from: a */
    public final void m30450a(List<String> list, float f) {
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (String str : list) {
            arrayList.add(new VastFractionalProgressTrackerTwo.Builder(str, f).build());
        }
        addFractionalTrackers(arrayList);
    }

    public void addAbsoluteTrackers(List<? extends VastAbsoluteProgressTrackerTwo> list) {
        C15149k.m377b(list, "absoluteTrackers");
        this.f8667j.addAll(list);
        C15025q.m553c(this.f8667j);
    }

    public void addAvidJavascriptResources(Set<String> set) {
        if (set != null) {
            this.f8669l.addAll(set);
        }
    }

    public void addClickTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "clickTrackers");
        this.f8664g.addAll(list);
    }

    public void addCloseTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "closeTrackers");
        this.f8662e.addAll(list);
    }

    public void addCompleteTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "completeTrackers");
        this.f8661d.addAll(list);
    }

    public void addErrorTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "errorTrackers");
        this.f8665h.addAll(list);
    }

    public void addExternalViewabilityTrackers(Map<String, String> map) {
        if (map != null) {
            this.f8668k.putAll(map);
        }
    }

    public void addFractionalTrackers(List<VastFractionalProgressTrackerTwo> list) {
        C15149k.m377b(list, "fractionalTrackers");
        this.f8666i.addAll(list);
        C15025q.m553c(this.f8666i);
    }

    public void addImpressionTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "impressionTrackers");
        this.f8658a.addAll(list);
    }

    public void addMoatImpressionPixels(Set<String> set) {
        if (set != null) {
            this.f8670m.addAll(set);
        }
    }

    public void addPauseTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "pauseTrackers");
        this.f8659b.addAll(list);
    }

    public void addResumeTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "resumeTrackers");
        this.f8660c.addAll(list);
    }

    public void addSkipTrackers(List<? extends VastTrackerTwo> list) {
        C15149k.m377b(list, "skipTrackers");
        this.f8663f.addAll(list);
    }

    public void addVideoTrackers(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
            JSONArray optJSONArray2 = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
            if (!(optJSONArray == null || optJSONArray2 == null)) {
                int length = optJSONArray2.length();
                for (int i = 0; i < length; i++) {
                    String optString = optJSONArray2.optString(i);
                    List<String> a = m30452a(optString, optJSONArray);
                    VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
                    if (!(optString == null || a == null)) {
                        switch (WhenMappings.$EnumSwitchMapping$0[fromString.ordinal()]) {
                            case 1:
                                m30447d(a);
                                continue;
                            case 2:
                            case 3:
                            case 4:
                                m30450a(a, fromString.toFloat());
                                continue;
                            case 5:
                                m30448c(a);
                                continue;
                            case 6:
                                m30449b(a);
                                continue;
                            case 7:
                                m30451a(a);
                                continue;
                            default:
                                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                                MoPubLog.log(sdkLogEvent, "Encountered unknown video tracking event: " + optString);
                                continue;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m30449b(List<String> list) {
        List<VastTrackerTwo> e = m30446e(list);
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo = this.f8675r;
        if (vastCompanionAdConfigTwo != null) {
            vastCompanionAdConfigTwo.addCreativeViewTrackers(e);
        }
        VastCompanionAdConfigTwo vastCompanionAdConfigTwo2 = this.f8676s;
        if (vastCompanionAdConfigTwo2 != null) {
            vastCompanionAdConfigTwo2.addCreativeViewTrackers(e);
        }
    }

    /* renamed from: c */
    public final void m30448c(List<String> list) {
        addCompleteTrackers(m30446e(list));
    }

    /* renamed from: d */
    public final void m30447d(List<String> list) {
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (String str : list) {
            arrayList.add(new VastAbsoluteProgressTrackerTwo.Builder(str, 0).build());
        }
        addAbsoluteTrackers(arrayList);
    }

    /* renamed from: e */
    public final List<VastTrackerTwo> m30446e(List<String> list) {
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (String str : list) {
            arrayList.add(new VastTrackerTwo.Builder(str).build());
        }
        return arrayList;
    }

    public ArrayList<VastAbsoluteProgressTrackerTwo> getAbsoluteTrackers() {
        return new ArrayList<>(this.f8667j);
    }

    public Set<String> getAvidJavascriptResources() {
        return new HashSet(this.f8669l);
    }

    public String getClickThroughUrl() {
        return this.f8671n;
    }

    public ArrayList<VastTrackerTwo> getClickTrackers() {
        return new ArrayList<>(this.f8664g);
    }

    public ArrayList<VastTrackerTwo> getCloseTrackers() {
        return new ArrayList<>(this.f8662e);
    }

    public ArrayList<VastTrackerTwo> getCompleteTrackers() {
        return new ArrayList<>(this.f8661d);
    }

    public String getCustomCloseIconUrl() {
        return this.f8682y;
    }

    public String getCustomCtaText() {
        return this.f8680w;
    }

    public String getCustomSkipText() {
        return this.f8681x;
    }

    public String getDiskMediaFileUrl() {
        return this.f8673p;
    }

    public String getDspCreativeId() {
        return this.f8655A;
    }

    public boolean getEnableClickExperiment() {
        return this.f8679v;
    }

    public ArrayList<VastTrackerTwo> getErrorTrackers() {
        return new ArrayList<>(this.f8665h);
    }

    public Map<String, String> getExternalViewabilityTrackers() {
        return new HashMap(this.f8668k);
    }

    public ArrayList<VastFractionalProgressTrackerTwo> getFractionalTrackers() {
        return new ArrayList<>(this.f8666i);
    }

    public ArrayList<VastTrackerTwo> getImpressionTrackers() {
        return new ArrayList<>(this.f8658a);
    }

    public Set<String> getMoatImpressionPixels() {
        return new HashSet(this.f8670m);
    }

    public String getNetworkMediaFileUrl() {
        return this.f8672o;
    }

    public ArrayList<VastTrackerTwo> getPauseTrackers() {
        return new ArrayList<>(this.f8659b);
    }

    public String getPrivacyInformationIconClickthroughUrl() {
        return this.f8657C;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f8656B;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    public ArrayList<VastTrackerTwo> getResumeTrackers() {
        return new ArrayList<>(this.f8660c);
    }

    public String getSkipOffset() {
        return this.f8674q;
    }

    public Integer getSkipOffsetMillis(int i) throws NumberFormatException {
        Integer num;
        String skipOffset = getSkipOffset();
        Integer num2 = null;
        if (skipOffset != null) {
            if (VastAbsoluteProgressTrackerTwo.Companion.isAbsoluteTracker(skipOffset)) {
                num = VastAbsoluteProgressTrackerTwo.Companion.parseAbsoluteOffset(skipOffset);
            } else if (VastFractionalProgressTrackerTwo.Companion.isPercentageTracker(skipOffset)) {
                num = VastFractionalProgressTrackerTwo.Companion.parsePercentageOffset(skipOffset, i);
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid VAST skipoffset format: " + skipOffset);
                num = null;
            }
            num2 = null;
            if (num != null) {
                num2 = Integer.valueOf(Math.min(num.intValue(), i));
            }
        }
        return num2;
    }

    public ArrayList<VastTrackerTwo> getSkipTrackers() {
        return new ArrayList<>(this.f8663f);
    }

    public List<VastTrackerTwo> getUntriggeredTrackersBefore(int i, int i2) {
        if (i2 <= 0 || i < 0) {
            return C15021m.m565a();
        }
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTrackerTwo build = new VastAbsoluteProgressTrackerTwo.Builder("", i).build();
        for (VastAbsoluteProgressTrackerTwo vastAbsoluteProgressTrackerTwo : this.f8667j) {
            if (vastAbsoluteProgressTrackerTwo.compareTo(build) <= 0 && !vastAbsoluteProgressTrackerTwo.isTracked()) {
                arrayList.add(vastAbsoluteProgressTrackerTwo);
            }
        }
        VastFractionalProgressTrackerTwo build2 = new VastFractionalProgressTrackerTwo.Builder("", i / i2).build();
        for (VastFractionalProgressTrackerTwo vastFractionalProgressTrackerTwo : this.f8666i) {
            if (vastFractionalProgressTrackerTwo.compareTo(build2) <= 0 && !vastFractionalProgressTrackerTwo.isTracked()) {
                arrayList.add(vastFractionalProgressTrackerTwo);
            }
        }
        return arrayList;
    }

    public VastCompanionAdConfigTwo getVastCompanionAd(int i) {
        return i != 1 ? i != 2 ? this.f8675r : this.f8675r : this.f8676s;
    }

    public VastIconConfigTwo getVastIconConfig() {
        return this.f8677t;
    }

    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.f8683z;
    }

    public void handleClickForResult(Activity activity, int i, int i2) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        m30453a(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(Context context, int i) {
        C15149k.m377b(context, "context");
        Context applicationContext = context.getApplicationContext();
        C15149k.m383a((Object) applicationContext, "context.applicationContext");
        m30453a(applicationContext, i, null);
    }

    public void handleClose(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8662e, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleComplete(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8661d, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleError(Context context, VastErrorCode vastErrorCode, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8665h, vastErrorCode, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleImpression(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8658a, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handlePause(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8659b, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleResume(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8660c, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public void handleSkip(Context context, int i) {
        C15149k.m377b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.f8663f, null, Integer.valueOf(i), getNetworkMediaFileUrl(), context);
    }

    public boolean hasCompanionAd() {
        return (this.f8675r == null || this.f8676s == null) ? false : true;
    }

    public boolean isRewarded() {
        return this.f8678u;
    }

    public void setClickThroughUrl(String str) {
        this.f8671n = str;
    }

    public void setCustomCloseIconUrl(String str) {
        if (str == null) {
            str = this.f8682y;
        }
        this.f8682y = str;
    }

    public void setCustomCtaText(String str) {
        if (str == null) {
            str = this.f8680w;
        }
        this.f8680w = str;
    }

    public void setCustomSkipText(String str) {
        if (str == null) {
            str = this.f8681x;
        }
        this.f8681x = str;
    }

    public void setDiskMediaFileUrl(String str) {
        this.f8673p = str;
    }

    public void setDspCreativeId(String str) {
        if (str == null) {
            str = this.f8655A;
        }
        this.f8655A = str;
    }

    public void setEnableClickExperiment(boolean z) {
        this.f8679v = z;
    }

    public void setNetworkMediaFileUrl(String str) {
        this.f8672o = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(String str) {
        this.f8657C = str;
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        if (str == null) {
            str = this.f8656B;
        }
        this.f8656B = str;
    }

    public void setRewarded$mopub_sdk_base_release(boolean z) {
        this.f8678u = z;
    }

    public void setSkipOffset$mopub_sdk_base_release(String str) {
        if (str == null) {
            str = this.f8674q;
        }
        this.f8674q = str;
    }

    public void setVastCompanionAd(VastCompanionAdConfigTwo vastCompanionAdConfigTwo, VastCompanionAdConfigTwo vastCompanionAdConfigTwo2) {
        this.f8675r = vastCompanionAdConfigTwo;
        this.f8676s = vastCompanionAdConfigTwo2;
    }

    public void setVastIconConfig(VastIconConfigTwo vastIconConfigTwo) {
        this.f8677t = vastIconConfigTwo;
    }

    public void setVideoViewabilityTracker(VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker == null) {
            videoViewabilityTracker = this.f8683z;
        }
        this.f8683z = videoViewabilityTracker;
    }
}
