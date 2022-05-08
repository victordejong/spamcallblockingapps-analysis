package com.android.contacts.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.util.Log;
import android.view.MenuItem;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusRedPointNotificationDualPanelHelper.class */
public class AsusRedPointNotificationDualPanelHelper {
    public static final int GROUP_ALLCONTACT = 1;
    public static final int GROUP_DIALER = 0;
    public static final String TAG = AsusRedPointNotificationDualPanelHelper.class.getSimpleName();
    private static AsusRedPointNotificationDualPanelHelper instance;
    private ArrayList<MenuItemElement> mDialerGroupList = new ArrayList<>();
    private ArrayList<MenuItemElement> mAllContactGroupList = new ArrayList<>();
    private ArrayList<AsusRedPointNotificationHelper.RedPointMenuItem> allRedPointMenuItem = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusRedPointNotificationDualPanelHelper$ID.class */
    public interface ID {
        public static final int ABOUT = 9;
        public static final int ALLCONTACTS_OPTION_MENU = 1;
        public static final int ASUSCALLERID_SETTING = 7;
        public static final int ASUSCONTACTS_SETTING = 2;
        public static final int CALLING_SCREEN_SETTING = 4;
        public static final int CALL_SETTING = 3;
        public static final int CONTACTS_SETTING = 6;
        public static final int CUSTOMIZED_SETTING = 12;
        public static final int DIALER_OPTION_MENU = 0;
        public static final int DIALPAD_SETTING = 5;
        public static final int ENCOURAGE_US = 10;
        public static final int MORE = 8;
        public static final int MORE_DIALER = 11;
        public static final int UPDATE_VERSION = 14;
        public static final int ZENUI_UPDATE = 15;
        public static final int ZEN_WATCH_SETTING = 13;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusRedPointNotificationDualPanelHelper$MenuItemElement.class */
    public class MenuItemElement {
        private int id;
        private MenuItem item;

        MenuItemElement(int i, MenuItem menuItem) {
            this.id = i;
            this.item = menuItem;
        }

        public int getId() {
            return this.id;
        }

        public MenuItem getItem() {
            return this.item;
        }
    }

    public AsusRedPointNotificationDualPanelHelper() {
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem.ID = 10;
        redPointMenuItem.NAME = "ENCOURAGE_US";
        redPointMenuItem.PREF_KEY = "ENCOURAGE_US_VERSION_DUALPANEL";
        redPointMenuItem.DEFAULT_VERSION = 0;
        redPointMenuItem.CURRENT_VERSION = 2;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem2 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem2.ID = 9;
        redPointMenuItem2.NAME = "ABOUT";
        redPointMenuItem2.PREF_KEY = "ABOUT_VERSION_DUALPANEL";
        redPointMenuItem2.DEFAULT_VERSION = 0;
        redPointMenuItem2.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem3 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem3.ID = 11;
        redPointMenuItem3.NAME = "MORE_DIALER";
        redPointMenuItem3.PREF_KEY = "MORE_DIALER_VERSION_DUALPANEL";
        redPointMenuItem3.DEFAULT_VERSION = 0;
        redPointMenuItem3.CURRENT_VERSION = 1;
        redPointMenuItem3.mChildGroup = new ArrayList<>();
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem4 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem4.ID = 8;
        redPointMenuItem4.NAME = "MORE";
        redPointMenuItem4.PREF_KEY = "MORE_VERSION_DUALPANEL";
        redPointMenuItem4.DEFAULT_VERSION = 0;
        redPointMenuItem4.CURRENT_VERSION = 1;
        redPointMenuItem4.mChildGroup = new ArrayList<>();
        redPointMenuItem4.mChildGroup.add(redPointMenuItem2);
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem5 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem5.ID = 5;
        redPointMenuItem5.NAME = "DIALPAD_SETTING";
        redPointMenuItem5.PREF_KEY = "DIALPAD_SETTING_VERSION_DUALPANEL";
        redPointMenuItem5.DEFAULT_VERSION = 0;
        redPointMenuItem5.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem6 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem6.ID = 3;
        redPointMenuItem6.NAME = "CALL_SETTING";
        redPointMenuItem6.PREF_KEY = "CALL_SETTING_VERSION_DUALPANEL";
        redPointMenuItem6.DEFAULT_VERSION = 0;
        redPointMenuItem6.CURRENT_VERSION = 0;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem7 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem7.ID = 4;
        redPointMenuItem7.NAME = "CALLING_SCREEN_SETTING";
        redPointMenuItem7.PREF_KEY = "CALLING_SCREEN_SETTING_VERSION_DUALPANEL";
        redPointMenuItem7.DEFAULT_VERSION = 0;
        redPointMenuItem7.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem8 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem8.ID = 6;
        redPointMenuItem8.NAME = "CONTACTS_SETTING";
        redPointMenuItem8.PREF_KEY = "CONTACTS_SETTING_VERSION_DUALPANEL";
        redPointMenuItem8.DEFAULT_VERSION = 0;
        redPointMenuItem8.CURRENT_VERSION = 0;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem9 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem9.ID = 7;
        redPointMenuItem9.NAME = "ASUSCALLERID_SETTING";
        redPointMenuItem9.PREF_KEY = "ASUSCALLERID_SETTING_VERSION_DUALPANEL";
        redPointMenuItem9.DEFAULT_VERSION = 0;
        redPointMenuItem9.CURRENT_VERSION = 0;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem10 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem10.ID = 13;
        redPointMenuItem10.NAME = "ZEN_WATCH_SETTING";
        redPointMenuItem10.PREF_KEY = "ZEN_WATCH_SETTING_VERSION";
        redPointMenuItem10.DEFAULT_VERSION = 0;
        redPointMenuItem10.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem11 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem11.ID = 12;
        redPointMenuItem11.NAME = "CUSTOMIZED_SETTING";
        redPointMenuItem11.PREF_KEY = "CUSTOMIZED_SETTING_VERSION";
        redPointMenuItem11.DEFAULT_VERSION = 0;
        redPointMenuItem11.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem12 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem12.ID = 14;
        redPointMenuItem12.NAME = "UPDATE_VERSION";
        redPointMenuItem12.PREF_KEY = "UPDATE_VERSION_VERSION";
        redPointMenuItem12.DEFAULT_VERSION = 0;
        redPointMenuItem12.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem13 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem13.ID = 15;
        redPointMenuItem13.NAME = "ZENUI_UPDATE";
        redPointMenuItem13.PREF_KEY = "ZENUI_UPDATE_VERSION";
        redPointMenuItem13.DEFAULT_VERSION = 0;
        redPointMenuItem13.CURRENT_VERSION = 1;
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem14 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem14.ID = 2;
        redPointMenuItem14.NAME = "ASUSCONTACTS_SETTING";
        redPointMenuItem14.PREF_KEY = "ASUSCONTACTS_SETTING_VERSION_DUALPANEL";
        redPointMenuItem14.DEFAULT_VERSION = 0;
        redPointMenuItem14.CURRENT_VERSION = 2;
        redPointMenuItem14.mChildGroup = new ArrayList<>();
        redPointMenuItem14.mChildGroup.add(redPointMenuItem6);
        redPointMenuItem14.mChildGroup.add(redPointMenuItem7);
        redPointMenuItem14.mChildGroup.add(redPointMenuItem5);
        redPointMenuItem14.mChildGroup.add(redPointMenuItem8);
        redPointMenuItem14.mChildGroup.add(redPointMenuItem9);
        redPointMenuItem14.mChildGroup.add(redPointMenuItem11);
        redPointMenuItem14.mChildGroup.add(redPointMenuItem10);
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem15 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem15.ID = 1;
        redPointMenuItem15.NAME = "ALLCONTACTS_OPTION_MENU";
        redPointMenuItem15.PREF_KEY = "ALLCONTACTS_OPTION_MENU_VERSION_DUALPANEL";
        redPointMenuItem15.DEFAULT_VERSION = 0;
        redPointMenuItem15.CURRENT_VERSION = 0;
        redPointMenuItem15.mChildGroup = new ArrayList<>();
        redPointMenuItem15.mChildGroup.add(redPointMenuItem14);
        redPointMenuItem15.mChildGroup.add(redPointMenuItem4);
        redPointMenuItem15.mChildGroup.add(redPointMenuItem);
        redPointMenuItem15.mChildGroup.add(redPointMenuItem12);
        redPointMenuItem15.mChildGroup.add(redPointMenuItem13);
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem16 = new AsusRedPointNotificationHelper.RedPointMenuItem();
        redPointMenuItem16.ID = 0;
        redPointMenuItem16.NAME = "DIALER_OPTION_MENU";
        redPointMenuItem16.PREF_KEY = "DIALER_OPTION_MENU_VERSION_DUALPANEL";
        redPointMenuItem16.DEFAULT_VERSION = 0;
        redPointMenuItem16.CURRENT_VERSION = 0;
        redPointMenuItem16.mChildGroup = new ArrayList<>();
        redPointMenuItem16.mChildGroup.add(redPointMenuItem14);
        redPointMenuItem16.mChildGroup.add(redPointMenuItem3);
        redPointMenuItem16.mChildGroup.add(redPointMenuItem);
        redPointMenuItem16.mChildGroup.add(redPointMenuItem12);
        this.allRedPointMenuItem.add(redPointMenuItem16);
        this.allRedPointMenuItem.add(redPointMenuItem15);
        this.allRedPointMenuItem.add(redPointMenuItem14);
        this.allRedPointMenuItem.add(redPointMenuItem6);
        this.allRedPointMenuItem.add(redPointMenuItem7);
        this.allRedPointMenuItem.add(redPointMenuItem5);
        this.allRedPointMenuItem.add(redPointMenuItem8);
        this.allRedPointMenuItem.add(redPointMenuItem9);
        this.allRedPointMenuItem.add(redPointMenuItem4);
        this.allRedPointMenuItem.add(redPointMenuItem2);
        this.allRedPointMenuItem.add(redPointMenuItem);
        this.allRedPointMenuItem.add(redPointMenuItem3);
        this.allRedPointMenuItem.add(redPointMenuItem11);
        this.allRedPointMenuItem.add(redPointMenuItem10);
        this.allRedPointMenuItem.add(redPointMenuItem12);
        this.allRedPointMenuItem.add(redPointMenuItem13);
    }

    public static AsusRedPointNotificationDualPanelHelper getInstance() {
        if (instance == null) {
            instance = new AsusRedPointNotificationDualPanelHelper();
        }
        return instance;
    }

    private void setSpannableStringWithRedPointAppend(Context context, MenuItem menuItem, float f) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(new StringBuilder(menuItem.getTitle().toString().trim()));
        spannableStringBuilder.append((CharSequence) "    ");
        Drawable drawable = context.getDrawable(2131165483);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableStringBuilder.setSpan(new ImageSpan(drawable, 1), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 17);
        menuItem.setTitle(spannableStringBuilder);
    }

    public void addMenuItem(int i, int i2, MenuItem menuItem) {
        if (menuItem != null && menuItem.isVisible()) {
            switch (i) {
                case 0:
                    if (this.mDialerGroupList != null) {
                        this.mDialerGroupList.add(new MenuItemElement(i2, menuItem));
                        return;
                    }
                    return;
                case 1:
                    if (this.mAllContactGroupList != null) {
                        this.mAllContactGroupList.add(new MenuItemElement(i2, menuItem));
                        return;
                    }
                    return;
                default:
                    Log.e(TAG, "addMenuItem error: groupId not supported.");
                    return;
            }
        }
    }

    public void addMenuItem(int i, MenuItem menuItem) {
        addMenuItem(i, -1, menuItem);
    }

    public void clearMenuItem(int i) {
        switch (i) {
            case 0:
                if (this.mDialerGroupList != null) {
                    this.mDialerGroupList.clear();
                    return;
                }
                return;
            case 1:
                if (this.mAllContactGroupList != null) {
                    this.mAllContactGroupList.clear();
                    return;
                }
                return;
            default:
                Log.e(TAG, "clearMenuItem error: groupId not supported.");
                return;
        }
    }

    public void disableRedPoint(Context context, int i) {
        AsusRedPointNotificationHelper.RedPointMenuItem redPointMenuItem = this.allRedPointMenuItem.get(i);
        if (i == 14) {
            try {
                SharedPreferences.Editor edit = context.getSharedPreferences(MainDialtactsActivity.KEY_PREF_ZENUI_UPDATE, 0).edit();
                edit.putBoolean(MainDialtactsActivity.KEY_NEED_UPDATE_APP, false);
                edit.commit();
            } catch (Exception e) {
                Log.e(TAG, "disableRedPoint failed. Exception:" + e.toString());
                return;
            }
        }
        SharedPreferences.Editor edit2 = context.getSharedPreferences("newFeatureData", 0).edit();
        edit2.putInt(redPointMenuItem.PREF_KEY, redPointMenuItem.CURRENT_VERSION);
        edit2.commit();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e1, code lost:
        if (r14 != false) goto L_0x00e4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isNeedShowRedPoint(android.content.Context r6, int r7) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.AsusRedPointNotificationDualPanelHelper.isNeedShowRedPoint(android.content.Context, int):boolean");
    }

    public void spanningMenuItemList(Context context, int i) {
        new Paint();
        try {
            switch (i) {
                case 0:
                    Iterator<MenuItemElement> it = this.mDialerGroupList.iterator();
                    while (it.hasNext()) {
                        MenuItemElement next = it.next();
                        if (next.getId() >= 0) {
                            if (isNeedShowRedPoint(context, next.getId())) {
                                setSpannableStringWithRedPointAppend(context, next.getItem(), Float.MIN_VALUE);
                            } else {
                                next.getItem().setTitle(next.getItem().getTitle().toString().trim());
                            }
                        }
                    }
                    return;
                case 1:
                    Iterator<MenuItemElement> it2 = this.mAllContactGroupList.iterator();
                    while (it2.hasNext()) {
                        MenuItemElement next2 = it2.next();
                        if (next2.getId() >= 0) {
                            if (isNeedShowRedPoint(context, next2.getId())) {
                                setSpannableStringWithRedPointAppend(context, next2.getItem(), Float.MIN_VALUE);
                            } else {
                                next2.getItem().setTitle(next2.getItem().getTitle().toString().trim());
                            }
                        }
                    }
                    return;
                default:
                    Log.e(TAG, "spanningMenuItemList error: groupId not supported.");
                    return;
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to spanningMenuItemList due to :" + e.toString());
        }
    }
}
