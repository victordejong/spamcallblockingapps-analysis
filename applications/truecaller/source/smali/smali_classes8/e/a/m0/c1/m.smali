.class public final Le/a/m0/c1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 5

    const-string v0, "\n    CREATE TABLE msg_im_group_participants (\n        im_group_id TEXT NOT NULL,\n        im_peer_id TEXT NOT NULL,\n        roles INTEGER NOT NULL DEFAULT 0,\n        UNIQUE(im_group_id, im_peer_id)\n    )\n"

    const-string v1, "\n    CREATE TABLE msg_im_group_info (\n        im_group_id TEXT PRIMARY KEY,\n        title TEXT,\n        avatar TEXT,\n        invited_date INTEGER NOT NULL,\n        invited_by TEXT,\n        roles INTEGER NOT NULL DEFAULT 0,\n        actions INTEGER NOT NULL DEFAULT 0,\n        role_update_restriction_mask INTEGER NOT NULL DEFAULT 0,\n        role_update_mask INTEGER NOT NULL DEFAULT 0,\n        self_role_update_mask INTEGER NOT NULL DEFAULT 0,\n        notification_settings INTEGER NOT NULL DEFAULT 0,\n        history_status INTEGER NOT NULL DEFAULT 0,\n        history_sequence_num INTEGER NOT NULL DEFAULT -1,\n        history_message_count INTEGER NOT NULL DEFAULT 0,\n        are_participants_stale INTEGER NOT NULL DEFAULT 0,\n        current_sequence_number INTEGER NOT NULL DEFAULT 0,\n        invite_notification_date INTEGER NOT NULL DEFAULT 0,\n        invite_notification_count INTEGER NOT NULL DEFAULT 0,\n        join_mode INTEGER NOT NULL DEFAULT 0,\n        invite_key TEXT\n    )\n"

    const-string v2, "\n    CREATE INDEX idx_msg_im_group_info_are_participants_stale\n    ON msg_im_group_info (are_participants_stale)\n"

    const-string v3, "\n    CREATE TABLE msg_im_invite_group_info (\n        invite_key TEXT PRIMARY KEY,\n        title TEXT,\n        avatar TEXT,\n        user_count INTEGER NOT NULL DEFAULT 0,\n        user_list TEXT,\n        timestamp INTEGER NOT NULL\n    )\n"

    const-string v4, "\n    CREATE INDEX idx_msg_im_group_info_im_group_id\n    ON msg_im_group_info (im_group_id)\n"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le/a/m0/c1/g0;->c(Le/a/m0/c1/h0;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
