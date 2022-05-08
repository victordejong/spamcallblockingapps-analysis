package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.messaging.datamodel.action.DeleteConversationAction;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.p478y.C11613i;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.y.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/e.class */
public class C11608e {

    /* renamed from: n */
    public static final String[] f25949n = {"_id", "name", "icon", C11613i.C11615b.f26062d, C11613i.C11615b.f26064f, "read", "preview_uri", C11613i.C11615b.f26063e, "participant_contact_id", "participant_lookup_key", C11613i.C11615b.f26065g, C11613i.C11615b.f26068j, "current_self_id", "notification_enabled", "notification_sound_uri", "notification_vibration", "include_email_addr", "message_status", "show_draft", "draft_preview_uri", "draft_preview_content_type", "draft_snippet_text", C11613i.C11615b.f26066h, "message_id", C11613i.C11615b.f26067i, "draft_subject_text", "raw_status", "snippet_sender_first_name", "snippet_sender_display_destination"};

    /* renamed from: a */
    public String f25950a;

    /* renamed from: b */
    public String f25951b;

    /* renamed from: c */
    public String f25952c;

    /* renamed from: d */
    public long f25953d;

    /* renamed from: e */
    public long f25954e;

    /* renamed from: f */
    public String f25955f;

    /* renamed from: g */
    public String f25956g;

    /* renamed from: h */
    public int f25957h;

    /* renamed from: i */
    public boolean f25958i;

    /* renamed from: j */
    public String f25959j;

    /* renamed from: k */
    public boolean f25960k;

    /* renamed from: l */
    public boolean f25961l;

    /* renamed from: m */
    public int f25962m;

    /* renamed from: a */
    public static C11608e m8959a(C11534l lVar, String str) {
        Throwable th;
        Cursor cursor;
        C11608e eVar = null;
        try {
            Cursor a = lVar.m9216a(m8946m(), f25949n, "_id=?", new String[]{str}, null, null, null);
            try {
                C12151d.m7011a(a.getCount(), 0, 1);
                if (a.moveToFirst()) {
                    eVar = new C11608e();
                    eVar.m8961a(a);
                }
                if (a != null) {
                    a.close();
                }
                return eVar;
            } catch (Throwable th2) {
                th = th2;
                cursor = a;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public static String m8958a(List<ParticipantData> list) {
        if (list.size() == 1) {
            return list.get(0).m27537a(true);
        }
        ArrayList arrayList = new ArrayList();
        for (ParticipantData participantData : list) {
            arrayList.add(participantData.m27537a(false));
        }
        return Joiner.m31135on(UserProfile.CARD_CATE_SEPARATOR).m31141a().join(arrayList);
    }

    /* renamed from: m */
    public static final String m8946m() {
        return "conversation_list_view";
    }

    /* renamed from: n */
    public static final String m8945n() {
        return "CREATE VIEW conversation_list_view AS SELECT conversations._id as _id, conversations.name as name, conversations.current_self_id as current_self_id, conversations.archive_status as archive_status, messages.read as read, conversations.icon as icon, conversations.participant_contact_id as participant_contact_id, conversations.participant_lookup_key as participant_lookup_key, conversations.participant_normalized_destination as participant_normalized_destination, conversations.sort_timestamp as sort_timestamp, conversations.show_draft as show_draft, conversations.draft_snippet_text as draft_snippet_text, conversations.draft_preview_uri as draft_preview_uri, conversations.draft_subject_text as draft_subject_text, conversations.draft_preview_content_type as draft_preview_content_type, conversations.preview_uri as preview_uri, conversations.preview_content_type as preview_content_type, conversations.participant_count as participant_count, conversations.notification_enabled as notification_enabled, conversations.notification_sound_uri as notification_sound_uri, conversations.notification_vibration as notification_vibration, conversations.include_email_addr as include_email_addr, messages.message_status as message_status, messages.raw_status as raw_status, messages._id as message_id, participants.first_name as snippet_sender_first_name, participants.display_destination as snippet_sender_display_destination, conversations.snippet_text as snippet_text, conversations.subject_text as subject_text  FROM conversations LEFT JOIN messages ON (conversations.latest_message_id=messages._id)  LEFT JOIN participants ON (messages.sender_id=participants._id) ORDER BY conversations.sort_timestamp DESC";
    }

    /* renamed from: a */
    public String m8963a() {
        return this.f25950a;
    }

    /* renamed from: a */
    public void m8962a(int i) {
        DeleteConversationAction.m27722a(new String[]{this.f25950a}, new long[]{this.f25953d}, i);
    }

    /* renamed from: a */
    public void m8961a(Cursor cursor) {
        m8960a(cursor, false);
    }

    /* renamed from: a */
    public void m8960a(Cursor cursor, boolean z) {
        boolean z2 = false;
        this.f25950a = cursor.getString(0);
        this.f25951b = cursor.getString(1);
        this.f25952c = cursor.getString(2);
        cursor.getString(3);
        this.f25953d = cursor.getLong(4);
        cursor.getInt(5);
        String string = cursor.getString(6);
        if (!TextUtils.isEmpty(string)) {
            Uri.parse(string);
        }
        cursor.getString(7);
        this.f25954e = cursor.getLong(8);
        cursor.getString(9);
        this.f25955f = cursor.getString(10);
        this.f25956g = cursor.getString(12);
        this.f25957h = cursor.getInt(11);
        this.f25958i = cursor.getInt(13) == 1;
        this.f25959j = cursor.getString(14);
        this.f25960k = cursor.getInt(15) == 1;
        if (cursor.getInt(16) == 1) {
            z2 = true;
        }
        this.f25961l = z2;
        cursor.getInt(17);
        cursor.getInt(26);
        if (!z) {
            cursor.getInt(18);
            String string2 = cursor.getString(19);
            if (!TextUtils.isEmpty(string2)) {
                Uri.parse(string2);
            }
            cursor.getString(20);
            cursor.getString(21);
            cursor.getString(25);
        }
        this.f25962m = cursor.getInt(22);
        int i = this.f25962m;
        cursor.getString(24);
        cursor.getString(27);
        cursor.getString(28);
    }

    /* renamed from: b */
    public String m8957b() {
        return this.f25952c;
    }

    /* renamed from: c */
    public boolean m8956c() {
        return this.f25961l;
    }

    /* renamed from: d */
    public boolean m8955d() {
        boolean z = true;
        if (this.f25957h <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public String m8954e() {
        return this.f25951b;
    }

    /* renamed from: f */
    public boolean m8953f() {
        return this.f25960k;
    }

    /* renamed from: g */
    public boolean m8952g() {
        return this.f25958i;
    }

    /* renamed from: h */
    public String m8951h() {
        return this.f25959j;
    }

    /* renamed from: i */
    public String m8950i() {
        return this.f25955f;
    }

    /* renamed from: j */
    public long m8949j() {
        return this.f25954e;
    }

    /* renamed from: k */
    public int m8948k() {
        return this.f25957h;
    }

    /* renamed from: l */
    public String m8947l() {
        return this.f25956g;
    }
}
