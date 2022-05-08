package com.privacystar.core.p011ui.util;

import android.support.p004v7.app.AppCompatActivity;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.util.NumbersUtil;
import io.realm.Realm;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.util.BlockApproveNumberUtil */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/BlockApproveNumberUtil.class */
public class BlockApproveNumberUtil {

    /* renamed from: com.privacystar.core.ui.util.BlockApproveNumberUtil$BlockApproveNumberStatus */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/BlockApproveNumberUtil$BlockApproveNumberStatus.class */
    public enum BlockApproveNumberStatus {
        FEATURE_NOT_AVAILABLE,
        INVALID_PHONE_NUMBER,
        ALREADY_APPROVED,
        ALREADY_BLOCKED,
        SUCCESSFULLY_ADDED
    }

    public static BlockApproveNumberStatus approveNumber(AppCompatActivity appCompatActivity, Realm realm, String str) {
        if (!LicenseFeatureRealm.isFeatureAvailable(realm, Feature.APPROVE_LIST)) {
            return BlockApproveNumberStatus.FEATURE_NOT_AVAILABLE;
        }
        if (!NumbersUtil.isValidPhoneNumber(str) && appCompatActivity != null) {
            Timber.m37d("Tried to approve invalid number [%s].", str);
            return BlockApproveNumberStatus.INVALID_PHONE_NUMBER;
        } else if (BlockListRealm.isCallerBlocked(realm, str)) {
            Timber.m37d("Can't add a blocked number to approve list.", new Object[0]);
            return BlockApproveNumberStatus.ALREADY_BLOCKED;
        } else {
            Timber.m37d("Approving the number: %s", str);
            return ApprovedListRealm.setApproved(realm, str, true) ? BlockApproveNumberStatus.SUCCESSFULLY_ADDED : BlockApproveNumberStatus.ALREADY_APPROVED;
        }
    }

    public static BlockApproveNumberStatus blockNumber(AppCompatActivity appCompatActivity, Realm realm, String str) {
        if (!LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING)) {
            return BlockApproveNumberStatus.FEATURE_NOT_AVAILABLE;
        }
        if (!NumbersUtil.isValidPhoneNumber(str) && appCompatActivity != null) {
            Timber.m37d("Tried to block invalid number [%s].", str);
            return BlockApproveNumberStatus.INVALID_PHONE_NUMBER;
        } else if (ApprovedListRealm.isCallerApproved(realm, str)) {
            Timber.m37d("Can't add an approved number to block list.", new Object[0]);
            return BlockApproveNumberStatus.ALREADY_APPROVED;
        } else {
            Timber.m37d("Blocking the number: %s", str);
            if (BlockListRealm.isCallerBlocked(realm, str)) {
                return BlockApproveNumberStatus.ALREADY_BLOCKED;
            }
            BlockListRealm.addToOrUpdateBlockList(realm, str);
            return BlockApproveNumberStatus.SUCCESSFULLY_ADDED;
        }
    }
}
