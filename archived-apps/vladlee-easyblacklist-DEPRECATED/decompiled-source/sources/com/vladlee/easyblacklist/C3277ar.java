package com.vladlee.easyblacklist;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.core.app.C0612j;
import com.vladlee.easyblacklist.C3318by;
/* renamed from: com.vladlee.easyblacklist.ar */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ar.class */
final class C3277ar extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ BlockService f19324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3277ar(BlockService blockService, Handler handler) {
        super(handler);
        this.f19324a = blockService;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        String str;
        super.onChange(z);
        if (z) {
            return;
        }
        if (!C3369do.m127a(this.f19324a) || !CheckPermissionsActivity.m346c(this.f19324a)) {
            try {
                Cursor query = this.f19324a.getContentResolver().query(C3318by.C3322d.f19428a, new String[]{"address"}, null, null, "date DESC LIMIT 1");
                if (query != null) {
                    str = query.moveToNext() ? query.getString(query.getColumnIndex("address")) : "";
                    query.close();
                } else {
                    str = "";
                }
                Cursor query2 = this.f19324a.getContentResolver().query(C3318by.C3322d.f19428a, new String[]{"body"}, null, null, "date DESC LIMIT 1");
                String str2 = "";
                if (query2 != null) {
                    str2 = "";
                    if (query2.moveToNext()) {
                        str2 = query2.getString(query2.getColumnIndex("body"));
                    }
                    query2.close();
                }
                if (str != null && C3275aq.m266a(this.f19324a, str, str2)) {
                    BlockService blockService = this.f19324a;
                    if (Build.VERSION.SDK_INT >= 26) {
                        Intent intent = new Intent(blockService, EasyBlacklistActivity.class);
                        Bundle bundle = new Bundle();
                        bundle.putBoolean(C3356db.f19478g, true);
                        intent.putExtras(bundle);
                        intent.setFlags(67108864);
                        intent.putExtra("notification", true);
                        ((NotificationManager) blockService.getSystemService("notification")).notify(10004, new C0612j.C0615c(blockService, (byte) 0).m8730a(2131230898).m8724a((CharSequence) blockService.getString(2131624196)).m8721b(blockService.getString(2131624195)).m8727a(PendingIntent.getActivity(blockService, (int) System.currentTimeMillis(), intent, 0)).m8716e());
                    }
                }
            } catch (SecurityException e) {
            }
        }
    }
}
