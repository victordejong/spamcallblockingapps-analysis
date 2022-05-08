package com.privacystar.core.p011ui;

import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.BaseContract;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u0018\n\u0002\b\u0003\n\u0002\u0010 \n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010)\u001a\b\u0012\u0004\u0012\u00020\b0*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020,2\u0006\u0010/\u001a\u00020,H\u0016J\u0010\u00100\u001a\u00020,2\u0006\u00101\u001a\u00020\bH\u0016J\u0018\u00102\u001a\u0002032\u0006\u00101\u001a\u00020\b2\u0006\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u00020,H\u0016J\b\u00107\u001a\u00020,H\u0016J\b\u00108\u001a\u00020,H\u0016J\b\u00109\u001a\u00020,H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\nR\u0014\u0010\u0013\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\nR\u0014\u0010\u0015\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\nR\u0014\u0010\u0019\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\nR\u0014\u0010\u001b\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\nR\u0014\u0010\u001d\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\nR\u0014\u0010\u001f\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b \u0010\nR\u0014\u0010!\u001a\u00020\bX\u0086D¢\u0006\b\n��\u001a\u0004\b\"\u0010\nR\u0011\u0010#\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b$\u0010\u0006R\u0011\u0010%\u001a\u00020&¢\u0006\b\n��\u001a\u0004\b'\u0010(¨\u0006:"}, m254d2 = {"Lcom/privacystar/core/ui/BaseManagerImpl;", "Lcom/privacystar/core/ui/BaseContract$Manager;", "()V", "NAV_DRAWER_ICONS", "", "getNAV_DRAWER_ICONS", "()[I", "NAV_DRAWER_ITEM_ABOUT", "", "getNAV_DRAWER_ITEM_ABOUT", "()I", "NAV_DRAWER_ITEM_APPROVED_LIST", "getNAV_DRAWER_ITEM_APPROVED_LIST", "NAV_DRAWER_ITEM_BLOCK_LIST", "getNAV_DRAWER_ITEM_BLOCK_LIST", "NAV_DRAWER_ITEM_DASHBOARD", "getNAV_DRAWER_ITEM_DASHBOARD", "NAV_DRAWER_ITEM_DEBUG", "getNAV_DRAWER_ITEM_DEBUG", "NAV_DRAWER_ITEM_HOME", "getNAV_DRAWER_ITEM_HOME", "NAV_DRAWER_ITEM_INBOX", "getNAV_DRAWER_ITEM_INBOX", "NAV_DRAWER_ITEM_INVALID", "getNAV_DRAWER_ITEM_INVALID", "NAV_DRAWER_ITEM_SEPARATOR", "getNAV_DRAWER_ITEM_SEPARATOR", "NAV_DRAWER_ITEM_SETTINGS", "getNAV_DRAWER_ITEM_SETTINGS", "NAV_DRAWER_ITEM_SHARE", "getNAV_DRAWER_ITEM_SHARE", "NAV_DRAWER_ITEM_SUBSCRIPTION", "getNAV_DRAWER_ITEM_SUBSCRIPTION", "NAV_DRAWER_ITEM_WALKTHROUGH", "getNAV_DRAWER_ITEM_WALKTHROUGH", "NAV_DRAWER_TITLES", "getNAV_DRAWER_TITLES", "NAV_DRAWER_UNREAD", "", "getNAV_DRAWER_UNREAD", "()[Z", "getNavigationDrawerItems", "", "isDevBuild", "", "showFullUX", "showSubscription", "isApprovedListEnabled", "isItemDeveloped", "itemId", "navDrawerItemClicked", "", "functionality", "Lcom/privacystar/core/ui/BaseDrawerItemFunctionality;", "shouldConsiderShowingFullUX", "shouldDisplayUpgrade", "shouldShowAppVersion", "shouldShowSubscriptionStatus", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.BaseManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseManagerImpl.class */
public final class BaseManagerImpl implements BaseContract.Manager {
    private static final int NAV_DRAWER_ITEM_ABOUT = 6;
    private static final int NAV_DRAWER_ITEM_APPROVED_LIST = 8;
    private static final int NAV_DRAWER_ITEM_BLOCK_LIST = 2;
    private static final int NAV_DRAWER_ITEM_DASHBOARD = 9;
    private static final int NAV_DRAWER_ITEM_DEBUG = 10;
    private static final int NAV_DRAWER_ITEM_HOME = 0;
    private static final int NAV_DRAWER_ITEM_INBOX = 5;
    private static final int NAV_DRAWER_ITEM_INVALID = -1;
    private static final int NAV_DRAWER_ITEM_SEPARATOR = -2;
    private static final int NAV_DRAWER_ITEM_SETTINGS = 3;
    private static final int NAV_DRAWER_ITEM_SHARE = 4;
    private static final int NAV_DRAWER_ITEM_SUBSCRIPTION = 1;
    private static final int NAV_DRAWER_ITEM_WALKTHROUGH = 7;
    public static final BaseManagerImpl INSTANCE = new BaseManagerImpl();
    @NotNull
    private static final int[] NAV_DRAWER_ICONS = {C1566R.C1568drawable.ic_nav_home, C1566R.C1568drawable.ic_nav_upgrade, C1566R.C1568drawable.ic_nav_block_ghostbuster, C1566R.C1568drawable.ic_nav_settings, C1566R.C1568drawable.ic_nav_share, C1566R.C1568drawable.ic_nav_inbox, C1566R.C1568drawable.ic_nav_about, C1566R.C1568drawable.ic_nav_walkthrough, C1566R.C1568drawable.ic_nav_approved_list, C1566R.C1568drawable.ic_nav_dashboard, C1566R.C1568drawable.ic_nav_debug};
    @NotNull
    private static final int[] NAV_DRAWER_TITLES = {C1566R.string.nav_drawer_item_home, C1566R.string.nav_drawer_item_subscription, C1566R.string.nav_drawer_item_block_list, C1566R.string.nav_drawer_item_settings, C1566R.string.nav_drawer_item_share, C1566R.string.nav_drawer_item_inbox, C1566R.string.nav_drawer_item_about, C1566R.string.nav_drawer_item_walkthrough, C1566R.string.nav_drawer_item_approved_list, C1566R.string.nav_drawer_item_dashboard, C1566R.string.nav_drawer_item_debug};
    @NotNull
    private static final boolean[] NAV_DRAWER_UNREAD = {false, false, false, false, false, true, false, false, false, false, false};

    private BaseManagerImpl() {
    }

    @NotNull
    public final int[] getNAV_DRAWER_ICONS() {
        return NAV_DRAWER_ICONS;
    }

    public final int getNAV_DRAWER_ITEM_ABOUT() {
        return NAV_DRAWER_ITEM_ABOUT;
    }

    public final int getNAV_DRAWER_ITEM_APPROVED_LIST() {
        return NAV_DRAWER_ITEM_APPROVED_LIST;
    }

    public final int getNAV_DRAWER_ITEM_BLOCK_LIST() {
        return NAV_DRAWER_ITEM_BLOCK_LIST;
    }

    public final int getNAV_DRAWER_ITEM_DASHBOARD() {
        return NAV_DRAWER_ITEM_DASHBOARD;
    }

    public final int getNAV_DRAWER_ITEM_DEBUG() {
        return NAV_DRAWER_ITEM_DEBUG;
    }

    public final int getNAV_DRAWER_ITEM_HOME() {
        return NAV_DRAWER_ITEM_HOME;
    }

    public final int getNAV_DRAWER_ITEM_INBOX() {
        return NAV_DRAWER_ITEM_INBOX;
    }

    public final int getNAV_DRAWER_ITEM_INVALID() {
        return NAV_DRAWER_ITEM_INVALID;
    }

    public final int getNAV_DRAWER_ITEM_SEPARATOR() {
        return NAV_DRAWER_ITEM_SEPARATOR;
    }

    public final int getNAV_DRAWER_ITEM_SETTINGS() {
        return NAV_DRAWER_ITEM_SETTINGS;
    }

    public final int getNAV_DRAWER_ITEM_SHARE() {
        return NAV_DRAWER_ITEM_SHARE;
    }

    public final int getNAV_DRAWER_ITEM_SUBSCRIPTION() {
        return NAV_DRAWER_ITEM_SUBSCRIPTION;
    }

    public final int getNAV_DRAWER_ITEM_WALKTHROUGH() {
        return NAV_DRAWER_ITEM_WALKTHROUGH;
    }

    @NotNull
    public final int[] getNAV_DRAWER_TITLES() {
        return NAV_DRAWER_TITLES;
    }

    @NotNull
    public final boolean[] getNAV_DRAWER_UNREAD() {
        return NAV_DRAWER_UNREAD;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    @NotNull
    public List<Integer> getNavigationDrawerItems(boolean z, boolean z2, boolean z3, boolean z4) {
        ArrayList arrayList = new ArrayList();
        if (z3) {
            arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_SUBSCRIPTION));
        }
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_HOME));
        if (z2) {
            arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_BLOCK_LIST));
        }
        if (z4 && z2) {
            arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_APPROVED_LIST));
        }
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_SETTINGS));
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_SHARE));
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_INBOX));
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_SEPARATOR));
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_ABOUT));
        if (z2) {
            arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_WALKTHROUGH));
        }
        arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_SEPARATOR));
        if (z) {
            arrayList.add(Integer.valueOf(NAV_DRAWER_ITEM_DEBUG));
        }
        return arrayList;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    public boolean isItemDeveloped(int i) {
        boolean z = true;
        if (!(i == NAV_DRAWER_ITEM_HOME || i == NAV_DRAWER_ITEM_SUBSCRIPTION || i == NAV_DRAWER_ITEM_BLOCK_LIST || i == NAV_DRAWER_ITEM_APPROVED_LIST || i == NAV_DRAWER_ITEM_SETTINGS || i == NAV_DRAWER_ITEM_SHARE || i == NAV_DRAWER_ITEM_INBOX || i == NAV_DRAWER_ITEM_ABOUT || i == NAV_DRAWER_ITEM_WALKTHROUGH || i == NAV_DRAWER_ITEM_DASHBOARD || i == NAV_DRAWER_ITEM_DEBUG)) {
            z = false;
        }
        return z;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    public void navDrawerItemClicked(int i, @NotNull BaseDrawerItemFunctionality functionality) {
        Intrinsics.checkParameterIsNotNull(functionality, "functionality");
        if (i == NAV_DRAWER_ITEM_HOME) {
            functionality.launchHome();
        } else if (i == NAV_DRAWER_ITEM_SUBSCRIPTION) {
            functionality.launchSubscription();
        } else if (i == NAV_DRAWER_ITEM_BLOCK_LIST) {
            functionality.launchBlockList();
        } else if (i == NAV_DRAWER_ITEM_APPROVED_LIST) {
            functionality.launchApprovedList();
        } else if (i == NAV_DRAWER_ITEM_SETTINGS) {
            functionality.launchSettings();
        } else if (i == NAV_DRAWER_ITEM_SHARE) {
            functionality.launchShare();
        } else if (i == NAV_DRAWER_ITEM_INBOX) {
            functionality.launchInbox();
        } else if (i == NAV_DRAWER_ITEM_ABOUT) {
            functionality.launchAbout();
        } else if (i == NAV_DRAWER_ITEM_WALKTHROUGH) {
            functionality.launchWalkthrough();
        } else if (i == NAV_DRAWER_ITEM_DASHBOARD) {
            functionality.launchDashboard();
        } else if (i == NAV_DRAWER_ITEM_DEBUG) {
            functionality.launchDebug();
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    public boolean shouldConsiderShowingFullUX() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    public boolean shouldDisplayUpgrade() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    public boolean shouldShowAppVersion() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.Manager
    public boolean shouldShowSubscriptionStatus() {
        return true;
    }
}
