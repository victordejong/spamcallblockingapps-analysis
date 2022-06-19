.class public final Le/a/a/g/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/x;


# instance fields
.field public final a:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/y;->a:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;
    .locals 6

    const-string v0, "inboxTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/g/y;->a:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const-string v3, "ConversationFilterSelector is not needed for Business tab"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    const-string p1, "\n        (\n        type IN (2, 3)\n            AND \n        history_events_count = 0 \n            AND \n        blacklist_count = 0 \n            AND \n        latest_message_id IS NOT NULL\n    ) AND split_criteria != 0\n             AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "\n        (split_criteria = 1 \n            OR\n        split_criteria = 2 \n            OR \n        blacklist_count > 0 \n            OR \n        ((top_spammer_count > 0 OR is_spam = 1) AND phonebook_count = 0 AND white_list_count = 0 AND outgoing_message_count = 0))\n             AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "\n        type IN (2, 3)\n            AND \n        history_events_count = 0 \n            AND \n        blacklist_count = 0 \n            AND \n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    :cond_4
    const-string p1, "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0))\n             AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    .line 5
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v2, :cond_7

    if-ne p1, v1, :cond_6

    const-string p1, "0"

    goto :goto_0

    .line 6
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_7
    const-string p1, "\n        (blacklist_count > 0 \n            OR \n        ((top_spammer_count > 0 OR is_spam = 1) AND phonebook_count = 0 AND white_list_count = 0 AND outgoing_message_count = 0))\n          AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    .line 7
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p1, "\n        type IN (2, 3)\n            AND \n        history_events_count = 0\n            AND \n        blacklist_count = 0 \n            AND \n         \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n            AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    :cond_a
    const-string p1, "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n             AND\n        latest_message_id IS NOT NULL\n    "

    :goto_0
    return-object p1
.end method
