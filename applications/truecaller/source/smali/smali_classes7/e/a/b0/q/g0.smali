.class public final Le/a/b0/q/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(J)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_messages"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static B(J)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_messages_with_entities"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static C()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_group_info"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static D()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_group_participants"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static E()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_group_participants_view"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_im_group_participants_view"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "group_id"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "self_peer_id"

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "filter_out_removed_participants"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_im_group_participants_view"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "peer_id"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final H(Le/a/u3/g;ILjava/lang/Integer;J)Ljava/lang/String;
    .locals 3

    const-string v0, "featuresRegistry"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT c._id AS _id, c.type AS type, c.tc_group_id AS tc_group_id, c.has_outgoing_messages AS outgoing_message_count, c.white_list_count AS white_list_count, c.blacklist_count AS blacklist_count, c.top_spammer_count AS top_spammer_count, c.phonebook_count AS phonebook_count, c.split_criteria AS split_criteria, c.preferred_transport AS preferred_transport, c.history_events_count AS history_events_count, c.scheduled_messages_count AS scheduled_messages_count, c.hidden_number AS hidden_number, c.load_events_mode AS load_events_mode, c.hidden_number_prompt_state AS hidden_number_prompt, c.muted AS muted, c.sound_uri AS sound_uri, ts.date_sorting AS date, ts.unread_messages_count AS unread_messages_count, ts.latest_message_id AS latest_message_id, ts.latest_message_status AS latest_message_status, ts.latest_message_media_count AS latest_message_media_count, ts.latest_message_media_type AS latest_message_media_type, ts.latest_sim_token AS latest_sim_token, ts.snippet_text AS snippet_text, ts.is_rich_text_snippet AS is_rich_text_snippet, ts.actions_dismissed AS actions_dismissed, ts.filter AS filter, ts.latest_message_read_status AS latest_message_read_status, ts.latest_message_delivery_status AS latest_message_delivery_status, ts.latest_message_raw_status AS latest_message_raw_status, ts.latest_message_transport AS latest_message_transport, ts.marked_unread AS marked_unread, ts.pinned_date AS pinned_date, ts.archived_date AS archived_date, ts.latest_message_date_sent AS date_sent, ts.latest_message_mentions AS message_mentions, ig.im_group_id AS im_group_id, ig.title AS im_group_title, ig.avatar AS im_group_avatar, ig.invited_date AS im_group_invited_date, ig.invited_by AS im_group_invited_by, ig.roles AS im_group_roles, ig.actions AS im_group_actions, ig.role_update_restriction_mask AS im_group_role_update_restriction_mask, ig.role_update_mask AS im_group_role_update_mask, ig.self_role_update_mask AS im_group_self_role_update_mask, ig.notification_settings AS im_group_notification_settings, ig.history_status AS im_group_history_status, ig.history_sequence_num AS im_group_history_sequence_num, ig.history_message_count AS im_group_history_message_count, ig.are_participants_stale AS im_group_are_participants_stale, ig.current_sequence_number AS im_group_current_sequence_number, ig.invite_notification_date AS im_group_invite_notification_date, ig.invite_notification_count AS im_group_invite_notification_count, ig.join_mode AS im_group_join_mode, c.is_spam AS is_spam, GROUP_CONCAT(ifnull(length(a.contact_spam_type) || \'|\' || a.contact_spam_type,\'|\'),\'\') AS participants_spam_types, GROUP_CONCAT(p._id,\'|\') AS participants_id, GROUP_CONCAT(p.type,\'|\') AS participants_type, GROUP_CONCAT(ifnull(length(p.tc_im_peer_id) || \'|\' || p.tc_im_peer_id,\'|\'),\'\') AS participants_im_id, GROUP_CONCAT(ifnull(length(p.raw_destination) || \'|\' || p.raw_destination,\'|\'),\'\') AS participants_raw_destinantion, GROUP_CONCAT(ifnull(length(p.normalized_destination) || \'|\' || p.normalized_destination,\'|\'),\'\') AS participants_normalized_destination, GROUP_CONCAT(ifnull(length(p.country_code) || \'|\' || p.country_code,\'|\'),\'\') AS participants_country_codes, GROUP_CONCAT(ifnull(length(a.tc_id) || \'|\' || a.tc_id,\'|\'),\'\') AS participants_tc_id, GROUP_CONCAT(p.aggregated_contact_id,\'|\') AS participants_aggregated_contact_id, GROUP_CONCAT(p.filter_action,\'|\') AS participants_filter_action, GROUP_CONCAT(p.is_top_spammer,\'|\') AS participants_is_top_spammer, GROUP_CONCAT(p.im_business_state,\'|\') AS participants_im_business_state, GROUP_CONCAT(p.im_business_feature_flags,\'|\') AS participants_im_business_feature_flags, GROUP_CONCAT(ifnull(length(a.contact_name) || \'|\' || a.contact_name,\'|\'),\'\') AS participants_name, GROUP_CONCAT(ifnull(length(a.contact_image_url) || \'|\' || a.contact_image_url,\'|\'),\'\') AS participants_image_url, GROUP_CONCAT(ifnull(a.contact_source, 0), \'|\') AS participants_source, GROUP_CONCAT(ifnull(a.contact_phonebook_id, -1), \'|\') AS participants_phonebook_id, GROUP_CONCAT(ifnull(a.contact_badges, 0), \'|\') AS participants_badges, GROUP_CONCAT(ifnull(a.contact_premium_level, \'NONE\'), \'|\') AS participants_premium_levels, GROUP_CONCAT(ifnull(length(a.contact_company) || \'|\' || a.contact_company,\'|\'),\'\') AS participants_company, GROUP_CONCAT(ifnull(a.contact_search_time, -1), \'|\') AS participants_search_time, GROUP_CONCAT(ifnull(a.cache_control, -1), \'|\') AS participants_cache_control, GROUP_CONCAT(ifnull(a.spam_categories, \'null\'), \'|\') AS participants_spam_categories, GROUP_CONCAT(ifnull(top_spam_score, 0), \'|\') AS participants_top_spam_score, GROUP_CONCAT(max(ifnull(a.contact_spam_score, 0), ifnull(top_spam_score, 0)), \'|\') AS participants_spam_score "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, " null"

    .line 2
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " AS tab_filter "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, -0x1

    cmp-long p2, p3, v1

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(SELECT * FROM msg_conversations WHERE _id = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, "msg_conversations"

    :goto_1
    const-string p3, " c "

    const-string p4, "LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id "

    const-string v1, "LEFT JOIN msg_participants p on cp.participant_id = p._id "

    .line 4
    invoke-static {v0, p2, p3, p4, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "LEFT JOIN msg_im_group_info ig on p.normalized_destination = ig.im_group_id AND p.type = 4 "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object p0

    invoke-interface {p0}, Le/a/u3/b;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\n                WHERE ts.filter = CASE \n                    WHEN split_criteria = 0 THEN 1 \n                    WHEN (c.type = 0 AND \n                        tab_filter = 1) THEN 2\n                    ELSE "

    const-string p2, " END\n            "

    .line 6
    invoke-static {p0, p1, p2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, " WHERE ts.filter = 1 "

    :goto_2
    const-string p1, "GROUP BY cp.conversation_id"

    .line 7
    invoke-static {v0, p0, p1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".fileprovider"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_im_reactions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "raw_message_id"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Ljava/lang/String;)I
    .locals 3

    const-string v0, "address"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "+91"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.SUBJECT"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "android.intent.extra.TEXT"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "File URI for intent: "

    .line 5
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "text/plain"

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x4000000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p5, :cond_3

    .line 9
    invoke-static {v0, p0, p5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final M(Ljava/lang/String;I)Z
    .locals 5

    const-string v0, "address"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    move p1, v1

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_6

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x61

    if-gt v4, v2, :cond_1

    if-ge v3, v2, :cond_3

    :cond_1
    const/16 v3, 0x5a

    const/16 v4, 0x41

    if-le v4, v2, :cond_2

    goto :goto_1

    :cond_2
    if-lt v3, v2, :cond_4

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_3
    return v0
.end method

.method public static N(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 5
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 6
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 8
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v3
.end method

.method public static O(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    move-object v2, v0

    goto :goto_2

    .line 3
    :cond_2
    new-instance v2, Le/a/b0/q/f0;

    invoke-direct {v2}, Le/a/b0/q/f0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "shared"

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_4

    return-object v0

    .line 7
    :cond_4
    :try_start_0
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p1, p3, p4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    invoke-static {p0}, Le/a/b0/q/g0;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroidx/core/content/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_5

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 11
    :catch_1
    :cond_5
    throw p0

    :catch_2
    move-object p2, v0

    :catch_3
    if-eqz p2, :cond_6

    .line 12
    :try_start_4
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_6
    return-object v0
.end method

.method public static P(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "jpg"

    const/16 v2, 0x5a

    invoke-static {p0, p1, v1, v0, v2}, Le/a/b0/q/g0;->O(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 1
    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method public static S(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/content/IntentSender;)Z
    .locals 6

    if-nez p5, :cond_0

    const/4 v5, 0x0

    const-string v4, "image/jpeg"

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1
    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const-string v4, "image/jpeg"

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    .line 3
    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final T(I)Lcom/truecaller/contactfeedback/db/PhoneNumberType;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->PHONE_NUMBER:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->IM_ID:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->SENDER_ID:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->UNKNOWN_NUMBER_TYPE:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    :goto_0
    return-object p0
.end method

.method public static final U(Lcom/truecaller/contactfeedback/db/CommentFeedback;)Lcom/truecaller/api/services/comments/model/PostComment$Request;
    .locals 8

    const-string v0, "$this$toRequest"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/PostComment$Request;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->newBuilder(Lcom/truecaller/api/services/comments/model/PostComment$Request;)Lcom/truecaller/api/services/comments/model/PostComment$Request$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getSource()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/truecaller/data/entity/FeedbackSource;->values()[Lcom/truecaller/data/entity/FeedbackSource;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 4
    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 7
    sget-object v1, Lcom/truecaller/api/services/comments/model/Context;->DETAIL_VIEW:Lcom/truecaller/api/services/comments/model/Context;

    goto :goto_2

    .line 8
    :cond_2
    sget-object v1, Lcom/truecaller/api/services/comments/model/Context;->BLOCK:Lcom/truecaller/api/services/comments/model/Context;

    .line 9
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/comments/model/PostComment$Request;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->access$1300(Lcom/truecaller/api/services/comments/model/PostComment$Request;Lcom/truecaller/api/services/comments/model/Context;)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getAnonymous()Z

    move-result v1

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/comments/model/PostComment$Request;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->access$1000(Lcom/truecaller/api/services/comments/model/PostComment$Request;Z)V

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/comments/model/PostComment$Request;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->access$100(Lcom/truecaller/api/services/comments/model/PostComment$Request;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getPhoneNumberType()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->values()[Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    move-result-object v2

    :goto_3
    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 19
    aget-object v4, v2, v3

    .line 20
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v6, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    sget-object v6, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->UNKNOWN_NUMBER_TYPE:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 21
    :goto_5
    invoke-virtual {v6}, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->getWrapped()Lcom/truecaller/api/services/comments/model/NumberType;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 23
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/comments/model/PostComment$Request;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->access$500(Lcom/truecaller/api/services/comments/model/PostComment$Request;Lcom/truecaller/api/services/comments/model/NumberType;)V

    .line 24
    invoke-virtual {p0}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getTextBody()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 26
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/comments/model/PostComment$Request;

    invoke-static {v1, p0}, Lcom/truecaller/api/services/comments/model/PostComment$Request;->access$700(Lcom/truecaller/api/services/comments/model/PostComment$Request;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v0, "PostComment.Request\n    \u2026extBody)\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/comments/model/PostComment$Request;

    return-object p0

    .line 28
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " not found"

    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Le/a/u3/g;ZIIZ)Ljava/lang/String;
    .locals 2

    const-string v0, "featuresRegistry"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object p0

    invoke-interface {p0}, Le/a/u3/b;->isEnabled()Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x2

    if-eq p2, p0, :cond_6

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    if-eq p3, p0, :cond_6

    :cond_2
    if-eqz p1, :cond_3

    if-ne p2, v1, :cond_3

    if-ne p3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    if-ne p2, p0, :cond_4

    const-string p0, "AND category = 3"

    return-object p0

    :cond_4
    const/4 p0, 0x4

    if-ne p2, p0, :cond_5

    const-string p0, "AND category = 4"

    return-object p0

    :cond_5
    return-object v0

    :cond_6
    :goto_0
    if-eqz p4, :cond_7

    const-string p0, "AND (category NOT IN (3, 4) OR(status & 2) = 2)"

    goto :goto_1

    :cond_7
    const-string p0, "AND category NOT IN (3, 4)"

    :goto_1
    return-object p0
.end method

.method public static synthetic b(Le/a/u3/g;ZIIZI)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_0

    const/4 p3, -0x1

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Le/a/b0/q/g0;->a(Le/a/u3/g;ZIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;II)Z
    .locals 3

    const-string v0, "address"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_1

    invoke-static {p0, p1}, Le/a/b0/q/g0;->M(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static final d(JLjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/NumberAndType;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "textBody"

    move-object/from16 v15, p2

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "numbers"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedbackSrc"

    move-object/from16 v14, p5

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Lcom/truecaller/contactfeedback/db/NumberAndType;

    .line 4
    new-instance v13, Lcom/truecaller/contactfeedback/db/CommentFeedback;

    const-wide/16 v3, 0x0

    .line 5
    iget-object v7, v2, Lcom/truecaller/contactfeedback/db/NumberAndType;->a:Ljava/lang/String;

    const/4 v10, 0x0

    .line 6
    iget-object v2, v2, Lcom/truecaller/contactfeedback/db/NumberAndType;->b:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x21

    const/16 v17, 0x0

    move-object v2, v13

    move-wide/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v11, p4

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v14, v17

    .line 8
    invoke-direct/range {v2 .. v14}, Lcom/truecaller/contactfeedback/db/CommentFeedback;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILs1/z/c/f;)V

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static e()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "contact_settings"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_conversations_list"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "filter"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static g(J)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_conversations_list"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static h(JII)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "message_attachments"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "conversation_id"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "filter"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "split_criteria"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static i(JJ)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inbox_cleaner_promotional_messages_query"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "start_date"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "end_date"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Long;II)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messages_to_translate"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "filter"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "split_criteria"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/Set;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inbox_cleaner_otp_messages_query"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ids"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static l(Z)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_conversations_list"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "tcy_inbox"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static m([Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_conversations_list"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "participant_addr"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "filter"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static n()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_conversations_list"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static o(I)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "msg/msg_messages"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "transport"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static p(JJ)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "inbox_cleaner_spam_messages_query"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "start_date"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "end_date"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static q(Z)Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media_storage"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "group_by_type"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static r()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_invite_group_info"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static s()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_mentions"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static t()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_reactions"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static u()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_unprocessed_events"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static v()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_unsupported_events"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static w()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_im_users"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static x()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_entities"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static y()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_messages"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static z()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_messages_with_entities"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
