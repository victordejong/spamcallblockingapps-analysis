package com.android.vcard;

import android.accounts.Account;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntryConstructor.class */
public class VCardEntryConstructor implements VCardInterpreter {
    private static String LOG_TAG = "vCard";
    private final Account mAccount;
    private VCardEntry mCurrentEntry;
    private final List<VCardEntryHandler> mEntryHandlers;
    private final List<VCardEntry> mEntryStack;
    private final int mVCardType;

    public VCardEntryConstructor() {
        this(VCardConfig.VCARD_TYPE_V21_GENERIC, null, null);
    }

    public VCardEntryConstructor(int i) {
        this(i, null, null);
    }

    public VCardEntryConstructor(int i, Account account) {
        this(i, account, null);
    }

    @Deprecated
    public VCardEntryConstructor(int i, Account account, String str) {
        this.mEntryStack = new ArrayList();
        this.mEntryHandlers = new ArrayList();
        this.mVCardType = i;
        this.mAccount = account;
    }

    public void addEntryHandler(VCardEntryHandler vCardEntryHandler) {
        this.mEntryHandlers.add(vCardEntryHandler);
    }

    public void clear() {
        this.mCurrentEntry = null;
        this.mEntryStack.clear();
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryEnded() {
        this.mCurrentEntry.consolidateFields();
        for (VCardEntryHandler vCardEntryHandler : this.mEntryHandlers) {
            vCardEntryHandler.onEntryCreated(this.mCurrentEntry);
        }
        int size = this.mEntryStack.size();
        if (size > 1) {
            VCardEntry vCardEntry = this.mEntryStack.get(size - 2);
            vCardEntry.addChild(this.mCurrentEntry);
            this.mCurrentEntry = vCardEntry;
        } else {
            this.mCurrentEntry = null;
        }
        this.mEntryStack.remove(size - 1);
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryStarted() {
        this.mCurrentEntry = new VCardEntry(this.mVCardType, this.mAccount);
        this.mEntryStack.add(this.mCurrentEntry);
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onPropertyCreated(VCardProperty vCardProperty) {
        this.mCurrentEntry.addProperty(vCardProperty);
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardEnded() {
        for (VCardEntryHandler vCardEntryHandler : this.mEntryHandlers) {
            vCardEntryHandler.onEnd();
        }
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardStarted() {
        for (VCardEntryHandler vCardEntryHandler : this.mEntryHandlers) {
            vCardEntryHandler.onStart();
        }
    }
}
