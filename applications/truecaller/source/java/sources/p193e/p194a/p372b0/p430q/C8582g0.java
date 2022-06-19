package p193e.p194a.p372b0.p430q;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.FileProvider;
import com.google.protobuf.GeneratedMessageLite;
import com.tenor.android.core.constant.ContentFormat;
import com.tenor.android.core.constant.MediaFormat;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.api.services.comments.model.NumberType;
import com.truecaller.api.services.comments.model.PostComment;
import com.truecaller.contactfeedback.p157db.CommentFeedback;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.data.entity.FeedbackSource;
import com.truecaller.log.AssertionUtil;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.b0.q.g0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/g0.class */
public final class C8582g0 {
    /* renamed from: A */
    public static Uri m28340A(long j) {
        return ContentUris.withAppendedId(Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_messages"), j);
    }

    /* renamed from: B */
    public static Uri m28339B(long j) {
        return ContentUris.appendId(C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_messages_with_entities"), j).build();
    }

    /* renamed from: C */
    public static Uri m28338C() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_group_info");
    }

    /* renamed from: D */
    public static Uri m28337D() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_group_participants");
    }

    /* renamed from: E */
    public static Uri m28336E() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_group_participants_view");
    }

    /* renamed from: F */
    public static Uri m28335F(String str, String str2, boolean z) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_im_group_participants_view").appendQueryParameter("group_id", str).appendQueryParameter("self_peer_id", str2).appendQueryParameter("filter_out_removed_participants", String.valueOf(z)).build();
    }

    /* renamed from: G */
    public static Uri m28334G(String str) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_im_group_participants_view").appendQueryParameter("peer_id", str).build();
    }

    /* renamed from: H */
    public static final String m28333H(C20592g c20592g, int i, Integer num, long j) {
        String str;
        l.e(c20592g, "featuresRegistry");
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT c._id AS _id, c.type AS type, c.tc_group_id AS tc_group_id, c.has_outgoing_messages AS outgoing_message_count, c.white_list_count AS white_list_count, c.blacklist_count AS blacklist_count, c.top_spammer_count AS top_spammer_count, c.phonebook_count AS phonebook_count, c.split_criteria AS split_criteria, c.preferred_transport AS preferred_transport, c.history_events_count AS history_events_count, c.scheduled_messages_count AS scheduled_messages_count, c.hidden_number AS hidden_number, c.load_events_mode AS load_events_mode, c.hidden_number_prompt_state AS hidden_number_prompt, c.muted AS muted, c.sound_uri AS sound_uri, ts.date_sorting AS date, ts.unread_messages_count AS unread_messages_count, ts.latest_message_id AS latest_message_id, ts.latest_message_status AS latest_message_status, ts.latest_message_media_count AS latest_message_media_count, ts.latest_message_media_type AS latest_message_media_type, ts.latest_sim_token AS latest_sim_token, ts.snippet_text AS snippet_text, ts.is_rich_text_snippet AS is_rich_text_snippet, ts.actions_dismissed AS actions_dismissed, ts.filter AS filter, ts.latest_message_read_status AS latest_message_read_status, ts.latest_message_delivery_status AS latest_message_delivery_status, ts.latest_message_raw_status AS latest_message_raw_status, ts.latest_message_transport AS latest_message_transport, ts.marked_unread AS marked_unread, ts.pinned_date AS pinned_date, ts.archived_date AS archived_date, ts.latest_message_date_sent AS date_sent, ts.latest_message_mentions AS message_mentions, ig.im_group_id AS im_group_id, ig.title AS im_group_title, ig.avatar AS im_group_avatar, ig.invited_date AS im_group_invited_date, ig.invited_by AS im_group_invited_by, ig.roles AS im_group_roles, ig.actions AS im_group_actions, ig.role_update_restriction_mask AS im_group_role_update_restriction_mask, ig.role_update_mask AS im_group_role_update_mask, ig.self_role_update_mask AS im_group_self_role_update_mask, ig.notification_settings AS im_group_notification_settings, ig.history_status AS im_group_history_status, ig.history_sequence_num AS im_group_history_sequence_num, ig.history_message_count AS im_group_history_message_count, ig.are_participants_stale AS im_group_are_participants_stale, ig.current_sequence_number AS im_group_current_sequence_number, ig.invite_notification_date AS im_group_invite_notification_date, ig.invite_notification_count AS im_group_invite_notification_count, ig.join_mode AS im_group_join_mode, c.is_spam AS is_spam, GROUP_CONCAT(ifnull(length(a.contact_spam_type) || '|' || a.contact_spam_type,'|'),'') AS participants_spam_types, GROUP_CONCAT(p._id,'|') AS participants_id, GROUP_CONCAT(p.type,'|') AS participants_type, GROUP_CONCAT(ifnull(length(p.tc_im_peer_id) || '|' || p.tc_im_peer_id,'|'),'') AS participants_im_id, GROUP_CONCAT(ifnull(length(p.raw_destination) || '|' || p.raw_destination,'|'),'') AS participants_raw_destinantion, GROUP_CONCAT(ifnull(length(p.normalized_destination) || '|' || p.normalized_destination,'|'),'') AS participants_normalized_destination, GROUP_CONCAT(ifnull(length(p.country_code) || '|' || p.country_code,'|'),'') AS participants_country_codes, GROUP_CONCAT(ifnull(length(a.tc_id) || '|' || a.tc_id,'|'),'') AS participants_tc_id, GROUP_CONCAT(p.aggregated_contact_id,'|') AS participants_aggregated_contact_id, GROUP_CONCAT(p.filter_action,'|') AS participants_filter_action, GROUP_CONCAT(p.is_top_spammer,'|') AS participants_is_top_spammer, GROUP_CONCAT(p.im_business_state,'|') AS participants_im_business_state, GROUP_CONCAT(p.im_business_feature_flags,'|') AS participants_im_business_feature_flags, GROUP_CONCAT(ifnull(length(a.contact_name) || '|' || a.contact_name,'|'),'') AS participants_name, GROUP_CONCAT(ifnull(length(a.contact_image_url) || '|' || a.contact_image_url,'|'),'') AS participants_image_url, GROUP_CONCAT(ifnull(a.contact_source, 0), '|') AS participants_source, GROUP_CONCAT(ifnull(a.contact_phonebook_id, -1), '|') AS participants_phonebook_id, GROUP_CONCAT(ifnull(a.contact_badges, 0), '|') AS participants_badges, GROUP_CONCAT(ifnull(a.contact_premium_level, 'NONE'), '|') AS participants_premium_levels, GROUP_CONCAT(ifnull(length(a.contact_company) || '|' || a.contact_company,'|'),'') AS participants_company, GROUP_CONCAT(ifnull(a.contact_search_time, -1), '|') AS participants_search_time, GROUP_CONCAT(ifnull(a.cache_control, -1), '|') AS participants_cache_control, GROUP_CONCAT(ifnull(a.spam_categories, 'null'), '|') AS participants_spam_categories, GROUP_CONCAT(ifnull(top_spam_score, 0), '|') AS participants_top_spam_score, GROUP_CONCAT(max(ifnull(a.contact_spam_score, 0), ifnull(top_spam_score, 0)), '|') AS participants_spam_score ");
        sb.append(", ");
        if (num == null) {
            num = " null";
        }
        sb.append(num);
        sb.append(" AS tab_filter ");
        sb.append("FROM ");
        if (j != -1) {
            str = "(SELECT * FROM msg_conversations WHERE _id = " + j + ')';
        } else {
            str = "msg_conversations";
        }
        C22128a.m8666T0(sb, str, " c ", "LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id ", "LEFT JOIN msg_participants p on cp.participant_id = p._id ");
        sb.append("LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id ");
        sb.append("LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id ");
        sb.append("LEFT JOIN msg_im_group_info ig on p.normalized_destination = ig.im_group_id AND p.type = 4 ");
        return C22128a.m8618h(sb, c20592g.m10963h0().isEnabled() ? C22128a.m8599l2("\n                WHERE ts.filter = CASE \n                    WHEN split_criteria = 0 THEN 1 \n                    WHEN (c.type = 0 AND \n                        tab_filter = 1) THEN 2\n                    ELSE ", i, " END\n            ") : " WHERE ts.filter = 1 ", "GROUP BY cp.conversation_id");
    }

    /* renamed from: I */
    public static String m28332I(Context context) {
        return context.getApplicationContext().getPackageName() + ".fileprovider";
    }

    /* renamed from: J */
    public static Uri m28331J(String str) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_im_reactions").appendQueryParameter("raw_message_id", str).build();
    }

    /* renamed from: K */
    public static final int m28330K(String str) {
        l.e(str, "address");
        return r.y(str, "+91", false, 2) ? 11 : 8;
    }

    /* renamed from: L */
    public static Intent m28329L(String str, String str2, CharSequence charSequence, Uri uri, String str3, IntentSender intentSender) {
        Intent intent = new Intent("android.intent.action.SEND");
        if (str2 != null) {
            intent.putExtra("android.intent.extra.SUBJECT", str2);
        }
        intent.putExtra("android.intent.extra.TEXT", charSequence);
        if (uri != null) {
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                StringBuilder m8728C = C22128a.m8728C("File URI for intent: ");
                m8728C.append(uri.toString());
                AssertionUtil.reportWeirdnessButNeverCrash(m8728C.toString());
            }
            intent.setType(str3).putExtra("android.intent.extra.STREAM", uri);
        } else {
            intent.setType("text/plain");
        }
        intent.setFlags(67108864);
        return intentSender != null ? Intent.createChooser(intent, str, intentSender) : Intent.createChooser(intent, str);
    }

    /* renamed from: M */
    public static final boolean m28328M(String str, int i) {
        l.e(str, "address");
        boolean z = true;
        if (i == 0 || i == 1) {
            int i2 = 0;
            while (true) {
                if (i2 >= str.length()) {
                    z = false;
                    break;
                }
                char charAt = str.charAt(i2);
                if (('a' <= charAt && 'z' >= charAt) || ('A' <= charAt && 'Z' >= charAt)) {
                    break;
                }
                i2++;
            }
            return z;
        }
        return false;
    }

    /* renamed from: N */
    public static Bitmap m28327N(View view) {
        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        view.measure(0, 0);
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        view.layout(0, 0, measuredWidth, measuredHeight);
        view.draw(canvas);
        return createBitmap;
    }

    /* renamed from: O */
    public static Uri m28326O(Context context, Bitmap bitmap, String str, Bitmap.CompressFormat compressFormat, int i) {
        File file;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        Throwable th;
        File externalCacheDir;
        if (bitmap == null) {
            return null;
        }
        if ("mounted".equals(Environment.getExternalStorageState()) && (externalCacheDir = context.getExternalCacheDir()) != null) {
            for (File file2 : externalCacheDir.listFiles(new C8580f0())) {
                file2.delete();
            }
            StringBuilder m8728C = C22128a.m8728C("shared");
            m8728C.append(System.currentTimeMillis());
            m8728C.append(StringConstant.DOT);
            m8728C.append(str);
            file = new File(externalCacheDir, m8728C.toString());
        } else {
            file = null;
        }
        if (file == null) {
            return null;
        }
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        } catch (IOException e) {
            bufferedOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = null;
        }
        try {
            bitmap.compress(compressFormat, i, bufferedOutputStream);
            Uri m42989b = FileProvider.m42989b(context, m28332I(context), file);
            try {
                bufferedOutputStream.close();
            } catch (IOException e2) {
            }
            return m42989b;
        } catch (IOException e3) {
            if (bufferedOutputStream == null) {
                return null;
            }
            try {
                bufferedOutputStream.close();
                return null;
            } catch (IOException e4) {
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    /* renamed from: P */
    public static Uri m28325P(Context context, Bitmap bitmap) {
        return m28326O(context, bitmap, MediaFormat.JPG, Bitmap.CompressFormat.JPEG, 90);
    }

    /* renamed from: Q */
    public static boolean m28324Q(Context context, String str, String str2, CharSequence charSequence, Uri uri, String str3) {
        return C8613t.m28198n(context, m28329L(null, null, charSequence, uri, str3, null));
    }

    /* renamed from: R */
    public static boolean m28323R(Context context, String str, String str2, CharSequence charSequence, Uri uri) {
        return m28322S(context, str, str2, charSequence, uri, null);
    }

    /* renamed from: S */
    public static boolean m28322S(Context context, String str, String str2, CharSequence charSequence, Uri uri, IntentSender intentSender) {
        return intentSender == null ? C8613t.m28198n(context, m28329L(str, str2, charSequence, uri, ContentFormat.IMAGE_JPEG, null)) : C8613t.m28198n(context, m28329L(str, str2, charSequence, uri, ContentFormat.IMAGE_JPEG, intentSender));
    }

    /* renamed from: T */
    public static final PhoneNumberType m28321T(int i) {
        return i == 0 ? PhoneNumberType.PHONE_NUMBER : i == 3 ? PhoneNumberType.IM_ID : i == 1 ? PhoneNumberType.SENDER_ID : PhoneNumberType.UNKNOWN_NUMBER_TYPE;
    }

    /* renamed from: U */
    public static final PostComment.Request m28320U(CommentFeedback commentFeedback) {
        FeedbackSource feedbackSource;
        com.truecaller.api.services.comments.model.Context context;
        PhoneNumberType phoneNumberType;
        l.e(commentFeedback, "$this$toRequest");
        PostComment.Request.C2963a newBuilder = PostComment.Request.newBuilder(PostComment.Request.getDefaultInstance());
        String source = commentFeedback.getSource();
        FeedbackSource[] values = FeedbackSource.values();
        int i = 0;
        while (true) {
            if (i >= 2) {
                feedbackSource = null;
                break;
            }
            feedbackSource = values[i];
            if (l.a(feedbackSource.name(), source)) {
                break;
            }
            i++;
        }
        if (feedbackSource != null) {
            int ordinal = feedbackSource.ordinal();
            if (ordinal == 0) {
                context = com.truecaller.api.services.comments.model.Context.BLOCK;
            } else if (ordinal == 1) {
                context = com.truecaller.api.services.comments.model.Context.DETAIL_VIEW;
            }
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setContext(context);
            boolean anonymous = commentFeedback.getAnonymous();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setAnonymous(anonymous);
            String phoneNumber = commentFeedback.getPhoneNumber();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumber(phoneNumber);
            String phoneNumberType2 = commentFeedback.getPhoneNumberType();
            PhoneNumberType[] values2 = PhoneNumberType.values();
            int i2 = 0;
            while (true) {
                phoneNumberType = null;
                if (i2 >= 4) {
                    break;
                }
                phoneNumberType = values2[i2];
                if (l.a(phoneNumberType2, phoneNumberType.name())) {
                    break;
                }
                i2++;
            }
            if (phoneNumberType == null) {
                phoneNumberType = PhoneNumberType.UNKNOWN_NUMBER_TYPE;
            }
            NumberType wrapped = phoneNumberType.getWrapped();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNumberType(wrapped);
            String textBody = commentFeedback.getTextBody();
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setText(textBody);
            PostComment.Request build = newBuilder.build();
            l.d(build, "PostComment.Request\n    …extBody)\n        .build()");
            return build;
        }
        throw new IllegalArgumentException(C22128a.m8543z2(source, " not found"));
    }

    /* renamed from: a */
    public static final String m28319a(C20592g c20592g, boolean z, int i, int i2, boolean z2) {
        l.e(c20592g, "featuresRegistry");
        if (c20592g.m10963h0().isEnabled() && i2 != 0) {
            if (i == 2 || ((i == 1 && i2 == 2) || (z && i == 1 && i2 == 1))) {
                return z2 ? "AND (category NOT IN (3, 4) OR(status & 2) = 2)" : "AND category NOT IN (3, 4)";
            }
            return i == 3 ? "AND category = 3" : i == 4 ? "AND category = 4" : "";
        }
        return "";
    }

    /* renamed from: b */
    public static /* synthetic */ String m28318b(C20592g c20592g, boolean z, int i, int i2, boolean z2, int i3) {
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return m28319a(c20592g, z, i, i2, z2);
    }

    /* renamed from: c */
    public static final boolean m28317c(String str, int i, int i2) {
        l.e(str, "address");
        boolean z = false;
        if (i == 0 || i == 1) {
            if (str.length() <= i2 || m28328M(str, i)) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: d */
    public static final List<CommentFeedback> m28316d(long j, String str, List<NumberAndType> list, boolean z, String str2) {
        l.e(str, "textBody");
        l.e(list, "numbers");
        l.e(str2, "feedbackSrc");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (NumberAndType numberAndType : list) {
            arrayList.add(new CommentFeedback(0L, j, numberAndType.f11335a, str, str2, null, z, numberAndType.f11336b.name(), 33, null));
        }
        return arrayList;
    }

    /* renamed from: e */
    public static Uri m28315e() {
        return Uri.withAppendedPath(C17891a1.f50888a, "contact_settings");
    }

    /* renamed from: f */
    public static Uri m28314f(int i) {
        Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_conversations_list");
        appendEncodedPath.appendQueryParameter("filter", String.valueOf(i));
        return appendEncodedPath.build();
    }

    /* renamed from: g */
    public static Uri m28313g(long j) {
        return ContentUris.appendId(C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_conversations_list"), j).build();
    }

    /* renamed from: h */
    public static Uri m28312h(long j, int i, int i2) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("message_attachments").appendQueryParameter("conversation_id", String.valueOf(j)).appendQueryParameter("filter", String.valueOf(i)).appendQueryParameter("split_criteria", String.valueOf(i2)).build();
    }

    /* renamed from: i */
    public static Uri m28311i(long j, long j2) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("inbox_cleaner_promotional_messages_query").appendQueryParameter("start_date", String.valueOf(j)).appendQueryParameter("end_date", String.valueOf(j2)).build();
    }

    /* renamed from: j */
    public static Uri m28310j(Long l, int i, int i2) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("messages_to_translate").appendQueryParameter("conversation_id", String.valueOf(l)).appendQueryParameter("filter", String.valueOf(i)).appendQueryParameter("split_criteria", String.valueOf(i2)).build();
    }

    /* renamed from: k */
    public static Uri m28309k(Set<Long> set) {
        Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("inbox_cleaner_otp_messages_query");
        for (Long l : set) {
            appendEncodedPath.appendQueryParameter("ids", String.valueOf(l));
        }
        return appendEncodedPath.build();
    }

    /* renamed from: l */
    public static Uri m28308l(boolean z) {
        Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_conversations_list");
        appendEncodedPath.appendQueryParameter("tcy_inbox", String.valueOf(z));
        return appendEncodedPath.build();
    }

    /* renamed from: m */
    public static Uri m28307m(String[] strArr, int i) {
        Uri.Builder appendEncodedPath = C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_conversations_list");
        for (String str : strArr) {
            appendEncodedPath.appendQueryParameter("participant_addr", String.valueOf(str));
        }
        appendEncodedPath.appendQueryParameter("filter", String.valueOf(i));
        return appendEncodedPath.build();
    }

    /* renamed from: n */
    public static Uri m28306n() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_conversations_list");
    }

    /* renamed from: o */
    public static Uri m28305o(int i) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("msg/msg_messages").appendQueryParameter("transport", String.valueOf(i)).build();
    }

    /* renamed from: p */
    public static Uri m28304p(long j, long j2) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("inbox_cleaner_spam_messages_query").appendQueryParameter("start_date", String.valueOf(j)).appendQueryParameter("end_date", String.valueOf(j2)).build();
    }

    /* renamed from: q */
    public static Uri m28303q(boolean z) {
        return C17891a1.f50888a.buildUpon().appendEncodedPath("media_storage").appendQueryParameter("group_by_type", String.valueOf(z)).build();
    }

    /* renamed from: r */
    public static Uri m28302r() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_invite_group_info");
    }

    /* renamed from: s */
    public static Uri m28301s() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_mentions");
    }

    /* renamed from: t */
    public static Uri m28300t() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_reactions");
    }

    /* renamed from: u */
    public static Uri m28299u() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_unprocessed_events");
    }

    /* renamed from: v */
    public static Uri m28298v() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_unsupported_events");
    }

    /* renamed from: w */
    public static Uri m28297w() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_im_users");
    }

    /* renamed from: x */
    public static Uri m28296x() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_entities");
    }

    /* renamed from: y */
    public static Uri m28295y() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_messages");
    }

    /* renamed from: z */
    public static Uri m28294z() {
        return Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_messages_with_entities");
    }
}
