package me.leolin.shortcutbadger.impl;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import me.leolin.shortcutbadger.Badger;
import me.leolin.shortcutbadger.ShortcutBadgeException;
/* loaded from: classes3-dex2jar.jar:me/leolin/shortcutbadger/impl/HuaweiHomeBadger.class */
public class HuaweiHomeBadger implements Badger {
    @Override // me.leolin.shortcutbadger.Badger
    public void executeBadge(Context context, ComponentName componentName, int i) throws ShortcutBadgeException {
        Bundle bundle = new Bundle();
        bundle.putString(ApexHomeBadger.PACKAGENAME, context.getPackageName());
        bundle.putString(ApexHomeBadger.CLASS, componentName.getClassName());
        bundle.putInt("badgenumber", i);
        context.getContentResolver().call(Uri.parse("content://com.huawei.android.launcher.settings/badge/"), "change_badge", (String) null, bundle);
    }

    @Override // me.leolin.shortcutbadger.Badger
    public List<String> getSupportLaunchers() {
        return Arrays.asList("com.huawei.android.launcher");
    }
}
