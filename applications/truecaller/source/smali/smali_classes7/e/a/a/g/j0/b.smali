.class public final Le/a/a/g/j0/b;
.super Le/a/a/g/e;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/a;


# instance fields
.field public final A:I

.field public final A0:I

.field public final B:I

.field public final B0:I

.field public final C:I

.field public final C0:I

.field public final D:I

.field public final D0:I

.field public final E:I

.field public final E0:I

.field public final F0:I

.field public final G0:I

.field public final H0:I

.field public final I0:I

.field public final J:I

.field public final J0:I

.field public final K:I

.field public final K0:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final g0:I

.field public final h:I

.field public final h0:I

.field public final i:I

.field public final i0:I

.field public final j:I

.field public final j0:I

.field public final k:I

.field public final k0:I

.field public final l:I

.field public final l0:I

.field public final m:I

.field public final m0:I

.field public final n:I

.field public final n0:I

.field public final o:I

.field public final o0:I

.field public final p:I

.field public final p0:I

.field public final q:I

.field public final q0:I

.field public final r:I

.field public final r0:I

.field public final s:I

.field public final s0:I

.field public final t:I

.field public final t0:I

.field public final u:I

.field public final u0:I

.field public final v:I

.field public final v0:I

.field public final w:I

.field public final w0:I

.field public final x:I

.field public final x0:I

.field public final y:I

.field public final y0:I

.field public final z:I

.field public final z0:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/g/e;-><init>(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->a:I

    const-string v0, "tc_group_id"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->b:I

    const-string v0, "type"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->c:I

    const-string v0, "latest_message_id"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->d:I

    const-string v0, "latest_message_status"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->e:I

    const-string v0, "latest_message_media_count"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->f:I

    const-string v0, "latest_message_media_type"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->g:I

    const-string v0, "message_mentions"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->h:I

    const-string v0, "latest_sim_token"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->i:I

    const-string v0, "date"

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->j:I

    const-string v0, "snippet_text"

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->k:I

    const-string v0, "is_rich_text_snippet"

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->l:I

    const-string v0, "unread_messages_count"

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->m:I

    const-string v0, "actions_dismissed"

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->n:I

    const-string v0, "outgoing_message_count"

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->o:I

    const-string v0, "phonebook_count"

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->p:I

    const-string v0, "marked_unread"

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->q:I

    const-string v0, "participants_id"

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->r:I

    const-string v0, "participants_type"

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->s:I

    const-string v0, "participants_im_id"

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->t:I

    const-string v0, "participants_raw_destinantion"

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->u:I

    const-string v0, "participants_normalized_destination"

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->v:I

    const-string v0, "participants_country_codes"

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->w:I

    const-string v0, "participants_tc_id"

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->x:I

    const-string v0, "participants_aggregated_contact_id"

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->y:I

    const-string v0, "participants_filter_action"

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->z:I

    const-string v0, "participants_is_top_spammer"

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->A:I

    const-string v0, "participants_im_business_state"

    .line 29
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->B:I

    const-string v0, "participants_im_business_feature_flags"

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->C:I

    const-string v0, "participants_top_spam_score"

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->D:I

    const-string v0, "participants_name"

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->E:I

    const-string v0, "participants_image_url"

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->J:I

    const-string v0, "participants_source"

    .line 34
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->K:I

    const-string v0, "participants_phonebook_id"

    .line 35
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->L:I

    const-string v0, "participants_spam_score"

    .line 36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->M:I

    const-string v0, "participants_spam_types"

    .line 37
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->N:I

    const-string v0, "participants_badges"

    .line 38
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->O:I

    const-string v0, "participants_premium_levels"

    .line 39
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->P:I

    const-string v0, "participants_company"

    .line 40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->Q:I

    const-string v0, "participants_search_time"

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->R:I

    const-string v0, "participants_spam_categories"

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->S:I

    const-string v0, "filter"

    .line 43
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->T:I

    const-string v0, "split_criteria"

    .line 44
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->U:I

    const-string v0, "preferred_transport"

    .line 45
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->V:I

    const-string v0, "latest_message_delivery_status"

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->W:I

    const-string v0, "latest_message_read_status"

    .line 47
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->X:I

    const-string v0, "latest_message_raw_status"

    .line 48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->Y:I

    const-string v0, "latest_message_transport"

    .line 49
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->Z:I

    const-string v0, "history_events_count"

    .line 50
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->g0:I

    const-string v0, "scheduled_messages_count"

    .line 51
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->h0:I

    const-string v0, "hidden_number"

    .line 52
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->i0:I

    const-string v0, "load_events_mode"

    .line 53
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->j0:I

    const-string v0, "hidden_number_prompt"

    .line 54
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->k0:I

    const-string v0, "participants_cache_control"

    .line 55
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->l0:I

    const-string v0, "pinned_date"

    .line 56
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->m0:I

    const-string v0, "archived_date"

    .line 57
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->n0:I

    const-string v0, "date_sent"

    .line 58
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->o0:I

    const-string v0, "muted"

    .line 59
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->p0:I

    const-string v0, "sound_uri"

    .line 60
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->q0:I

    const-string v0, "im_group_id"

    .line 61
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->r0:I

    const-string v0, "im_group_title"

    .line 62
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->s0:I

    const-string v0, "im_group_avatar"

    .line 63
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->t0:I

    const-string v0, "im_group_invited_date"

    .line 64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->u0:I

    const-string v0, "im_group_invited_by"

    .line 65
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->v0:I

    const-string v0, "im_group_roles"

    .line 66
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->w0:I

    const-string v0, "im_group_actions"

    .line 67
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->x0:I

    const-string v0, "im_group_role_update_restriction_mask"

    .line 68
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->y0:I

    const-string v0, "im_group_role_update_mask"

    .line 69
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->z0:I

    const-string v0, "im_group_self_role_update_mask"

    .line 70
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->A0:I

    const-string v0, "im_group_notification_settings"

    .line 71
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->B0:I

    const-string v0, "im_group_history_status"

    .line 72
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->C0:I

    const-string v0, "im_group_history_sequence_num"

    .line 73
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->D0:I

    const-string v0, "im_group_history_message_count"

    .line 74
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->E0:I

    const-string v0, "im_group_are_participants_stale"

    .line 75
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->F0:I

    const-string v0, "im_group_current_sequence_number"

    .line 76
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->G0:I

    const-string v0, "im_group_invite_notification_date"

    .line 77
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->H0:I

    const-string v0, "im_group_invite_notification_count"

    .line 78
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->I0:I

    const-string v0, "im_group_join_mode"

    .line 79
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/b;->J0:I

    const-string v0, "tab_filter"

    .line 80
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/b;->K0:I

    return-void
.end method


# virtual methods
.method public b0()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/g/j0/b;->m:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/b;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/g/j0/b;->r:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget v2, v0, Le/a/a/g/j0/b;->s:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget v3, v0, Le/a/a/g/j0/b;->t:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget v4, v0, Le/a/a/g/j0/b;->u:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget v5, v0, Le/a/a/g/j0/b;->v:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget v6, v0, Le/a/a/g/j0/b;->w:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget v7, v0, Le/a/a/g/j0/b;->x:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 8
    iget v8, v0, Le/a/a/g/j0/b;->y:I

    invoke-virtual {v0, v8}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 9
    iget v9, v0, Le/a/a/g/j0/b;->z:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 10
    iget v10, v0, Le/a/a/g/j0/b;->A:I

    invoke-virtual {v0, v10}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 11
    iget v11, v0, Le/a/a/g/j0/b;->D:I

    invoke-virtual {v0, v11}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 12
    iget v12, v0, Le/a/a/g/j0/b;->E:I

    invoke-virtual {v0, v12}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 13
    iget v13, v0, Le/a/a/g/j0/b;->J:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 14
    iget v14, v0, Le/a/a/g/j0/b;->K:I

    invoke-virtual {v0, v14}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 15
    iget v15, v0, Le/a/a/g/j0/b;->L:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    .line 16
    iget v15, v0, Le/a/a/g/j0/b;->M:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    .line 17
    iget v15, v0, Le/a/a/g/j0/b;->N:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 18
    iget v15, v0, Le/a/a/g/j0/b;->O:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    .line 19
    iget v15, v0, Le/a/a/g/j0/b;->Q:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    .line 20
    iget v15, v0, Le/a/a/g/j0/b;->R:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v15

    .line 21
    iget v15, v0, Le/a/a/g/j0/b;->P:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v15

    .line 22
    iget v15, v0, Le/a/a/g/j0/b;->l0:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v15

    .line 23
    iget v15, v0, Le/a/a/g/j0/b;->S:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v15

    .line 24
    iget v15, v0, Le/a/a/g/j0/b;->B:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    .line 25
    iget v15, v0, Le/a/a/g/j0/b;->C:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v14

    const-string v14, "getString(participantsImBusinessFeatureFlagsIndex)"

    invoke-static {v15, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "imBusinessFeatureFlags"

    .line 26
    invoke-static {v15, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v1}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-static {v2}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v3}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v14, "readComposedStrings(imIds)"

    invoke-static {v3, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v4}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v14, "readComposedStrings(rawDestinations)"

    invoke-static {v4, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v5}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v14, "readComposedStrings(normalizedDestinations)"

    invoke-static {v5, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v6}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v14, "readComposedStrings(countryCodes)"

    invoke-static {v6, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v7}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v14, "readComposedStrings(tcIds)"

    invoke-static {v7, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v8}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 35
    invoke-static {v9}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 36
    invoke-static {v10}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 37
    invoke-static {v11}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 38
    invoke-virtual {v0, v12}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const-string v14, "readComposedStrings(names)"

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v13}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    const-string v14, "readComposedStrings(imageUrls)"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static/range {v26 .. v26}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v26, v14

    .line 41
    invoke-static/range {v16 .. v16}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v16, v14

    .line 42
    invoke-static/range {v17 .. v17}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    .line 43
    invoke-virtual {v0, v14}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v18, v13

    const-string v13, "readComposedStrings(spamTypes)"

    invoke-static {v14, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static/range {v19 .. v19}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    .line 45
    invoke-virtual {v0, v14}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    const-string v0, "readComposedStrings(companies)"

    invoke-static {v14, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static/range {v21 .. v21}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v20, v0

    .line 47
    invoke-static/range {v22 .. v22}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v21, v0

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 v22, v1

    .line 49
    invoke-static/range {v23 .. v23}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v23, v1

    .line 50
    invoke-static/range {v24 .. v24}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v24, v1

    .line 51
    invoke-static/range {v25 .. v25}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-static {v15}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    move-object/from16 v25, v15

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v0, v15, :cond_d

    move-object/from16 v15, v18

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v18, v8

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_d

    .line 54
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v28, v8

    move/from16 v8, v27

    :goto_0
    if-ge v8, v0, :cond_c

    .line 55
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move/from16 v30, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v29, v2

    .line 56
    new-instance v2, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    move-object/from16 v0, v22

    .line 57
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v31, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    iput-wide v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 59
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 61
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    .line 65
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    iput v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 67
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, v27

    .line 68
    :goto_1
    iput-boolean v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->j:Z

    .line 69
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    iput v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->k:I

    move-object/from16 v0, v26

    .line 71
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    iput v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    move-object/from16 v1, v16

    .line 73
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v33, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 74
    iput-wide v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    move-object/from16 v0, v17

    .line 75
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    iput v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 77
    move-object/from16 v1, v19

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    iput-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->q:Ljava/lang/String;

    .line 79
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    iput v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    move-object/from16 v1, v21

    .line 81
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->fromRemote(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v0

    .line 82
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->t:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-object/from16 v0, v23

    .line 83
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/16 v21, 0x0

    if-eqz v16, :cond_2

    .line 84
    invoke-static/range {v16 .. v16}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    cmp-long v16, v34, v36

    if-gez v16, :cond_1

    goto :goto_2

    :cond_1
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    :cond_2
    :goto_2
    move-object/from16 v23, v0

    move-object/from16 v0, v21

    .line 85
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->u:Ljava/lang/Long;

    .line 86
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 89
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 92
    :cond_4
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 95
    :cond_5
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 98
    :cond_6
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->r:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, v20

    .line 101
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 102
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    iput-wide v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->s:J

    goto :goto_3

    :cond_8
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    :goto_3
    move-object/from16 v0, v31

    .line 104
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 105
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    iput v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    :cond_9
    move-object/from16 v1, v25

    .line 107
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 108
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 109
    iput v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    goto :goto_4

    :cond_a
    move-object/from16 v31, v0

    :goto_4
    move-object/from16 v0, v18

    .line 110
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v25, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 111
    iput-wide v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    move-object/from16 v0, v24

    .line 112
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v3

    const-string v3, "null"

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_b

    .line 113
    sget-object v1, Lcom/truecaller/data/entity/SpamData;->Companion:Lcom/truecaller/data/entity/SpamData$b;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/truecaller/data/entity/SpamData$b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 114
    iput-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->w:Ljava/util/List;

    .line 115
    :cond_b
    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    move-object/from16 v2, v28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v24, v0

    move-object/from16 v3, v16

    move-object/from16 v26, v22

    move-object/from16 v2, v29

    move/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v22, v32

    move-object/from16 v16, v33

    goto/16 :goto_0

    :cond_c
    move-object/from16 v2, v28

    return-object v2

    .line 116
    :cond_d
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Inconsistent lengths in grouped fields"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()Lcom/truecaller/messaging/data/types/Conversation;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/g/j0/b;->d:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 2
    iget v3, v0, Le/a/a/g/j0/b;->Z:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    .line 3
    new-instance v4, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>()V

    .line 4
    iget v5, v0, Le/a/a/g/j0/b;->a:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 5
    iput-wide v5, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->a:J

    .line 6
    iget v5, v0, Le/a/a/g/j0/b;->b:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 7
    iput-wide v5, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->b:J

    .line 8
    iget v5, v0, Le/a/a/g/j0/b;->c:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    .line 9
    iput v5, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->c:I

    .line 10
    iput-wide v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->d:J

    .line 11
    iget v1, v0, Le/a/a/g/j0/b;->e:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 12
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->e:I

    .line 13
    iget v1, v0, Le/a/a/g/j0/b;->f:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 14
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->f:I

    .line 15
    iget v1, v0, Le/a/a/g/j0/b;->g:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->g:Ljava/lang/String;

    .line 17
    iget v1, v0, Le/a/a/g/j0/b;->i:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 18
    invoke-static {v1, v2}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->h:Ljava/lang/String;

    .line 19
    new-instance v1, Lw3/b/a/b;

    iget v2, v0, Le/a/a/g/j0/b;->j:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lw3/b/a/b;-><init>(J)V

    .line 20
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->i:Lw3/b/a/b;

    .line 21
    iget v1, v0, Le/a/a/g/j0/b;->k:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->j:Ljava/lang/String;

    .line 23
    iget v1, v0, Le/a/a/g/j0/b;->l:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iput-boolean v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->k:Z

    .line 25
    iget v1, v0, Le/a/a/g/j0/b;->m:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 26
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->l:I

    .line 27
    iget v1, v0, Le/a/a/g/j0/b;->n:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_1
    iput-boolean v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->n:Z

    .line 29
    iget v1, v0, Le/a/a/g/j0/b;->o:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 30
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->o:I

    .line 31
    iget v1, v0, Le/a/a/g/j0/b;->p:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 32
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->p:I

    .line 33
    iget v1, v0, Le/a/a/g/j0/b;->q:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 34
    :goto_2
    iput-boolean v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->q:Z

    .line 35
    iget v1, v0, Le/a/a/g/j0/b;->T:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 36
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->r:I

    .line 37
    iget v1, v0, Le/a/a/g/j0/b;->U:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 38
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->s:I

    .line 39
    iget v1, v0, Le/a/a/g/j0/b;->V:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 40
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->t:I

    .line 41
    iget v1, v0, Le/a/a/g/j0/b;->W:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 42
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->u:I

    .line 43
    iget v1, v0, Le/a/a/g/j0/b;->X:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 44
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->v:I

    .line 45
    iget v1, v0, Le/a/a/g/j0/b;->Y:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 46
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->w:I

    .line 47
    iput v3, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->x:I

    .line 48
    iget v1, v0, Le/a/a/g/j0/b;->r0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 49
    new-instance v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 50
    iget v3, v0, Le/a/a/g/j0/b;->s0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    iget v3, v0, Le/a/a/g/j0/b;->t0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    iget v3, v0, Le/a/a/g/j0/b;->u0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v10

    .line 53
    iget v3, v0, Le/a/a/g/j0/b;->v0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 54
    iget v3, v0, Le/a/a/g/j0/b;->w0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v13

    .line 55
    new-instance v14, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 56
    iget v3, v0, Le/a/a/g/j0/b;->x0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    .line 57
    iget v6, v0, Le/a/a/g/j0/b;->y0:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 58
    iget v15, v0, Le/a/a/g/j0/b;->z0:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v15

    .line 59
    iget v2, v0, Le/a/a/g/j0/b;->A0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 60
    invoke-direct {v14, v3, v6, v15, v2}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    .line 61
    iget v2, v0, Le/a/a/g/j0/b;->B0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v15

    .line 62
    iget v2, v0, Le/a/a/g/j0/b;->C0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v16

    .line 63
    iget v2, v0, Le/a/a/g/j0/b;->D0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v17

    .line 64
    iget v2, v0, Le/a/a/g/j0/b;->E0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v19

    .line 65
    iget v2, v0, Le/a/a/g/j0/b;->F0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v21, v5

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    .line 66
    :goto_3
    iget v2, v0, Le/a/a/g/j0/b;->G0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v22

    .line 67
    iget v2, v0, Le/a/a/g/j0/b;->H0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v24

    .line 68
    iget v2, v0, Le/a/a/g/j0/b;->I0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v26

    .line 69
    iget v2, v0, Le/a/a/g/j0/b;->J0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v27

    const/16 v28, 0x0

    const/high16 v29, 0x10000

    move-object v6, v1

    .line 70
    invoke-direct/range {v6 .. v29}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;I)V

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 71
    :goto_4
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->y:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 72
    iget v1, v0, Le/a/a/g/j0/b;->g0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 73
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->z:I

    .line 74
    iget v1, v0, Le/a/a/g/j0/b;->h0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 75
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->A:I

    .line 76
    iget v1, v0, Le/a/a/g/j0/b;->i0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-ne v1, v5, :cond_5

    move v1, v5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 77
    :goto_5
    iput-boolean v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->B:Z

    .line 78
    iget v1, v0, Le/a/a/g/j0/b;->j0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 79
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->C:I

    .line 80
    iget v1, v0, Le/a/a/g/j0/b;->k0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 81
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->D:I

    .line 82
    iget v1, v0, Le/a/a/g/j0/b;->m0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_6

    move v2, v5

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 83
    :goto_6
    iput-boolean v2, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->E:Z

    .line 84
    new-instance v1, Lw3/b/a/b;

    iget v2, v0, Le/a/a/g/j0/b;->m0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 85
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->F:Lw3/b/a/b;

    .line 86
    new-instance v1, Lw3/b/a/b;

    iget v2, v0, Le/a/a/g/j0/b;->n0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 87
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->G:Lw3/b/a/b;

    .line 88
    new-instance v1, Lw3/b/a/b;

    iget v2, v0, Le/a/a/g/j0/b;->o0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 89
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->H:Lw3/b/a/b;

    .line 90
    new-instance v1, Lw3/b/a/b;

    iget v2, v0, Le/a/a/g/j0/b;->p0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 91
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->I:Lw3/b/a/b;

    .line 92
    iget v1, v0, Le/a/a/g/j0/b;->q0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->L:Ljava/lang/String;

    .line 94
    iget v1, v0, Le/a/a/g/j0/b;->h:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/c/p/a;->S1(Ljava/lang/String;)[Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v1

    .line 95
    iget-object v2, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->J:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 96
    iget v1, v0, Le/a/a/g/j0/b;->K0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Le/a/a/g/j0/b;->K0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 97
    iput v1, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->K:I

    .line 98
    :cond_7
    invoke-virtual/range {p0 .. p0}, Le/a/a/g/j0/b;->o()Ljava/util/List;

    move-result-object v1

    .line 99
    iget-object v2, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 100
    iget-object v2, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
