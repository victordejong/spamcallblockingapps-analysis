package com.crashlytics.android.answers;

import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p000a.p001a.p002a.p003a.C0137d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/FirebaseAnalyticsEventMapper.class */
public class FirebaseAnalyticsEventMapper {
    private static final Set<String> EVENT_NAMES = new HashSet(Arrays.asList("app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "screen_view", "firebase_extra_parameter"));
    private static final String FIREBASE_LEVEL_NAME = "level_name";
    private static final String FIREBASE_METHOD = "method";
    private static final String FIREBASE_RATING = "rating";
    private static final String FIREBASE_SUCCESS = "success";

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
        if (java.lang.Character.isLetter(r0.charAt(0)) == false) goto L_0x003f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapAttribute(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 == 0) goto L_0x005e
            r0 = r5
            int r0 = r0.length()
            if (r0 != 0) goto L_0x000e
            goto L_0x005e
        L_0x000e:
            r0 = r5
            java.lang.String r1 = "[^\\p{Alnum}_]+"
            java.lang.String r2 = "_"
            java.lang.String r0 = r0.replaceAll(r1, r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "ga_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x003f
            r0 = r6
            java.lang.String r1 = "google_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x003f
            r0 = r6
            java.lang.String r1 = "firebase_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x003f
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            boolean r0 = java.lang.Character.isLetter(r0)
            if (r0 != 0) goto L_0x0049
        L_0x003f:
            java.lang.String r0 = "fabric_"
            r1 = r6
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            r5 = r0
        L_0x0049:
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.length()
            r1 = 40
            if (r0 <= r1) goto L_0x005c
            r0 = r5
            r1 = 0
            r2 = 40
            java.lang.String r0 = r0.substring(r1, r2)
            r6 = r0
        L_0x005c:
            r0 = r6
            return r0
        L_0x005e:
            java.lang.String r0 = "fabric_unnamed_parameter"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapAttribute(java.lang.String):java.lang.String");
    }

    private Integer mapBooleanValue(String str) {
        if (str == null) {
            return null;
        }
        return Integer.valueOf(str.equals("true") ? 1 : 0);
    }

    private void mapCustomEventAttributes(Bundle bundle, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            String mapAttribute = mapAttribute(entry.getKey());
            if (value instanceof String) {
                bundle.putString(mapAttribute, entry.getValue().toString());
            } else if (value instanceof Double) {
                bundle.putDouble(mapAttribute, ((Double) entry.getValue()).doubleValue());
            } else if (value instanceof Long) {
                bundle.putLong(mapAttribute, ((Long) entry.getValue()).longValue());
            } else if (value instanceof Integer) {
                bundle.putInt(mapAttribute, ((Integer) entry.getValue()).intValue());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (java.lang.Character.isLetter(r0.charAt(0)) == false) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapCustomEventName(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 == 0) goto L_0x0074
            r0 = r5
            int r0 = r0.length()
            if (r0 != 0) goto L_0x000e
            goto L_0x0074
        L_0x000e:
            java.util.Set<java.lang.String> r0 = com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.EVENT_NAMES
            r1 = r5
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0024
            java.lang.String r0 = "fabric_"
            r1 = r5
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            return r0
        L_0x0024:
            r0 = r5
            java.lang.String r1 = "[^\\p{Alnum}_]+"
            java.lang.String r2 = "_"
            java.lang.String r0 = r0.replaceAll(r1, r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "ga_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0055
            r0 = r6
            java.lang.String r1 = "google_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0055
            r0 = r6
            java.lang.String r1 = "firebase_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0055
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            boolean r0 = java.lang.Character.isLetter(r0)
            if (r0 != 0) goto L_0x005f
        L_0x0055:
            java.lang.String r0 = "fabric_"
            r1 = r6
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            r5 = r0
        L_0x005f:
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.length()
            r1 = 40
            if (r0 <= r1) goto L_0x0072
            r0 = r5
            r1 = 0
            r2 = 40
            java.lang.String r0 = r0.substring(r1, r2)
            r6 = r0
        L_0x0072:
            r0 = r6
            return r0
        L_0x0074:
            java.lang.String r0 = "fabric_unnamed_event"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapCustomEventName(java.lang.String):java.lang.String");
    }

    private Double mapDouble(Object obj) {
        String valueOf = String.valueOf(obj);
        if (valueOf == null) {
            return null;
        }
        return Double.valueOf(valueOf);
    }

    private Bundle mapPredefinedEvent(SessionEvent sessionEvent) {
        String str;
        String str2;
        Object obj;
        Bundle bundle = new Bundle();
        if ("purchase".equals(sessionEvent.predefinedType)) {
            putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("itemId"));
            putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("itemName"));
            putString(bundle, "item_category", (String) sessionEvent.predefinedAttributes.get("itemType"));
            obj = sessionEvent.predefinedAttributes.get("itemPrice");
        } else {
            if ("addToCart".equals(sessionEvent.predefinedType)) {
                putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("itemId"));
                putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("itemName"));
                putString(bundle, "item_category", (String) sessionEvent.predefinedAttributes.get("itemType"));
                putDouble(bundle, "price", mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
                putDouble(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
                putString(bundle, "currency", (String) sessionEvent.predefinedAttributes.get("currency"));
                bundle.putLong("quantity", 1L);
            } else if ("startCheckout".equals(sessionEvent.predefinedType)) {
                putLong(bundle, "quantity", Long.valueOf(((Integer) sessionEvent.predefinedAttributes.get("itemCount")).intValue()));
                obj = sessionEvent.predefinedAttributes.get("totalPrice");
            } else {
                if (!"contentView".equals(sessionEvent.predefinedType)) {
                    if ("search".equals(sessionEvent.predefinedType)) {
                        str = (String) sessionEvent.predefinedAttributes.get(SearchIntents.EXTRA_QUERY);
                        str2 = "search_term";
                    } else if ("share".equals(sessionEvent.predefinedType)) {
                        putString(bundle, FIREBASE_METHOD, (String) sessionEvent.predefinedAttributes.get(FIREBASE_METHOD));
                    } else if (FIREBASE_RATING.equals(sessionEvent.predefinedType)) {
                        putString(bundle, FIREBASE_RATING, String.valueOf(sessionEvent.predefinedAttributes.get(FIREBASE_RATING)));
                    } else if ("signUp".equals(sessionEvent.predefinedType) || "login".equals(sessionEvent.predefinedType) || "invite".equals(sessionEvent.predefinedType)) {
                        putString(bundle, FIREBASE_METHOD, (String) sessionEvent.predefinedAttributes.get(FIREBASE_METHOD));
                    } else if ("levelStart".equals(sessionEvent.predefinedType)) {
                        str = (String) sessionEvent.predefinedAttributes.get("levelName");
                        str2 = FIREBASE_LEVEL_NAME;
                    } else if ("levelEnd".equals(sessionEvent.predefinedType)) {
                        putDouble(bundle, "score", mapDouble(sessionEvent.predefinedAttributes.get("score")));
                        putString(bundle, FIREBASE_LEVEL_NAME, (String) sessionEvent.predefinedAttributes.get("levelName"));
                        putInt(bundle, FIREBASE_SUCCESS, mapBooleanValue((String) sessionEvent.predefinedAttributes.get(FIREBASE_SUCCESS)));
                    }
                    putString(bundle, str2, str);
                }
                putString(bundle, "content_type", (String) sessionEvent.predefinedAttributes.get("contentType"));
                putString(bundle, "item_id", (String) sessionEvent.predefinedAttributes.get("contentId"));
                putString(bundle, "item_name", (String) sessionEvent.predefinedAttributes.get("contentName"));
            }
            mapCustomEventAttributes(bundle, sessionEvent.customAttributes);
            return bundle;
        }
        putDouble(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, mapPriceValue(obj));
        putString(bundle, "currency", (String) sessionEvent.predefinedAttributes.get("currency"));
        mapCustomEventAttributes(bundle, sessionEvent.customAttributes);
        return bundle;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapPredefinedEventName(java.lang.String r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapPredefinedEventName(java.lang.String, boolean):java.lang.String");
    }

    private Double mapPriceValue(Object obj) {
        Long l = (Long) obj;
        if (l == null) {
            return null;
        }
        return Double.valueOf(new BigDecimal(l.longValue()).divide(AddToCartEvent.MICRO_CONSTANT).doubleValue());
    }

    private void putDouble(Bundle bundle, String str, Double d) {
        Double mapDouble = mapDouble(d);
        if (mapDouble != null) {
            bundle.putDouble(str, mapDouble.doubleValue());
        }
    }

    private void putInt(Bundle bundle, String str, Integer num) {
        if (num != null) {
            bundle.putInt(str, num.intValue());
        }
    }

    private void putLong(Bundle bundle, String str, Long l) {
        if (l != null) {
            bundle.putLong(str, l.longValue());
        }
    }

    private void putString(Bundle bundle, String str, String str2) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    public FirebaseAnalyticsEvent mapEvent(SessionEvent sessionEvent) {
        Bundle bundle;
        String str;
        boolean z = true;
        boolean z2 = SessionEvent.Type.CUSTOM.equals(sessionEvent.type) && sessionEvent.customType != null;
        boolean z3 = SessionEvent.Type.PREDEFINED.equals(sessionEvent.type) && sessionEvent.predefinedType != null;
        if (!z2 && !z3) {
            return null;
        }
        if (z3) {
            bundle = mapPredefinedEvent(sessionEvent);
        } else {
            Bundle bundle2 = new Bundle();
            bundle = bundle2;
            if (sessionEvent.customAttributes != null) {
                mapCustomEventAttributes(bundle2, sessionEvent.customAttributes);
                bundle = bundle2;
            }
        }
        if (z3) {
            String str2 = (String) sessionEvent.predefinedAttributes.get(FIREBASE_SUCCESS);
            if (str2 == null || Boolean.parseBoolean(str2)) {
                z = false;
            }
            str = mapPredefinedEventName(sessionEvent.predefinedType, z);
        } else {
            str = mapCustomEventName(sessionEvent.customType);
        }
        C0137d.m10155c().mo10135a(Answers.TAG, "Logging event into firebase...");
        return new FirebaseAnalyticsEvent(str, bundle);
    }
}
