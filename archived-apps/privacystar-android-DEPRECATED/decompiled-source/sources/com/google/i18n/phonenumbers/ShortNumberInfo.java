package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.internal.MatcherApi;
import com.google.i18n.phonenumbers.internal.RegexBasedMatcher;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/ShortNumberInfo.class */
public class ShortNumberInfo {
    private final Map<Integer, List<String>> countryCallingCodeToRegionCodeMap = CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap();
    private final MatcherApi matcherApi;
    private static final Logger logger = Logger.getLogger(ShortNumberInfo.class.getName());
    private static final ShortNumberInfo INSTANCE = new ShortNumberInfo(RegexBasedMatcher.create());
    private static final Set<String> REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT = new HashSet();

    /* renamed from: com.google.i18n.phonenumbers.ShortNumberInfo$1 */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/ShortNumberInfo$1.class */
    static /* synthetic */ class C13751 {

        /* renamed from: $SwitchMap$com$google$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost */
        static final /* synthetic */ int[] f212xe1b2aad7 = new int[ShortNumberCost.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f212xe1b2aad7[ShortNumberCost.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f212xe1b2aad7[ShortNumberCost.UNKNOWN_COST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f212xe1b2aad7[ShortNumberCost.STANDARD_RATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f212xe1b2aad7[ShortNumberCost.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost.class */
    public enum ShortNumberCost {
        TOLL_FREE,
        STANDARD_RATE,
        PREMIUM_RATE,
        UNKNOWN_COST
    }

    static {
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.add("BR");
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.add("CL");
        REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.add("NI");
    }

    ShortNumberInfo(MatcherApi matcherApi) {
        this.matcherApi = matcherApi;
    }

    public static ShortNumberInfo getInstance() {
        return INSTANCE;
    }

    private static String getNationalSignificantNumber(Phonenumber.PhoneNumber phoneNumber) {
        StringBuilder sb = new StringBuilder();
        if (phoneNumber.isItalianLeadingZero()) {
            char[] cArr = new char[phoneNumber.getNumberOfLeadingZeros()];
            Arrays.fill(cArr, '0');
            sb.append(new String(cArr));
        }
        sb.append(phoneNumber.getNationalNumber());
        return sb.toString();
    }

    private String getRegionCodeForShortNumberFromRegionList(Phonenumber.PhoneNumber phoneNumber, List<String> list) {
        if (list.size() == 0) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        for (String str : list) {
            Phonemetadata.PhoneMetadata shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str);
            if (shortNumberMetadataForRegion != null && matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getShortCode())) {
                return str;
            }
        }
        return null;
    }

    private List<String> getRegionCodesForCountryCode(int i) {
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i));
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>(0);
        }
        return Collections.unmodifiableList(list2);
    }

    private boolean matchesEmergencyNumberHelper(String str, String str2, boolean z) {
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion;
        String extractPossibleNumber = PhoneNumberUtil.extractPossibleNumber(str);
        if (PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(extractPossibleNumber).lookingAt() || (shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str2)) == null || !shortNumberMetadataForRegion.hasEmergency()) {
            return false;
        }
        String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(extractPossibleNumber);
        Phonemetadata.PhoneNumberDesc emergency = shortNumberMetadataForRegion.getEmergency();
        boolean z2 = false;
        if (z) {
            z2 = false;
            if (!REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT.contains(str2)) {
                z2 = true;
            }
        }
        return this.matcherApi.matchesNationalNumber(normalizeDigitsOnly, emergency, z2);
    }

    private boolean matchesPossibleNumberAndNationalNumber(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc) {
        if (phoneNumberDesc.getPossibleLengthCount() <= 0 || phoneNumberDesc.getPossibleLengthList().contains(Integer.valueOf(str.length()))) {
            return this.matcherApi.matchesNationalNumber(str, phoneNumberDesc, false);
        }
        return false;
    }

    private boolean regionDialingFromMatchesNumber(Phonenumber.PhoneNumber phoneNumber, String str) {
        return getRegionCodesForCountryCode(phoneNumber.getCountryCode()).contains(str);
    }

    public boolean connectsToEmergencyNumber(String str, String str2) {
        return matchesEmergencyNumberHelper(str, str2, true);
    }

    String getExampleShortNumber(String str) {
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str);
        if (shortNumberMetadataForRegion == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc shortCode = shortNumberMetadataForRegion.getShortCode();
        return shortCode.hasExampleNumber() ? shortCode.getExampleNumber() : "";
    }

    String getExampleShortNumberForCost(String str, ShortNumberCost shortNumberCost) {
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str);
        if (shortNumberMetadataForRegion == null) {
            return "";
        }
        Phonemetadata.PhoneNumberDesc phoneNumberDesc = null;
        int i = C13751.f212xe1b2aad7[shortNumberCost.ordinal()];
        if (i != 1) {
            switch (i) {
                case 3:
                    phoneNumberDesc = shortNumberMetadataForRegion.getStandardRate();
                    break;
                case 4:
                    phoneNumberDesc = shortNumberMetadataForRegion.getTollFree();
                    break;
            }
        } else {
            phoneNumberDesc = shortNumberMetadataForRegion.getPremiumRate();
        }
        return (phoneNumberDesc == null || !phoneNumberDesc.hasExampleNumber()) ? "" : phoneNumberDesc.getExampleNumber();
    }

    public ShortNumberCost getExpectedCost(Phonenumber.PhoneNumber phoneNumber) {
        List<String> regionCodesForCountryCode = getRegionCodesForCountryCode(phoneNumber.getCountryCode());
        if (regionCodesForCountryCode.size() == 0) {
            return ShortNumberCost.UNKNOWN_COST;
        }
        if (regionCodesForCountryCode.size() == 1) {
            return getExpectedCostForRegion(phoneNumber, regionCodesForCountryCode.get(0));
        }
        ShortNumberCost shortNumberCost = ShortNumberCost.TOLL_FREE;
        for (String str : regionCodesForCountryCode) {
            ShortNumberCost expectedCostForRegion = getExpectedCostForRegion(phoneNumber, str);
            switch (C13751.f212xe1b2aad7[expectedCostForRegion.ordinal()]) {
                case 1:
                    return ShortNumberCost.PREMIUM_RATE;
                case 2:
                    shortNumberCost = ShortNumberCost.UNKNOWN_COST;
                    break;
                case 3:
                    if (shortNumberCost != ShortNumberCost.UNKNOWN_COST) {
                        shortNumberCost = ShortNumberCost.STANDARD_RATE;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    break;
                default:
                    Logger logger2 = logger;
                    Level level = Level.SEVERE;
                    logger2.log(level, "Unrecognised cost for region: " + expectedCostForRegion);
                    break;
            }
        }
        return shortNumberCost;
    }

    public ShortNumberCost getExpectedCostForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion;
        if (regionDialingFromMatchesNumber(phoneNumber, str) && (shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str)) != null) {
            String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
            if (!shortNumberMetadataForRegion.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(nationalSignificantNumber.length()))) {
                return ShortNumberCost.UNKNOWN_COST;
            }
            if (matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getPremiumRate())) {
                return ShortNumberCost.PREMIUM_RATE;
            }
            if (matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getStandardRate())) {
                return ShortNumberCost.STANDARD_RATE;
            }
            if (!matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getTollFree()) && !isEmergencyNumber(nationalSignificantNumber, str)) {
                return ShortNumberCost.UNKNOWN_COST;
            }
            return ShortNumberCost.TOLL_FREE;
        }
        return ShortNumberCost.UNKNOWN_COST;
    }

    Set<String> getSupportedRegions() {
        return MetadataManager.getSupportedShortNumberRegions();
    }

    public boolean isCarrierSpecific(Phonenumber.PhoneNumber phoneNumber) {
        String regionCodeForShortNumberFromRegionList = getRegionCodeForShortNumberFromRegionList(phoneNumber, getRegionCodesForCountryCode(phoneNumber.getCountryCode()));
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(regionCodeForShortNumberFromRegionList);
        return shortNumberMetadataForRegion != null && matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getCarrierSpecific());
    }

    public boolean isCarrierSpecificForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        if (!regionDialingFromMatchesNumber(phoneNumber, str)) {
            return false;
        }
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str);
        boolean z = false;
        if (shortNumberMetadataForRegion != null) {
            z = false;
            if (matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getCarrierSpecific())) {
                z = true;
            }
        }
        return z;
    }

    public boolean isEmergencyNumber(String str, String str2) {
        return matchesEmergencyNumberHelper(str, str2, false);
    }

    public boolean isPossibleShortNumber(Phonenumber.PhoneNumber phoneNumber) {
        List<String> regionCodesForCountryCode = getRegionCodesForCountryCode(phoneNumber.getCountryCode());
        int length = getNationalSignificantNumber(phoneNumber).length();
        for (String str : regionCodesForCountryCode) {
            Phonemetadata.PhoneMetadata shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str);
            if (shortNumberMetadataForRegion != null && shortNumberMetadataForRegion.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(length))) {
                return true;
            }
        }
        return false;
    }

    public boolean isPossibleShortNumberForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion;
        if (regionDialingFromMatchesNumber(phoneNumber, str) && (shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str)) != null) {
            return shortNumberMetadataForRegion.getGeneralDesc().getPossibleLengthList().contains(Integer.valueOf(getNationalSignificantNumber(phoneNumber).length()));
        }
        return false;
    }

    public boolean isValidShortNumber(Phonenumber.PhoneNumber phoneNumber) {
        List<String> regionCodesForCountryCode = getRegionCodesForCountryCode(phoneNumber.getCountryCode());
        String regionCodeForShortNumberFromRegionList = getRegionCodeForShortNumberFromRegionList(phoneNumber, regionCodesForCountryCode);
        if (regionCodesForCountryCode.size() <= 1 || regionCodeForShortNumberFromRegionList == null) {
            return isValidShortNumberForRegion(phoneNumber, regionCodeForShortNumberFromRegionList);
        }
        return true;
    }

    public boolean isValidShortNumberForRegion(Phonenumber.PhoneNumber phoneNumber, String str) {
        Phonemetadata.PhoneMetadata shortNumberMetadataForRegion;
        if (!regionDialingFromMatchesNumber(phoneNumber, str) || (shortNumberMetadataForRegion = MetadataManager.getShortNumberMetadataForRegion(str)) == null) {
            return false;
        }
        String nationalSignificantNumber = getNationalSignificantNumber(phoneNumber);
        if (!matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getGeneralDesc())) {
            return false;
        }
        return matchesPossibleNumberAndNationalNumber(nationalSignificantNumber, shortNumberMetadataForRegion.getShortCode());
    }
}
