package com.apptentive.android.sdk.module.engagement.logic;

import android.content.Context;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.CustomData;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.EventData;
import com.apptentive.android.sdk.storage.Person;
import com.apptentive.android.sdk.storage.VersionHistory;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import java.math.BigDecimal;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/FieldManager.class */
public class FieldManager {
    AppRelease appRelease;
    Context context;
    Device device;
    EventData eventData;
    Person person;
    VersionHistory versionHistory;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.module.engagement.logic.FieldManager$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/FieldManager$1.class */
    public static /* synthetic */ class C08351 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart */
        static final /* synthetic */ int[] f6458x28aab3fd;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0231 -> B:185:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0235 -> B:199:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0239 -> B:193:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x023d -> B:209:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x0241 -> B:203:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0245 -> B:137:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0249 -> B:131:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x024d -> B:149:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0251 -> B:143:0x010c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0255 -> B:161:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x0259 -> B:155:0x0124). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x025d -> B:171:0x0130). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x0261 -> B:165:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0265 -> B:179:0x0148). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x0269 -> B:175:0x0154). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x026d -> B:187:0x0160). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x0271 -> B:183:0x016c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x0275 -> B:197:0x0178). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0279 -> B:191:0x0184). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x027d -> B:207:0x0190). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x0281 -> B:201:0x019c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:121:0x0285 -> B:135:0x01a8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0289 -> B:129:0x01b4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x028d -> B:147:0x01c0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x0291 -> B:141:0x01cc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x0295 -> B:159:0x01d8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x0299 -> B:153:0x01e4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x029d -> B:169:0x01f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x01fd -> B:211:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x0201 -> B:205:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0205 -> B:139:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x0209 -> B:133:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x020d -> B:151:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0211 -> B:145:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0215 -> B:163:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0219 -> B:157:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x021d -> B:173:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x0221 -> B:167:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0225 -> B:181:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0229 -> B:177:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x022d -> B:189:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[QueryPart.values().length];
            f6458x28aab3fd = iArr;
            try {
                iArr[QueryPart.version_code.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6458x28aab3fd[QueryPart.version_name.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6458x28aab3fd[QueryPart.debug.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6458x28aab3fd[QueryPart.version.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6458x28aab3fd[QueryPart.total.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6458x28aab3fd[QueryPart.invokes.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f6458x28aab3fd[QueryPart.last_invoked_at.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f6458x28aab3fd[QueryPart.custom_data.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f6458x28aab3fd[QueryPart.name.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f6458x28aab3fd[QueryPart.email.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f6458x28aab3fd[QueryPart.other.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f6458x28aab3fd[QueryPart.os_version.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f6458x28aab3fd[QueryPart.os_api_level.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f6458x28aab3fd[QueryPart.board.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f6458x28aab3fd[QueryPart.bootloader_version.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f6458x28aab3fd[QueryPart.brand.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f6458x28aab3fd[QueryPart.build_id.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f6458x28aab3fd[QueryPart.build_type.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f6458x28aab3fd[QueryPart.carrier.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f6458x28aab3fd[QueryPart.cpu.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f6458x28aab3fd[QueryPart.current_carrier.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f6458x28aab3fd[QueryPart.device.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f6458x28aab3fd[QueryPart.hardware.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f6458x28aab3fd[QueryPart.locale_country_code.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f6458x28aab3fd[QueryPart.locale_language_code.ordinal()] = 25;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f6458x28aab3fd[QueryPart.locale_raw.ordinal()] = 26;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f6458x28aab3fd[QueryPart.manufacturer.ordinal()] = 27;
            } catch (NoSuchFieldError e27) {
            }
            try {
                f6458x28aab3fd[QueryPart.model.ordinal()] = 28;
            } catch (NoSuchFieldError e28) {
            }
            try {
                f6458x28aab3fd[QueryPart.network_type.ordinal()] = 29;
            } catch (NoSuchFieldError e29) {
            }
            try {
                f6458x28aab3fd[QueryPart.os_name.ordinal()] = 30;
            } catch (NoSuchFieldError e30) {
            }
            try {
                f6458x28aab3fd[QueryPart.os_build.ordinal()] = 31;
            } catch (NoSuchFieldError e31) {
            }
            try {
                f6458x28aab3fd[QueryPart.product.ordinal()] = 32;
            } catch (NoSuchFieldError e32) {
            }
            try {
                f6458x28aab3fd[QueryPart.radio_version.ordinal()] = 33;
            } catch (NoSuchFieldError e33) {
            }
            try {
                f6458x28aab3fd[QueryPart.uuid.ordinal()] = 34;
            } catch (NoSuchFieldError e34) {
            }
            try {
                f6458x28aab3fd[QueryPart.application.ordinal()] = 35;
            } catch (NoSuchFieldError e35) {
            }
            try {
                f6458x28aab3fd[QueryPart.sdk.ordinal()] = 36;
            } catch (NoSuchFieldError e36) {
            }
            try {
                f6458x28aab3fd[QueryPart.current_time.ordinal()] = 37;
            } catch (NoSuchFieldError e37) {
            }
            try {
                f6458x28aab3fd[QueryPart.is_update.ordinal()] = 38;
            } catch (NoSuchFieldError e38) {
            }
            try {
                f6458x28aab3fd[QueryPart.time_at_install.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            try {
                f6458x28aab3fd[QueryPart.interactions.ordinal()] = 40;
            } catch (NoSuchFieldError e40) {
            }
            try {
                f6458x28aab3fd[QueryPart.code_point.ordinal()] = 41;
            } catch (NoSuchFieldError e41) {
            }
            try {
                f6458x28aab3fd[QueryPart.person.ordinal()] = 42;
            } catch (NoSuchFieldError e42) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart.class */
    public enum QueryPart {
        application,
        current_time,
        is_update,
        time_at_install,
        code_point,
        interactions,
        person,
        device,
        sdk,
        custom_data,
        name,
        email,
        board,
        bootloader_version,
        brand,
        build_id,
        build_type,
        carrier,
        cpu,
        current_carrier,
        hardware,
        locale_country_code,
        locale_language_code,
        locale_raw,
        manufacturer,
        model,
        network_type,
        os_name,
        os_version,
        os_build,
        os_api_level,
        product,
        radio_version,
        uuid,
        last_invoked_at,
        invokes,
        total,
        version,
        version_code,
        version_name,
        debug,
        build,
        time_ago,
        other;

        public static QueryPart parse(String str) {
            if (str != null) {
                String trim = str.trim();
                try {
                    return valueOf(trim);
                } catch (IllegalArgumentException e) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.INTERACTIONS, "Unrecognized QueryPart: \"%s\". Defaulting to \"unknown\"", trim);
                    ErrorMetrics.logException(e);
                }
            }
            return other;
        }
    }

    public FieldManager(Context context, VersionHistory versionHistory, EventData eventData, Person person, Device device, AppRelease appRelease) {
        Assert.notNull(context);
        Assert.notNull(versionHistory);
        Assert.notNull(eventData);
        Assert.notNull(person);
        Assert.notNull(device);
        this.context = context;
        this.versionHistory = versionHistory;
        this.eventData = eventData;
        this.person = person;
        this.device = device;
        this.appRelease = appRelease;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Object doGetValue(String str) {
        Double timeOfLastInteractionInvocation;
        Double timeOfLastEventInvocation;
        String[] split = str.trim().split("/");
        int i = C08351.f6458x28aab3fd[QueryPart.parse(split[0]).ordinal()];
        if (i != 22) {
            switch (i) {
                case 35:
                    int i2 = C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()];
                    if (i2 == 1) {
                        return Integer.valueOf(this.appRelease.getVersionCode());
                    }
                    if (i2 == 2) {
                        Apptentive.Version version = new Apptentive.Version();
                        version.setVersion(this.appRelease.getVersionName());
                        return version;
                    } else if (i2 != 3) {
                        return null;
                    } else {
                        return Boolean.valueOf(this.appRelease.isDebug());
                    }
                case 36:
                    if (C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()] == 4) {
                        Apptentive.Version version2 = new Apptentive.Version();
                        version2.setVersion(Constants.getApptentiveSdkVersion());
                        return version2;
                    }
                    break;
                case 37:
                    break;
                case 38:
                    int i3 = C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()];
                    return i3 != 1 ? i3 != 2 ? Boolean.FALSE : Boolean.valueOf(this.versionHistory.isUpdateForVersionName()) : Boolean.valueOf(this.versionHistory.isUpdateForVersionCode());
                case 39:
                    int i4 = C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()];
                    return i4 != 1 ? i4 != 2 ? i4 != 5 ? new Apptentive.DateTime(Util.currentTimeSeconds()) : this.versionHistory.getTimeAtInstallTotal() : this.versionHistory.getTimeAtInstallForVersionName(RuntimeUtils.getAppVersionName(this.context)) : this.versionHistory.getTimeAtInstallForVersionCode(RuntimeUtils.getAppVersionCode(this.context));
                case 40:
                    String str2 = split[1];
                    int i5 = C08351.f6458x28aab3fd[QueryPart.parse(split[2]).ordinal()];
                    if (i5 == 6) {
                        int i6 = C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()];
                        if (i6 == 1) {
                            return new BigDecimal(this.eventData.getInteractionCountForVersionCode(str2, Integer.valueOf(RuntimeUtils.getAppVersionCode(this.context))).longValue());
                        }
                        if (i6 == 2) {
                            return new BigDecimal(this.eventData.getInteractionCountForVersionName(str2, RuntimeUtils.getAppVersionName(this.context)).longValue());
                        }
                        if (i6 != 5) {
                            return null;
                        }
                        return new BigDecimal(this.eventData.getInteractionCountTotal(str2).longValue());
                    } else if (i5 != 7) {
                        return null;
                    } else {
                        if (C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()] == 5 && (timeOfLastInteractionInvocation = this.eventData.getTimeOfLastInteractionInvocation(str2)) != null) {
                            return new Apptentive.DateTime(timeOfLastInteractionInvocation.doubleValue());
                        }
                        return null;
                    }
                case 41:
                    String str3 = split[1];
                    int i7 = C08351.f6458x28aab3fd[QueryPart.parse(split[2]).ordinal()];
                    if (i7 == 6) {
                        int i8 = C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()];
                        if (i8 == 1) {
                            return new BigDecimal(this.eventData.getEventCountForVersionCode(str3, Integer.valueOf(RuntimeUtils.getAppVersionCode(this.context))).longValue());
                        }
                        if (i8 == 2) {
                            return new BigDecimal(this.eventData.getEventCountForVersionName(str3, RuntimeUtils.getAppVersionName(this.context)).longValue());
                        }
                        if (i8 != 5) {
                            return null;
                        }
                        return new BigDecimal(this.eventData.getEventCountTotal(str3).longValue());
                    } else if (i7 != 7) {
                        return null;
                    } else {
                        if (C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()] == 5 && (timeOfLastEventInvocation = this.eventData.getTimeOfLastEventInvocation(str3)) != null) {
                            return new Apptentive.DateTime(timeOfLastEventInvocation.doubleValue());
                        }
                        return null;
                    }
                case 42:
                    QueryPart parse = QueryPart.parse(split[1]);
                    if (this.person == null) {
                        return null;
                    }
                    switch (C08351.f6458x28aab3fd[parse.ordinal()]) {
                        case 8:
                            String trim = split[2].trim();
                            CustomData customData = this.person.getCustomData();
                            if (customData != null) {
                                for (String str4 : customData.keySet()) {
                                    if (str4.trim().equals(trim)) {
                                        return customData.get(str4);
                                    }
                                }
                                break;
                            }
                            break;
                        case 9:
                            return this.person.getName();
                        case 10:
                            return this.person.getEmail();
                        case 11:
                            return null;
                    }
                default:
                    return null;
            }
            return new Apptentive.DateTime(Util.currentTimeSeconds());
        }
        QueryPart parse2 = QueryPart.parse(split[1]);
        if (this.device == null) {
            return null;
        }
        switch (C08351.f6458x28aab3fd[parse2.ordinal()]) {
            case 8:
                String trim2 = split[2].trim();
                CustomData customData2 = this.device.getCustomData();
                if (customData2 == null) {
                    return null;
                }
                for (String str5 : customData2.keySet()) {
                    if (str5.trim().equals(trim2)) {
                        return customData2.get(str5);
                    }
                }
                return null;
            case 9:
            case 10:
            case 11:
            case 23:
            default:
                return null;
            case 12:
                String osVersion = this.device.getOsVersion();
                String str6 = osVersion;
                if (osVersion == null) {
                    str6 = "0";
                }
                Apptentive.Version version3 = new Apptentive.Version();
                version3.setVersion(str6);
                return version3;
            case 13:
                return Integer.valueOf(this.device.getOsApiLevel());
            case 14:
                return this.device.getBoard();
            case 15:
                return this.device.getBootloaderVersion();
            case 16:
                return this.device.getBrand();
            case 17:
                return this.device.getBuildId();
            case 18:
                return this.device.getBuildType();
            case 19:
                return this.device.getCarrier();
            case 20:
                return this.device.getCpu();
            case 21:
                return this.device.getCurrentCarrier();
            case 22:
                return this.device.getDevice();
            case 24:
                return this.device.getLocaleCountryCode();
            case 25:
                return this.device.getLocaleLanguageCode();
            case 26:
                return this.device.getLocaleRaw();
            case 27:
                return this.device.getManufacturer();
            case 28:
                return this.device.getModel();
            case 29:
                return this.device.getNetworkType();
            case 30:
                return this.device.getOsName();
            case 31:
                return this.device.getOsBuild();
            case 32:
                return this.device.getProduct();
            case 33:
                return this.device.getRadioVersion();
            case 34:
                return this.device.getUuid();
        }
    }

    public String getDescription(String str) {
        String[] split = str.trim().split("/");
        int i = C08351.f6458x28aab3fd[QueryPart.parse(split[0]).ordinal()];
        if (i != 22) {
            switch (i) {
                case 35:
                    int i2 = C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()];
                    if (i2 == 1) {
                        return "app version code";
                    }
                    if (i2 == 2) {
                        return "app version name";
                    }
                    if (i2 != 3) {
                        return null;
                    }
                    return "app debuggable";
                case 36:
                    return C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()] != 4 ? "current time" : "SDK version";
                case 37:
                    return "current time";
                case 38:
                    int i3 = C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()];
                    if (i3 == 1) {
                        return "app version code changed";
                    }
                    if (i3 != 2) {
                        return null;
                    }
                    return "app version name changed";
                case 39:
                    int i4 = C08351.f6458x28aab3fd[QueryPart.parse(split[1]).ordinal()];
                    if (i4 == 1) {
                        return StringUtils.format("time at install for version code '%d'", Integer.valueOf(RuntimeUtils.getAppVersionCode(this.context)));
                    }
                    if (i4 == 2) {
                        return StringUtils.format("time at install for version name '%s'", RuntimeUtils.getAppVersionName(this.context));
                    }
                    if (i4 != 5) {
                        return null;
                    }
                    return "time at install";
                case 40:
                    String str2 = split[1];
                    int i5 = C08351.f6458x28aab3fd[QueryPart.parse(split[2]).ordinal()];
                    if (i5 == 6) {
                        int i6 = C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()];
                        if (i6 == 1) {
                            return StringUtils.format("number of invokes for interaction '%s' for version code '%d'", str2, Integer.valueOf(RuntimeUtils.getAppVersionCode(this.context)));
                        }
                        if (i6 == 2) {
                            return StringUtils.format("number of invokes for interaction '%s' for version name '%s'", str2, RuntimeUtils.getAppVersionName(this.context));
                        }
                        if (i6 != 5) {
                            return null;
                        }
                        return StringUtils.format("number of invokes for interaction '%s'", str2);
                    } else if (i5 == 7 && C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()] == 5) {
                        return StringUtils.format("last time interaction '%s' was invoked", str2);
                    } else {
                        return null;
                    }
                case 41:
                    String str3 = split[1];
                    int i7 = C08351.f6458x28aab3fd[QueryPart.parse(split[2]).ordinal()];
                    if (i7 == 6) {
                        int i8 = C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()];
                        if (i8 == 1) {
                            return StringUtils.format("number of invokes for event '%s' for version code '%d'", str3, Integer.valueOf(RuntimeUtils.getAppVersionCode(this.context)));
                        }
                        if (i8 == 2) {
                            return StringUtils.format("number of invokes for event '%s' for version name '%s'", str3, RuntimeUtils.getAppVersionName(this.context));
                        }
                        if (i8 != 5) {
                            return null;
                        }
                        return StringUtils.format("number of invokes for event '%s'", str3);
                    } else if (i7 == 7 && C08351.f6458x28aab3fd[QueryPart.parse(split[3]).ordinal()] == 5) {
                        return StringUtils.format("last time event '%s' was invoked", str3);
                    } else {
                        return null;
                    }
                case 42:
                    QueryPart parse = QueryPart.parse(split[1]);
                    if (this.person == null) {
                        return null;
                    }
                    switch (C08351.f6458x28aab3fd[parse.ordinal()]) {
                        case 8:
                            return StringUtils.format("person_data['%s']", split[2].trim());
                        case 9:
                            return "person name";
                        case 10:
                            return "person email";
                        case 11:
                            return null;
                    }
                default:
                    return null;
            }
        }
        QueryPart parse2 = QueryPart.parse(split[1]);
        if (this.device == null) {
            return null;
        }
        int i9 = C08351.f6458x28aab3fd[parse2.ordinal()];
        if (i9 == 8) {
            return StringUtils.format("device_data['%s']", split[2].trim());
        }
        switch (i9) {
            case 12:
                return "device OS version";
            case 13:
                return "device API level";
            case 14:
                return "device board";
            case 15:
                return "device bootloader version";
            case 16:
                return "device brand";
            case 17:
                return "device build id";
            case 18:
                return "device build type";
            case 19:
                return "device carrier";
            case 20:
                return "device CPU";
            case 21:
                return "device current carrier";
            case 22:
                return "device";
            case 23:
                return "device hardware";
            case 24:
                return "device country";
            case 25:
                return "device language";
            case 26:
                return "device locale";
            case 27:
                return "device manufacturer";
            case 28:
                return "device model";
            case 29:
                return "device network type";
            case 30:
                return "device OS name";
            case 31:
                return "device OS build";
            case 32:
                return "device product";
            case 33:
                return "device radio version";
            case 34:
                return "UUID";
            default:
                return null;
        }
    }

    public Comparable getValue(String str) {
        return (Comparable) ClauseParser.parseValue(doGetValue(str));
    }
}
