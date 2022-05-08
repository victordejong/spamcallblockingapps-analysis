package p459j.p460a.p474c0.p491g;

import android.app.Activity;
import android.app.Fragment;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.TaskStackBuilder;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.action.MarkAsReadAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.ClassZeroActivity;
import gogolook.callgogolook2.messaging.p078ui.SmsStorageLowWarningActivity;
import gogolook.callgogolook2.messaging.p078ui.VCardDetailActivity;
import gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentChooserActivity;
import gogolook.callgogolook2.messaging.p078ui.conversation.ConversationActivity;
import gogolook.callgogolook2.messaging.p078ui.conversation.LaunchConversationActivity;
import gogolook.callgogolook2.messaging.receiver.SmsActionsEntrypointReceiver;
import gogolook.callgogolook2.photo.SmsPhotoViewActivity;
import java.util.ArrayList;
import p459j.p460a.p474c0.p475c.C11525e;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14300r;
/* renamed from: j.a.c0.g.x */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/x.class */
public class C12127x extends AbstractC12126w {
    /* renamed from: a */
    public static PendingIntent m7077a(Context context, Intent intent, int i) {
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addNextIntentWithParentStack(intent);
        return create.getPendingIntent(i, 134217728);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public PendingIntent mo7089a(Context context) {
        return C14217x3.m2187a(context, MainActivity.m27866a(context, "smslog", "others"), m7070b(context), 0);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public PendingIntent mo7072a(Context context, String str, String str2, boolean z, int i, int i2) {
        Intent intent = new Intent(context, SmsActionsEntrypointReceiver.class);
        intent.setAction("android.intent.action.SENDTO");
        intent.setData(MessagingContentProvider.m27774b(str));
        intent.putExtra("conversation_id", str);
        intent.putExtra("self_id", str2);
        intent.putExtra("requires_mms", z);
        intent.setFlags(268435456);
        intent.setPackage(context.getPackageName());
        return PendingIntent.getBroadcast(context, i, intent, 134217728);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public Intent mo7088a(Context context, int i) {
        Intent intent = new Intent(context, LaunchConversationActivity.class);
        intent.setFlags(1140850688);
        intent.putExtra("filter_type", i);
        return intent;
    }

    /* renamed from: a */
    public final Intent m7085a(Context context, int i, String str, int i2, Uri uri, String str2, MessageData messageData, boolean z) {
        Intent intent = new Intent(context, ConversationActivity.class);
        intent.putExtra("source", i);
        intent.putExtra("filter_type", i2);
        intent.setFlags(67108864);
        if (str != null) {
            intent.putExtra("conversation_id", str);
        }
        if (uri != null) {
            intent.setData(uri);
        }
        if (messageData != null) {
            intent.putExtra("draft_data", messageData);
            ClipData clipData = null;
            for (MessagePartData messagePartData : messageData.m27643C()) {
                if (messagePartData.m27562v()) {
                    Uri q = messagePartData.m27567q();
                    if (clipData == null) {
                        clipData = ClipData.newRawUri("Attachments", q);
                    } else {
                        clipData.addItem(new ClipData.Item(q));
                    }
                }
            }
            if (clipData != null) {
                intent.setClipData(clipData);
                intent.addFlags(1);
            }
        }
        if (z) {
            intent.putExtra("with_custom_transition", true);
        }
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("highlight_key", str2);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        return intent;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public Intent mo7084a(Context context, int i, String str, int i2, String str2) {
        MarkAsReadAction.m27697b(str, i2);
        return m7085a(context, i, (String) null, i2, Uri.parse("smsto:" + Uri.encode(str)), (String) null, TextUtils.isEmpty(str2) ? null : MessageData.m27618a((String) null, (String) null, str2), false);
    }

    /* renamed from: a */
    public final Intent m7082a(Context context, int i, String str, int i2, String str2, MessageData messageData, boolean z) {
        return m7085a(context, i, str, i2, (Uri) null, str2, messageData, z);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public Intent mo7081a(Context context, int i, String str, MessageData messageData, int i2) {
        return m7082a(context, i, str, i2, null, messageData, false);
    }

    /* renamed from: a */
    public Intent m7071a(String str) {
        return new Intent("android.intent.action.VIEW", Uri.parse(str));
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7093a(Activity activity, Uri uri, Rect rect, Uri uri2, boolean z) {
        if (uri != null && uri2 != null) {
            activity.startActivity(SmsPhotoViewActivity.m26430a(activity, uri2, uri, C11525e.AbstractC11526a.f25747a, "Fake"));
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7092a(Activity activity, String str, int i) {
        Intent intent = new Intent(activity, AttachmentChooserActivity.class);
        intent.putExtra("conversation_id", str);
        activity.startActivityForResult(intent, i);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7091a(Activity activity, ArrayList<String> arrayList, Uri uri, Rect rect, boolean z) {
        if (uri != null && arrayList != null && !arrayList.isEmpty()) {
            activity.startActivity(SmsPhotoViewActivity.m26429a(activity, arrayList, uri));
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7090a(Fragment fragment) {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.putExtra("android.intent.extra.MIME_TYPES", MessagePartData.f11227j);
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("image/*");
        fragment.startActivityForResult(intent, 1400);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7087a(Context context, int i, MessageData messageData) {
        C12212s0.m6794a(context, 1);
        context.startActivity(m7082a(context, i, null, C12810o.m5238g(), null, messageData, false));
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7086a(Context context, int i, MessageData messageData, String str) {
        C12212s0.m6794a(context, 1);
        MarkAsReadAction.m27697b(str, C12810o.m5238g());
        Intent a = m7082a(context, i, null, C12810o.m5238g(), null, messageData, false);
        a.putExtra("receiver_number", str);
        C14217x3.m2156c(context, a);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7083a(Context context, int i, String str, int i2, String str2, MessageData messageData, Bundle bundle, boolean z) {
        C12212s0.m6794a(context, 1);
        boolean z2 = true;
        if (z) {
            z2 = bundle != null;
        }
        C12151d.m6999b(z2);
        MarkAsReadAction.m27699a(str, i2);
        context.startActivity(m7082a(context, i, str, i2, str2, messageData, z), bundle);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7080a(Context context, int i, String str, String str2, int i2) {
        MarkAsReadAction.m27699a(str, C12810o.m5238g());
        boolean isEmpty = TextUtils.isEmpty(str2);
        MessageData messageData = null;
        if (!isEmpty) {
            messageData = MessageData.m27618a(str, (String) null, str2);
        }
        TaskStackBuilder.create(context).addNextIntentWithParentStack(m7082a(context, i, str, i2, null, messageData, false)).startActivities();
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7079a(Context context, ContentValues contentValues) {
        Intent flags = new Intent(context, ClassZeroActivity.class).putExtra("message_values", contentValues).setFlags(402653184);
        C14300r.m1653a("ClassZeroActivity", flags);
        context.startActivity(flags);
    }

    /* renamed from: a */
    public final void m7078a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            C12153d0.m6982d("MessagingApp", "Couldn't find activity:", e);
            C12212s0.m6796a((int) R$string.activity_not_found_message);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7076a(Context context, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(1);
        intent.putExtra("SingleItemOnly", true);
        intent.setDataAndType(uri, "video/*");
        m7078a(context, intent);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7075a(Context context, String str) {
        m7078a(context, m7071a(str));
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7074a(Context context, String str, Point point) {
        C12212s0.m6794a(context, 2);
        Intent a = C14217x3.m2185a(context, str);
        Bundle bundle = new Bundle();
        bundle.putParcelable("touchPoint", point);
        a.putExtra("android.telecom.extra.OUTGOING_CALL_EXTRAS", bundle);
        m7078a(context, a);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: a */
    public void mo7073a(Context context, String str, String str2) {
        Intent intent = new Intent("conversation_self_id_change");
        intent.putExtra("conversation_id", str);
        intent.putExtra("conversation_self_id", str2);
        intent.setPackage(context.getPackageName());
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: b */
    public PendingIntent mo7067b(Context context, int i, String str, MessageData messageData, int i2) {
        Intent a = m7082a(context, i, str, i2, null, messageData, false);
        a.setData(MessagingContentProvider.m27774b(str));
        return m7077a(context, a, 0);
    }

    /* renamed from: b */
    public final Intent m7070b(Context context) {
        Intent intent = new Intent(context, SmsStorageLowWarningActivity.class);
        C14300r.m1653a("SmsStorageLowWarning", intent);
        return intent;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: b */
    public void mo7069b(Context context, int i, MessageData messageData) {
        Intent a = m7082a(context, i, null, C12810o.m5238g(), null, messageData, false);
        a.setFlags(0);
        C14217x3.m2156c(context, a);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: b */
    public void mo7068b(Context context, int i, String str, int i2, String str2) {
        context.startActivity(mo7084a(context, i, str, i2, str2));
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: b */
    public void mo7066b(Context context, Uri uri) {
        C12151d.m6999b(MediaScratchFileProvider.m27782c(uri));
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setDataAndType(uri, "text/x-vCard".toLowerCase());
        intent.addFlags(1);
        m7078a(context, intent);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12126w
    /* renamed from: c */
    public void mo7065c(Context context, Uri uri) {
        context.startActivity(new Intent(context, VCardDetailActivity.class).putExtra("vcard_uri", uri));
    }
}
