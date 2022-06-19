.class public final Le/a/n/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;


# direct methods
.method public static final A(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBlockedCall"

    if-eqz p1, :cond_0

    const-string p1, "calls"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "TruecallerInit.buildInte\u2026OTIFICATION_BLOCKED_CALL)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Le/a/a/r0/j;->l:Le/a/a/r0/j$b;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {p1, p0, v1, v0}, Le/a/a/r0/j$b;->a(Landroid/content/Context;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final A0(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2
    sget-object v0, Le/a/b/a/b/c;->a:Le/a/b/a/b/c;

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static B(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static B0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final C(Lcom/truecaller/profile/data/dto/OpenHours;)Le/a/b/b/b/a;
    .locals 1

    const-string v0, "$this$closesAt"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Le/a/n/g0;->k0(Ljava/lang/String;)Le/a/b/b/b/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final C0(Lcom/truecaller/data/entity/Contact;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result p0

    and-int/lit8 p0, p0, 0xd

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic D(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p5, 0x4

    and-int/lit8 p3, p5, 0x8

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    move-object p4, p5

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p5, p4}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final D0()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final E(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static synthetic E0(Le/a/b/b/c/p;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/b/b/c/p;->n8(IZ)V

    return-void
.end method

.method public static final F(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Ls1/u/s;->a:Ls1/u/s;

    return-object p0
.end method

.method public static final F0(Lu3/l0;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;
    .locals 2

    const-string v0, "$this$to422Error"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->Companion:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "response"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->access$getGson$cp()Le/m/e/k;

    move-result-object v0

    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0

    invoke-static {}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->access$getType$cp()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p0}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0, v1}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {v0, p0}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    const-string p0, "gson.fromJson(response.charStream(), type)"

    .line 7
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    return-object v0
.end method

.method public static final G(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "simInfo"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Le/a/b0/b/f/b;->a:Landroid/content/Context;

    invoke-static {p1}, Le/a/p5/s0/g;->h0(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget p0, p0, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    const-string p1, "getActiveSubscriptionInf\u2026tIndex(simInfo.slotIndex)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {p0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    :goto_0
    instance-of p1, p0, Ls1/l$a;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 6
    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final G0(Lcom/truecaller/data/entity/HistoryEvent;)Landroid/content/ContentValues;
    .locals 7

    const-string v0, "$this$toContentValues"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tc_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Le/a/l0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "normalized_number"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Le/a/l0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "raw_number"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    sget-object v1, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "number_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    const-string v3, "country_code"

    .line 10
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    const-string v3, "cached_name"

    .line 12
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "action"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    const-string v3, "filter_source"

    .line 18
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-wide v3, p0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "ringing_duration"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    const-string v3, "call_log_id"

    .line 22
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    iget-wide v3, p0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_4

    move-object v2, v1

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    iget-wide v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    const-string v2, "subscription_id"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "new"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_read"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    iget-object v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    const-string v2, "subscription_component_name"

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v1, p0, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tc_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object p0, p0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final H(Le/a/b/a/a/b/d/a$b;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/b/a/a/b/d/a$b<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string v0, "$this$getErrorStringId"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$a;

    if-eqz v0, :cond_0

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_generic:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_4

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$b;

    if-eqz v0, :cond_1

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_generic:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_4

    .line 3
    :cond_1
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$c;

    if-eqz v0, :cond_2

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_network:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_4

    .line 4
    :cond_2
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$e;

    if-eqz v0, :cond_3

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_generic:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    .line 5
    :cond_3
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$f;

    if-eqz v0, :cond_4

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_generic:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    .line 6
    :cond_4
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$d;

    if-eqz v0, :cond_5

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_network:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    .line 7
    :cond_5
    instance-of v0, p0, Le/a/b/a/a/b/d/a$b$g;

    if-eqz v0, :cond_b

    .line 8
    check-cast p0, Le/a/b/a/a/b/d/a$b$g;

    .line 9
    iget-object p0, p0, Le/a/b/a/a/b/d/a$b$g;->b:Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    if-eqz p0, :cond_6

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;->getErrors()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->getErrorType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_7

    goto :goto_1

    .line 11
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_validation_invalidCharacter:I

    goto :goto_3

    :cond_8
    :goto_1
    if-nez p0, :cond_9

    goto :goto_2

    .line 12
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_a

    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_validation_invalidWord:I

    goto :goto_3

    .line 13
    :cond_a
    :goto_2
    sget p0, Lcom/truecaller/bizmon/R$string;->profile_error_generic:I

    .line 14
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_b
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final H0(Landroid/database/Cursor;Le/a/k3/c;Z)Le/a/l0/u/d/c;
    .locals 3

    const-string v0, "$this$toHistoryEventCursor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfoReader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/l0/u/d/c;

    .line 2
    new-instance v1, Le/a/k3/j/d;

    .line 3
    sget-object v2, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    invoke-direct {v1, p0, p1, v2}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;Le/a/k3/c;Le/a/k3/l/j;)V

    .line 4
    new-instance p1, Le/a/k3/j/c;

    invoke-direct {p1, p0}, Le/a/k3/j/c;-><init>(Landroid/database/Cursor;)V

    .line 5
    invoke-direct {v0, p0, v1, p1, p2}, Le/a/l0/u/d/c;-><init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/j/c;Z)V

    return-object v0
.end method

.method public static synthetic I(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ZZILjava/lang/Object;)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 1
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;->b(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ZZ)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;
    .locals 2

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Le/a/k3/b;

    .line 2
    new-instance v0, Le/a/k3/c$a;

    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    invoke-direct {v0, v1}, Le/a/k3/c$a;-><init>(Ljava/util/Map;)V

    invoke-direct {p1, v0}, Le/a/k3/b;-><init>(Le/a/k3/c$a;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Le/a/n/g0;->H0(Landroid/database/Cursor;Le/a/k3/c;Z)Le/a/l0/u/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;J)J
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final J0(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;Le/a/p5/c0;Le/a/b0/q/h0;)Lcom/truecaller/data/entity/Contact;
    .locals 4

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {p0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    .line 3
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p3, 0x7f1202d2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    iget-object v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 6
    iget-object v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 7
    invoke-interface {p3, v0}, Le/a/b0/q/h0;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p3, 0x7f120f98

    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    invoke-interface {p2, p3, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 9
    :cond_4
    iget-object p2, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 10
    invoke-interface {p3, p2}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p3}, Le/a/b0/q/h0;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    iget-object p2, p1, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 12
    :goto_4
    invoke-virtual {p0, p2}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method public static final K()Landroid/net/Uri;
    .locals 3

    const-string v0, "truecaller://"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final K0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$withoutPlus"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic L(Le/a/h/d/d;Lcom/truecaller/data/entity/Number;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/h/d/d;->a(Lcom/truecaller/data/entity/Number;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p5, 0x2

    :cond_0
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    .line 1
    invoke-interface/range {v0 .. v6}, Le/a/b0/q/b;->d(JLjava/lang/String;ZILs1/z/b/l;)Ls1/k;

    move-result-object p0

    return-object p0
.end method

.method public static final M(Lcom/truecaller/profile/data/dto/OpenHours;)Le/a/b/b/b/a;
    .locals 1

    const-string v0, "$this$opensAt"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Le/a/n/g0;->k0(Ljava/lang/String;)Le/a/b/b/b/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$privacyPolicyUrl"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "https://privacy.truecaller.com/privacy-policy"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    const-string p0, "https://www.truecaller.com/brazil-privacy-policy"

    goto :goto_0

    :cond_2
    const-string p0, "https://www.truecaller.com/south-africa-privacy-policy"

    goto :goto_0

    :cond_3
    const-string p0, "https://www.truecaller.com/california-privacy-policy"

    goto :goto_0

    :cond_4
    const-string p0, "https://privacy.truecaller.com/privacy-policy-eu"

    :goto_0
    return-object p0
.end method

.method public static final O(Le/a/b/o/c/b/b;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$getResolvedName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/o/c/b/b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, ""

    if-nez v0, :cond_2

    .line 3
    iget-object p0, p0, Le/a/b/o/c/b/b;->d:Ljava/lang/String;

    if-eqz p0, :cond_6

    :goto_2
    move-object v3, p0

    goto :goto_3

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/b/o/c/b/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-nez v1, :cond_5

    .line 6
    iget-object p0, p0, Le/a/b/o/c/b/b;->e:Ljava/lang/String;

    if-eqz p0, :cond_6

    goto :goto_2

    .line 7
    :cond_5
    iget-object v3, p0, Le/a/b/o/c/b/b;->b:Ljava/lang/String;

    :cond_6
    :goto_3
    return-object v3
.end method

.method public static final P(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Lx3/a0<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/b/a/a/b/d/a<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/b/l/r;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/b/l/r;

    iget v1, v0, Le/a/b/l/r;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b/l/r;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b/l/r;

    invoke-direct {v0, p1}, Le/a/b/l/r;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/b/l/r;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b/l/r;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput v4, v0, Le/a/b/l/r;->e:I

    invoke-interface {p0, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p1, Lx3/a0;

    .line 6
    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 7
    iget-object p0, p1, Lx3/a0;->b:Ljava/lang/Object;

    if-nez p0, :cond_4

    .line 8
    new-instance p0, Le/a/b/a/a/b/d/a$a;

    invoke-direct {p0}, Le/a/b/a/a/b/d/a$a;-><init>()V

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Le/a/b/a/a/b/d/a$c;

    invoke-direct {p1, p0}, Le/a/b/a/a/b/d/a$c;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_2
    return-object p0

    .line 10
    :cond_5
    iget-object p0, p1, Lx3/a0;->a:Lu3/k0;

    .line 11
    iget v0, p0, Lu3/k0;->e:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1a6

    if-eq v0, v1, :cond_9

    const/16 p1, 0x1f4

    if-eq v0, p1, :cond_8

    const/16 p1, 0x193

    if-eq v0, p1, :cond_7

    const/16 p1, 0x194

    if-eq v0, p1, :cond_6

    .line 12
    new-instance p1, Le/a/b/a/a/b/d/a$b$f;

    .line 13
    iget-object p0, p0, Lu3/k0;->d:Ljava/lang/String;

    .line 14
    invoke-direct {p1, v3, p0}, Le/a/b/a/a/b/d/a$b$f;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 15
    :cond_6
    new-instance p0, Le/a/b/a/a/b/d/a$b$e;

    invoke-direct {p0, p1}, Le/a/b/a/a/b/d/a$b$e;-><init>(I)V

    goto :goto_3

    .line 16
    :cond_7
    new-instance p0, Le/a/b/a/a/b/d/a$b$b;

    invoke-direct {p0, p1}, Le/a/b/a/a/b/d/a$b$b;-><init>(I)V

    goto :goto_3

    .line 17
    :cond_8
    new-instance p0, Le/a/b/a/a/b/d/a$b$c;

    invoke-direct {p0, p1}, Le/a/b/a/a/b/d/a$b$c;-><init>(I)V

    :goto_3
    move-object p1, p0

    goto :goto_5

    .line 18
    :cond_9
    new-instance p0, Le/a/b/a/a/b/d/a$b$g;

    .line 19
    iget-object p1, p1, Lx3/a0;->c:Lu3/l0;

    if-eqz p1, :cond_a

    .line 20
    invoke-static {p1}, Le/a/n/g0;->F0(Lu3/l0;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;

    move-result-object p1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    :goto_4
    invoke-direct {p0, v1, p1}, Le/a/b/a/a/b/d/a$b$g;-><init>(ILcom/truecaller/bizmon/newBusiness/data/BusinessAPIErrorResponse;)V

    goto :goto_3

    .line 21
    :cond_b
    new-instance p1, Le/a/b/a/a/b/d/a$b$a;

    invoke-direct {p1, v1}, Le/a/b/a/a/b/d/a$b$a;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    return-object p1

    :catch_0
    move-exception p0

    .line 22
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_d

    :goto_6
    new-instance p0, Le/a/b/a/a/b/d/a$b$d;

    const/16 p1, 0x259

    invoke-direct {p0, p1}, Le/a/b/a/a/b/d/a$b$d;-><init>(I)V

    return-object p0

    .line 23
    :cond_d
    new-instance p1, Le/a/b/a/a/b/d/a$b$f;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {p1, v3, v0}, Le/a/b/a/a/b/d/a$b$f;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S()Le/a/b0/p/g/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->TAGGING:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/b0/p/g/b;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/p/g/b;

    return-object v0
.end method

.method public static final T(Lu3/g0;)Le/a/b0/b/e;
    .locals 1

    const-string v0, "$this$targetDomain"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Le/a/b0/b/e;

    invoke-virtual {p0, v0}, Lu3/g0;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/b0/b/e;

    return-object p0
.end method

.method public static final U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$termsOfServiceUrl"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const-string p0, "https://www.truecaller.com/terms-of-service#row"

    goto :goto_1

    :cond_2
    const-string p0, "https://www.truecaller.com/terms-of-service#eu"

    :goto_1
    return-object p0
.end method

.method public static final V(IILandroid/content/Intent;Ls1/z/b/l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x3e9

    if-ne p0, v2, :cond_5

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_2

    const-string p0, "speed_dial_key"

    .line 1
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, p1

    :goto_2
    const/4 p2, 0x2

    new-instance v2, Ls1/d0/i;

    const/16 v3, 0x9

    invoke-direct {v2, p2, v3}, Ls1/d0/i;-><init>(II)V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v2, p2}, Ls1/d0/i;->d(I)Z

    move-result p2

    if-eqz p2, :cond_3

    move v1, v0

    :cond_3
    if-eqz v1, :cond_4

    move-object p1, p0

    :cond_4
    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p3, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/s;

    goto :goto_3

    :cond_5
    move v0, v1

    :cond_6
    :goto_3
    return v0
.end method

.method public static final W(Le/a/h/p;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 10

    move-object v0, p0

    const-string v1, "$this$highlightIfMatched"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "searchMatcher"

    move-object v2, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pattern"

    move-object v3, p2

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "originalValue"

    move-object v4, p3

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formattedValue"

    move-object v5, p4

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v9, Le/a/h/x;

    invoke-direct {v9, p0}, Le/a/h/x;-><init>(Le/a/h/p;)V

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v9}, Le/a/n/g0;->h0(Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLs1/z/b/l;)Z

    move-result v0

    return v0
.end method

.method public static final X(Le/a/h/g0;Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Z
    .locals 10

    move-object v0, p0

    const-string v1, "$this$highlightIfMatched"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "searchMatcher"

    move-object v2, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pattern"

    move-object v3, p2

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "originalValue"

    move-object v4, p3

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formattedValue"

    move-object v5, p4

    invoke-static {p4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v9, Le/a/h/w;

    invoke-direct {v9, p0}, Le/a/h/w;-><init>(Le/a/h/g0;)V

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v9}, Le/a/n/g0;->h0(Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLs1/z/b/l;)Z

    move-result v0

    return v0
.end method

.method public static final Y(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "$this$highlightSafe"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, p3, :cond_1

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    .line 4
    invoke-virtual {v0, p0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final Z(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "$this$isAccessibilityServiceEnabled"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/truecaller/callrecording/service/TrueAccessibilityService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_accessibility_services"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 3
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    const-string v3, "colonSplitter.next()"

    invoke-static {p0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static final a(Landroid/content/Context;)Le/a/e3/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.truecaller.call_alert.CallAlertSupportProvider"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/e3/d;

    invoke-interface {p0}, Le/a/e3/d;->E()Le/a/e3/c;

    move-result-object p0

    return-object p0
.end method

.method public static final a0(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 1

    const-string v0, "$this$isCallHidden"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {v0, p0}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Ljava/lang/String;)Lcom/truecaller/common/network/KnownDomain;
    .locals 4

    .line 1
    sget-object v0, Le/a/b0/e/e;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, p0, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3
    sget-object p0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_REGION_1:Lcom/truecaller/common/network/KnownDomain;

    if-eqz p0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object p0, Lcom/truecaller/common/network/KnownDomain;->DOMAIN_OTHER_REGIONS:Lcom/truecaller/common/network/KnownDomain;

    :goto_1
    return-object p0
.end method

.method public static final b0(Le/a/e4/p;)Z
    .locals 1

    const-string v0, "$this$isMultiSimReady"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Le/a/e4/p;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Le/a/e4/p;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Source unknown: "

    .line 1
    invoke-static {v2, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Edited"

    goto :goto_1

    :cond_1
    const-string p0, "Migrated"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "Created"

    :goto_1
    return-object p0
.end method

.method public static final c0(Lcom/truecaller/data/entity/Contact;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static final d0(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/OpenHours;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$this$isSameTime"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getOpens()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/businessV2/OpenHours;->getCloses()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static final e(Le/a/d0/a/l;Le/a/d0/a/x;Ls1/z/b/l;Ls1/z/b/a;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 2
    :goto_0
    instance-of v0, p1, Le/a/d0/a/x$b;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_1
    instance-of p2, p1, Le/a/d0/a/x$c;

    if-eqz p2, :cond_2

    .line 5
    check-cast p1, Le/a/d0/a/x$c;

    invoke-interface {p0, p1}, Le/a/d0/a/l;->D5(Le/a/d0/a/x$c;)V

    .line 6
    invoke-interface {p3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_2
    instance-of p2, p1, Le/a/d0/a/x$a;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Le/a/d0/a/x$a;

    .line 9
    iget-object p2, p1, Le/a/d0/a/x$a;->a:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Le/a/d0/a/x$a;->b:Ljava/lang/String;

    .line 11
    invoke-interface {p0, p2, p1}, Le/a/d0/a/l;->N5(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {p3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public static final e0(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;Z)Z
    .locals 4

    const-string v0, "$this$isValid"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/multisim/SimInfo;->i:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_8

    if-eqz p2, :cond_4

    .line 2
    invoke-static {p0, p1}, Le/a/n/g0;->G(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v2

    :goto_3
    if-nez p0, :cond_7

    goto :goto_6

    :cond_4
    iget-object p0, p0, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move p0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move p0, v2

    :goto_5
    if-nez p0, :cond_7

    :goto_6
    move p0, v2

    goto :goto_7

    :cond_7
    move p0, v1

    :goto_7
    if-eqz p0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    return v1
.end method

.method public static final f(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "$this$appendIfNotEmpty"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    const-string p2, ", "

    .line 2
    invoke-static {p2, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    return-void
.end method

.method public static final f0(Le/a/b0/p/c;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "$this$loadImageResource"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 2
    iget-object p0, p0, Le/a/b0/p/c;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public static synthetic g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Le/a/n/g0;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final g0(Landroidx/recyclerview/widget/RecyclerView;Ln3/b0/a/y;I)V
    .locals 1

    const-string v0, "$this$moveSnapTo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 2
    new-instance v0, Le/a/b/a/a/c/a;

    invoke-direct {v0, p0, p2, p1}, Le/a/b/a/a/c/a;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILn3/b0/a/y;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static h(Le/a/b0/g/a$a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    invoke-virtual {p0}, Le/a/b0/g/a;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final h0(Le/a/w4/t/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLs1/z/b/l;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/w4/t/a/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ls1/z/b/l<",
            "-",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p7

    const-string v6, "searchMatcher"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "pattern"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "originalValue"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "formattedValue"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "action"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x20

    if-nez p4, :cond_18

    if-eqz v4, :cond_0

    goto/16 :goto_11

    :cond_0
    if-eqz p6, :cond_1

    new-array v1, v8, [C

    aput-char v9, v1, v7

    .line 1
    invoke-static {v0, v1, v7, v7, v6}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v1, v7

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "$this$fuzzyFindSubstring"

    .line 3
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "what"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v7

    .line 5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 6
    invoke-static {v9}, Le/a/w4/t/a/a;->b(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 7
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    .line 9
    invoke-static {v9}, Le/a/w4/t/a/c;->c(C)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v9}, Le/a/w4/t/a/c;->d(C)Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v8

    goto :goto_4

    :cond_5
    move v9, v7

    :goto_4
    if-eqz v9, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 12
    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v9

    .line 13
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 14
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_e

    .line 15
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v7

    .line 16
    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 17
    invoke-static {v10}, Le/a/w4/t/a/a;->b(C)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 18
    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 20
    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    .line 21
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 22
    :cond_a
    invoke-static {v9}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 24
    check-cast v2, Ls1/u/x;

    invoke-virtual {v2}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_8
    move-object v9, v2

    check-cast v9, Ls1/u/y;

    invoke-virtual {v9}, Ls1/u/y;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ls1/u/w;

    .line 25
    iget-object v10, v10, Ls1/u/w;->b:Ljava/lang/Object;

    .line 26
    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    .line 27
    invoke-static {v10}, Le/a/w4/t/a/c;->c(C)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-static {v10}, Le/a/w4/t/a/c;->d(C)Z

    move-result v10

    if-nez v10, :cond_c

    move v10, v8

    goto :goto_9

    :cond_c
    move v10, v7

    :goto_9
    if-eqz v10, :cond_b

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 28
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 29
    invoke-static {v6, v2, v8, v7}, Ls1/u/i;->g1(Ljava/lang/Iterable;IIZ)Ljava/util/List;

    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_e

    .line 31
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/util/List;

    .line 32
    invoke-static {v4, v9}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 33
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_b

    .line 34
    :cond_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls1/k;

    .line 35
    iget-object v11, v10, Ls1/k;->a:Ljava/lang/Object;

    .line 36
    check-cast v11, Ljava/lang/Character;

    invoke-virtual {v11}, Ljava/lang/Character;->charValue()C

    move-result v11

    .line 37
    iget-object v10, v10, Ls1/k;->b:Ljava/lang/Object;

    .line 38
    check-cast v10, Ls1/u/w;

    .line 39
    iget-object v10, v10, Ls1/u/w;->b:Ljava/lang/Object;

    .line 40
    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    if-ne v11, v10, :cond_12

    move v10, v8

    goto :goto_a

    :cond_12
    move v10, v7

    :goto_a
    if-nez v10, :cond_11

    move v9, v7

    goto :goto_c

    :cond_13
    :goto_b
    move v9, v8

    :goto_c
    if-eqz v9, :cond_f

    goto :goto_d

    :cond_14
    const/4 v6, 0x0

    .line 41
    :goto_d
    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_15

    .line 42
    invoke-static {v6}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/u/w;

    .line 43
    iget v2, v2, Ls1/u/w;->a:I

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/u/w;

    .line 45
    iget v4, v4, Ls1/u/w;->a:I

    add-int/2addr v4, v8

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 47
    new-instance v6, Ls1/k;

    invoke-direct {v6, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_16

    .line 48
    invoke-interface {v5, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_17

    if-eqz v1, :cond_2

    :cond_17
    move v1, v8

    goto/16 :goto_1

    :cond_18
    :goto_11
    if-eqz p6, :cond_19

    new-array v10, v8, [C

    aput-char v9, v10, v7

    .line 49
    invoke-static {v0, v10, v7, v7, v6}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_19
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 50
    :goto_12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v0, v7

    :goto_13
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_48

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 51
    invoke-static {v3, v2, v0, v0, v6}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v6

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 53
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-ltz v11, :cond_1a

    move v11, v8

    goto :goto_14

    :cond_1a
    move v11, v0

    :goto_14
    if-eqz v11, :cond_1b

    goto :goto_15

    :cond_1b
    const/4 v6, 0x0

    :goto_15
    if-eqz v6, :cond_44

    .line 54
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 55
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 56
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    goto/16 :goto_29

    .line 57
    :cond_1c
    iput-object v10, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    if-eqz p4, :cond_1d

    .line 58
    invoke-static {v10}, Le/a/w4/t/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 59
    iput-object v10, v1, Le/a/w4/t/a/e;->e:Ljava/util/List;

    .line 60
    :cond_1d
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 61
    iget-object v10, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    goto/16 :goto_29

    .line 62
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x32

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    .line 63
    iput v0, v1, Le/a/w4/t/a/e;->a:I

    iput v0, v1, Le/a/w4/t/a/e;->b:I

    .line 64
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_2f

    .line 65
    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-static {v11, v10}, Le/a/w4/t/a/c;->b(Ljava/lang/String;Ljava/util/List;)[Le/a/w4/t/a/c$a;

    move-result-object v11

    move v12, v0

    .line 66
    :goto_16
    array-length v13, v11

    if-ge v12, v13, :cond_21

    .line 67
    invoke-virtual {v1, v11, v12, v4}, Le/a/w4/t/a/e;->a([Le/a/w4/t/a/c$a;IZ)Z

    move-result v13

    if-eqz v13, :cond_1f

    goto :goto_17

    :cond_1f
    if-eqz v4, :cond_20

    .line 68
    iput v0, v1, Le/a/w4/t/a/e;->a:I

    .line 69
    iput v0, v1, Le/a/w4/t/a/e;->b:I

    goto :goto_17

    :cond_20
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_21
    :goto_17
    if-eqz v4, :cond_41

    .line 70
    iget v11, v1, Le/a/w4/t/a/e;->a:I

    iget v12, v1, Le/a/w4/t/a/e;->b:I

    if-ne v11, v12, :cond_41

    .line 71
    iget-object v11, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2b

    if-eq v11, v12, :cond_41

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v13, 0x2

    const/16 v14, 0x30

    if-eq v11, v12, :cond_22

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v13, :cond_41

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v14, :cond_41

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v14, :cond_41

    .line 72
    :cond_22
    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "+"

    if-lt v11, v13, :cond_27

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v14, :cond_27

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v14, :cond_27

    .line 73
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 74
    invoke-static {v11}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_23

    goto :goto_19

    .line 75
    :cond_23
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    .line 76
    new-array v14, v13, [C

    move v15, v0

    :goto_18
    if-ge v0, v13, :cond_25

    .line 77
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v16

    if-nez v16, :cond_24

    add-int/lit8 v16, v15, 0x1

    .line 78
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    aput-char v17, v14, v15

    move/from16 v15, v16

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_25
    if-ne v15, v13, :cond_26

    goto :goto_19

    .line 79
    :cond_26
    new-instance v11, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v11, v14, v0, v15}, Ljava/lang/String;-><init>([CII)V

    .line 80
    :goto_19
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    .line 81
    :cond_27
    iget-object v8, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    .line 82
    sget-object v0, Le/a/o5/e1;->a:Ljava/lang/ThreadLocal;

    if-nez v8, :cond_28

    goto/16 :goto_1d

    .line 83
    :cond_28
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Le/a/b0/q/j;->h(Landroid/content/Context;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    goto :goto_1a

    .line 86
    :cond_29
    iget-object v0, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->a:Ljava/lang/String;

    .line 87
    :goto_1a
    invoke-static {v0}, Le/a/b0/q/j;->d(Ljava/lang/String;)Lcom/truecaller/common/network/country/CountryListDto$a;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 88
    iget-object v11, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->d:Ljava/lang/String;

    if-eqz v11, :cond_2d

    .line 89
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 90
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a

    goto :goto_1b

    :cond_2a
    const/4 v11, 0x0

    goto :goto_1c

    :cond_2b
    :goto_1b
    const/4 v11, 0x1

    :goto_1c
    if-nez v11, :cond_2c

    goto :goto_1d

    .line 91
    :cond_2c
    :try_start_0
    sget-object v11, Le/a/o5/e1;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/m/f/a/o;

    .line 92
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v13

    iget-object v15, v0, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v14, v8

    move-object/from16 v18, v11

    .line 93
    invoke-virtual/range {v13 .. v18}, Le/m/f/a/j;->S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V

    .line 94
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    sget-object v12, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    invoke-virtual {v0, v11, v12}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1e

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Le/m/f/a/e;->toString()Ljava/lang/String;

    :cond_2d
    :goto_1d
    const/4 v0, 0x0

    .line 96
    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2e

    .line 97
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    :cond_2e
    iput-object v8, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    .line 99
    invoke-static {v8, v10}, Le/a/w4/t/a/c;->b(Ljava/lang/String;Ljava/util/List;)[Le/a/w4/t/a/c$a;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 100
    invoke-virtual {v1, v0, v8, v10}, Le/a/w4/t/a/e;->a([Le/a/w4/t/a/c$a;IZ)Z

    move-result v0

    move/from16 v19, v10

    move v10, v0

    move v0, v8

    move/from16 v8, v19

    goto/16 :goto_29

    .line 101
    :cond_2f
    iget-object v0, v1, Le/a/w4/t/a/e;->c:Ljava/lang/String;

    invoke-static {v0, v10}, Le/a/w4/t/a/c;->b(Ljava/lang/String;Ljava/util/List;)[Le/a/w4/t/a/c$a;

    move-result-object v0

    const/4 v8, 0x0

    .line 102
    :goto_1f
    array-length v10, v0

    if-ge v8, v10, :cond_41

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move v15, v8

    .line 103
    :goto_20
    iget-object v2, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_3d

    .line 104
    aget-object v2, v0, v15

    iget-object v2, v2, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    aget-object v2, v2, v14

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_31

    add-int/lit8 v14, v14, 0x1

    .line 106
    aget-object v11, v0, v15

    iget-object v11, v11, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    array-length v11, v11

    if-lt v14, v11, :cond_30

    const/4 v2, 0x0

    .line 107
    iput v2, v1, Le/a/w4/t/a/e;->b:I

    iput v2, v1, Le/a/w4/t/a/e;->a:I

    goto/16 :goto_23

    :cond_30
    const/4 v11, 0x0

    .line 108
    :cond_31
    iget-object v3, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 109
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Le/a/w4/t/a/a;->b(C)C

    move-result v4

    if-eq v3, v4, :cond_39

    .line 110
    invoke-static {v4}, Le/a/w4/t/a/c;->c(C)Z

    move-result v3

    if-eqz v3, :cond_37

    add-int/lit8 v11, v11, 0x1

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v11, v2, :cond_35

    add-int/lit8 v14, v14, 0x1

    .line 112
    aget-object v2, v0, v15

    iget-object v2, v2, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v14, v2, :cond_33

    if-eqz v13, :cond_32

    const/4 v2, 0x0

    .line 113
    iput v2, v1, Le/a/w4/t/a/e;->b:I

    iput v2, v1, Le/a/w4/t/a/e;->a:I

    goto/16 :goto_23

    :cond_32
    const/4 v2, 0x0

    add-int/lit8 v15, v15, 0x1

    move v11, v2

    move v14, v11

    goto :goto_21

    :cond_33
    const/4 v2, 0x0

    move v11, v2

    .line 114
    :goto_21
    array-length v2, v0

    if-lt v15, v2, :cond_34

    .line 115
    iput v11, v1, Le/a/w4/t/a/e;->b:I

    iput v11, v1, Le/a/w4/t/a/e;->a:I

    move v2, v11

    goto :goto_23

    :cond_34
    move v2, v11

    goto :goto_22

    :cond_35
    const/4 v2, 0x0

    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :goto_22
    if-nez v10, :cond_36

    .line 116
    aget-object v3, v0, v8

    iget-object v3, v3, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Le/a/w4/t/a/c;->c(C)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v12, 0x1

    :cond_36
    add-int/lit8 v10, v10, -0x1

    move v11, v2

    goto :goto_25

    :cond_37
    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v10, v11

    add-int/lit8 v14, v14, 0x1

    .line 117
    aget-object v2, v0, v15

    iget-object v2, v2, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v14, v2, :cond_38

    const/4 v2, 0x0

    .line 118
    iput v2, v1, Le/a/w4/t/a/e;->b:I

    iput v2, v1, Le/a/w4/t/a/e;->a:I

    goto :goto_23

    :cond_38
    const/4 v2, 0x0

    goto :goto_24

    :cond_39
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v3, v10, 0x1

    .line 119
    iget-object v4, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v11, v2, :cond_3c

    add-int/lit8 v15, v15, 0x1

    .line 120
    array-length v2, v0

    if-lt v15, v2, :cond_3b

    .line 121
    iget-object v2, v1, Le/a/w4/t/a/e;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v10, v2, :cond_3a

    add-int/lit8 v15, v15, -0x1

    goto :goto_26

    :cond_3a
    const/4 v2, 0x0

    .line 122
    iput v2, v1, Le/a/w4/t/a/e;->b:I

    iput v2, v1, Le/a/w4/t/a/e;->a:I

    :goto_23
    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    goto :goto_27

    :cond_3b
    const/4 v14, 0x0

    move v2, v14

    :goto_24
    move v11, v2

    move v13, v11

    goto :goto_25

    :cond_3c
    const/4 v2, 0x0

    move v13, v2

    :goto_25
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p5

    goto/16 :goto_20

    :cond_3d
    :goto_26
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 123
    aget-object v4, v0, v8

    iget v4, v4, Le/a/w4/t/a/c$a;->d:I

    iput v4, v1, Le/a/w4/t/a/e;->a:I

    if-eqz v12, :cond_3e

    add-int/lit8 v4, v4, 0x1

    .line 124
    iput v4, v1, Le/a/w4/t/a/e;->a:I

    .line 125
    :cond_3e
    aget-object v4, v0, v15

    iget v4, v4, Le/a/w4/t/a/c$a;->d:I

    add-int/2addr v4, v11

    iput v4, v1, Le/a/w4/t/a/e;->b:I

    .line 126
    aget-object v10, v0, v15

    iget v10, v10, Le/a/w4/t/a/c$a;->e:I

    if-le v4, v10, :cond_3f

    .line 127
    aget-object v4, v0, v15

    iget v4, v4, Le/a/w4/t/a/c$a;->e:I

    iput v4, v1, Le/a/w4/t/a/e;->b:I

    :cond_3f
    move v4, v3

    move v3, v2

    move v2, v4

    :goto_27
    if-eqz v2, :cond_40

    move v10, v3

    move v2, v4

    goto :goto_28

    :cond_40
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    goto/16 :goto_1f

    :cond_41
    const/4 v0, 0x0

    const/4 v2, 0x1

    move v10, v0

    .line 128
    :goto_28
    iget v0, v1, Le/a/w4/t/a/e;->b:I

    iget v3, v1, Le/a/w4/t/a/e;->a:I

    move v8, v2

    if-le v0, v3, :cond_42

    move v0, v10

    move v10, v8

    goto :goto_29

    :cond_42
    move v0, v10

    :goto_29
    if-eqz v10, :cond_43

    goto :goto_2a

    :cond_43
    const/4 v6, 0x0

    :goto_2a
    if-eqz v6, :cond_44

    .line 129
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget v3, v1, Le/a/w4/t/a/e;->a:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Le/a/w4/t/a/e;->b:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 130
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    :cond_44
    const/4 v4, 0x0

    :goto_2b
    if-eqz v4, :cond_45

    .line 131
    invoke-interface {v5, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_2c

    :cond_45
    const/4 v2, 0x0

    :goto_2c
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_47

    if-eqz v7, :cond_46

    goto :goto_2d

    :cond_46
    move v7, v0

    goto :goto_2e

    :cond_47
    :goto_2d
    move v7, v8

    :goto_2e
    const/4 v6, 0x6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    goto/16 :goto_13

    :cond_48
    move v1, v7

    :cond_49
    return v1
.end method

.method public static i(Le/a/b0/g/a$a;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    invoke-virtual {p0}, Le/a/b0/g/a;->H()I

    move-result p0

    return p0
.end method

.method public static final i0(Landroid/content/Context;)V
    .locals 7

    const-string v0, "$this$openAccessibilitySettings"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "context"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v4, Le/a/k0/n/a/a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/k0/n/a/a;-><init>(Landroid/content/Context;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public static j(Le/a/b0/g/a$a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    invoke-virtual {p0}, Le/a/b0/g/a;->I()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final j0(Landroidx/fragment/app/Fragment;ILjava/lang/String;Z)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fragment.activity ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Le/a/h/c/a;

    invoke-direct {v1}, Le/a/h/c/a;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2, v2}, Ln3/r/a/k;->setStyle(II)V

    .line 4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "speed_dial_key"

    .line 5
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "speed_dial_value"

    .line 6
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "show_options"

    .line 7
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/16 p1, 0x3e9

    .line 9
    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    const/4 p0, 0x2

    const/4 p1, 0x0

    .line 10
    invoke-static {v1, v0, p1, p0, p1}, Le/a/e/a/c2;->QA(Le/a/e/a/c2;Ln3/r/a/l;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final k(Landroid/widget/TextView;Z)V
    .locals 1

    const-string v0, "$this$applyBold"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method public static final k0(Ljava/lang/String;)Le/a/b/b/b/a;
    .locals 5

    const-string v0, ":"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v1, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {p0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 5
    new-instance v1, Le/a/b/b/b/a;

    invoke-direct {v1, v0, p0}, Le/a/b/b/b/a;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static final l(Landroid/content/Context;)Le/a/b/a/g/b;
    .locals 19

    const-class v0, Le/a/h5/s;

    const-class v1, Le/a/d3/a;

    const-class v2, Le/a/g5/a0;

    const-class v3, Le/a/m4/b;

    const-class v4, Le/a/k4/e;

    const-string v5, "$this$buildBusinessProfileComponent"

    move-object/from16 v6, p0

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v5

    const-string v7, "ApplicationBase.getAppBase()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v5}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v10

    const-string v7, "appBase.commonGraph"

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Le/a/b0/g/a;->K()Le/a/q2/e;

    move-result-object v12

    const-string v7, "appBase.analyticsComponent"

    invoke-static {v12, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5}, Le/a/b0/g/a;->V()Le/a/p5/o0;

    move-result-object v11

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "EntryPointAccessors.from\u2026kerComponent::class.java)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v5

    check-cast v14, Le/a/k4/e;

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EntryPointAccessors.from\u2026ileComponent::class.java)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le/a/m4/b;

    const-string v6, "EntryPointAccessors.from\u2026gerComponent::class.java)"

    .line 7
    invoke-static {v2, v6}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Le/a/g5/a0;

    .line 8
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v6

    invoke-static {v6, v1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "EntryPointAccessors.from\u2026ardComponent::class.java)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v6

    check-cast v13, Le/a/d3/a;

    const-string v6, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 10
    invoke-static {v0, v6}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/h5/s;

    .line 11
    new-instance v9, Le/a/b/a/g/d;

    invoke-direct {v9}, Le/a/b/a/g/d;-><init>()V

    .line 12
    const-class v7, Le/a/b0/c;

    invoke-static {v10, v7}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    const-class v7, Le/a/p5/o0;

    invoke-static {v11, v7}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    const-class v7, Le/a/q2/e;

    invoke-static {v12, v7}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    invoke-static {v13, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    invoke-static {v14, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    invoke-static {v15, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    invoke-static {v6, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 19
    invoke-static {v5, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    new-instance v0, Le/a/b/a/g/e;

    const/16 v18, 0x0

    move-object v8, v0

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v18}, Le/a/b/a/g/e;-><init>(Le/a/b/a/g/d;Le/a/b0/c;Le/a/p5/o0;Le/a/q2/e;Le/a/d3/a;Le/a/k4/e;Le/a/g5/a0;Le/a/h5/s;Le/a/m4/b;Le/a/b/a/g/e$a;)V

    const-string v1, "DaggerBusinessProfileCom\u2026mponent)\n        .build()"

    .line 21
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static l0(Landroid/content/Context;)Le/a/b0/e/r/a;
    .locals 3

    .line 1
    sget v0, Le/a/b0/e/a;->a:I

    const-string v0, "context"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "account"

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    new-instance v1, Le/a/b0/e/r/b;

    const-string v2, "sharedPreferences"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Le/a/b0/e/r/b;-><init>(Landroid/content/SharedPreferences;)V

    .line 5
    invoke-virtual {v1, p0}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v1
.end method

.method public static final m(Landroid/content/Context;)Le/a/b/b/c/u/a;
    .locals 10

    const-class v0, Le/a/g5/a0;

    const-class v1, Le/a/d3/a;

    const-string v2, "$this$buildBusinessProfileComponent"

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/b0/g/a;

    .line 2
    invoke-virtual {p0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v4

    const-string v2, "applicationBase.commonGraph"

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/b0/g/a;->K()Le/a/q2/e;

    move-result-object v6

    const-string v2, "applicationBase.analyticsComponent"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Le/a/b0/g/a;->V()Le/a/p5/o0;

    move-result-object v5

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    invoke-static {p0, v1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "EntryPointAccessors.from\u2026ardComponent::class.java)"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p0

    check-cast v7, Le/a/d3/a;

    const-string p0, "EntryPointAccessors.from\u2026gerComponent::class.java)"

    .line 7
    invoke-static {v0, p0}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Le/a/g5/a0;

    .line 8
    new-instance v3, Le/a/b/b/c/u/b;

    invoke-direct {v3}, Le/a/b/b/c/u/b;-><init>()V

    .line 9
    const-class p0, Le/a/b0/c;

    invoke-static {v4, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    const-class p0, Le/a/p5/o0;

    invoke-static {v5, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    const-class p0, Le/a/q2/e;

    invoke-static {v6, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    invoke-static {v7, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    invoke-static {v8, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    new-instance p0, Le/a/b/b/c/u/c;

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Le/a/b/b/c/u/c;-><init>(Le/a/b/b/c/u/b;Le/a/b0/c;Le/a/p5/o0;Le/a/q2/e;Le/a/d3/a;Le/a/g5/a0;Le/a/b/b/c/u/c$a;)V

    const-string v0, "DaggerCreateBusinessProf\u2026tance())\n        .build()"

    .line 15
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static m0(Le/a/b/o/d/a;)Le/m/e/k;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Le/m/e/l;

    invoke-direct {p0}, Le/m/e/l;-><init>()V

    .line 3
    const-class v0, Landroid/net/Uri;

    new-instance v1, Le/a/b/p/e;

    invoke-direct {v1}, Le/a/b/p/e;-><init>()V

    invoke-virtual {p0, v0, v1}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 4
    invoke-virtual {p0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p0

    const-string v0, "GsonBuilder()\n        .r\u2026izer())\n        .create()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final n(Landroid/app/Activity;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallBackNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p4

    const-string v0, "null cannot be cast to non-null type com.truecaller.TrueApp"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/truecaller/TrueApp;

    .line 2
    iget-object p4, p4, Lcom/truecaller/TrueApp;->d:Le/a/q2/a;

    const-string v0, "(activity.application as TrueApp).analytics"

    .line 3
    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 5
    :goto_0
    invoke-static {p0, p1, v0}, Le/a/o5/t;->c(Landroid/content/Context;Ljava/lang/Long;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v1, "ContactUtil.getExternalA\u2026ty, contact?.phonebookId)"

    .line 6
    invoke-static {p1, v1}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/k3/l/d;

    .line 8
    iget-object v3, v3, Le/a/k3/l/d;->d:Ljava/lang/String;

    const-string v4, "it.packageName"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "com.whatsapp"

    invoke-static {v3, v6, v4, v5}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/k3/l/d;

    iget-object v2, v2, Le/a/k3/l/d;->c:Landroid/content/Intent;

    const-string v3, "it.actionIntent"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    invoke-static {v2, p3, v3}, Ls1/f0/v;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v0

    :goto_2
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_5
    check-cast v0, Le/a/k3/l/d;

    const-string p1, "action"

    const-string v1, "WhatsApp"

    const-string v2, "callLog"

    const-string v3, "subAction"

    if-eqz v0, :cond_7

    .line 10
    iget-object p2, v0, Le/a/k3/l/d;->c:Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p0, "call"

    .line 11
    invoke-static {p3, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 12
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;->AUDIO:Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;

    .line 13
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p1, v1, p0, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1, p4}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_3

    .line 18
    :cond_6
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;->VIDEO:Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;

    .line 19
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p1, v1, p0, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p1, p4}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_3

    .line 24
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.whatsapp.com/send?phone="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 25
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p3, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 26
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;->APP_OPEN:Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;

    .line 28
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p1, v1, p0, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p1, p4}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :goto_3
    return-void
.end method

.method public static n0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final o(IILjava/lang/String;Ljava/lang/String;JJ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    return v1

    .line 1
    :cond_1
    invoke-static {p2}, Le/a/l0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Le/a/l0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    sub-long/2addr p4, p6

    .line 2
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const/16 p2, 0x2710

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public static final o0(Lcom/truecaller/common/ui/tooltip/TooltipDirection;Landroid/view/View;)Lcom/truecaller/common/ui/tooltip/TooltipDirection;
    .locals 2

    const-string v0, "$this$resolveDirection"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x6

    if-eq p1, v1, :cond_7

    const/16 v1, 0x9

    if-eq p1, v1, :cond_5

    const/16 v1, 0xc

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 4
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 5
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_FAR_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_FAR_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 6
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_8
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_9
    if-eqz v0, :cond_a

    .line 7
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_a
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_c

    .line 8
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_1

    :cond_c
    sget-object p0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->LEFT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    :goto_1
    return-object p0
.end method

.method public static final p(Landroidx/fragment/app/FragmentManager;Le/m/a/g/e/e;)V
    .locals 3

    const-string v0, "$this$commitAllowingStateLoss"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomSheetDialogFragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, p1, p0, v2}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0}, Ln3/r/a/a;->g()I

    return-void
.end method

.method public static final p0(Lx3/b;)Lx3/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx3/b<",
            "TT;>;)",
            "Lx3/a0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$safeExecute"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p0}, Lx3/b;->execute()Lx3/a0;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final q(Landroid/content/Context;)Le/a/b0/c;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/b0/g/a;

    invoke-virtual {p0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p0

    const-string v0, "(this?.applicationContex\u2026licationBase).commonGraph"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic q0(Le/a/b0/n/g;Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p3, p7, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    move v2, p3

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    and-int/lit8 p1, p7, 0x4

    const/4 p2, 0x0

    const/4 v3, 0x0

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_2

    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_3

    move v5, p3

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v6, p6

    .line 2
    invoke-interface/range {v0 .. v6}, Le/a/b0/n/g;->b(Le/a/b0/n/d;ZLjava/lang/Long;Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Landroidx/fragment/app/Fragment;)Le/a/b0/c;
    .locals 1

    const-string v0, "$this$commonGraph"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object p0

    return-object p0
.end method

.method public static final r0(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$scaleToVisibleValues"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Ls1/u/i;->J0(Ljava/lang/Iterable;)J

    move-result-wide v1

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v5, v3

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    long-to-float v6, v1

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/16 v3, 0x64

    int-to-long v3, v3

    .line 4
    div-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final s(Landroid/content/Context;)Le/a/e3/h/d;
    .locals 14

    const-string v0, "$this$createCallAlertComponent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/e3/h/e;->b:Le/a/e3/h/e;

    const-string v1, "context"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Le/a/e3/h/e;->a:Le/a/e3/h/d;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    const-class v1, Le/a/o/q/a;

    const-class v2, Le/a/k/o/g;

    const-class v3, Le/a/d3/a;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v4, Le/a/e3/h/e;->a:Le/a/e3/h/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 6
    monitor-exit v0

    move-object v1, v4

    goto/16 :goto_0

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    move-object v5, v4

    check-cast v5, Le/a/b0/g/a;

    invoke-virtual {v5}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v7

    const-string v5, "(applicationContext as A\u2026licationBase).commonGraph"

    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v5, Le/a/d3/a;->a:I

    .line 10
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v5

    invoke-static {v5, v3}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EntryPointAccessors.from\u2026ardComponent::class.java)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v5

    check-cast v10, Le/a/d3/a;

    .line 11
    move-object v5, v4

    check-cast v5, Le/a/b0/g/a;

    invoke-virtual {v5}, Le/a/b0/g/a;->V()Le/a/p5/o0;

    move-result-object v8

    .line 12
    move-object v5, v4

    check-cast v5, Le/a/b0/g/a;

    invoke-virtual {v5}, Le/a/b0/g/a;->K()Le/a/q2/e;

    move-result-object v9

    const-string v5, "applicationContext.analyticsComponent"

    invoke-static {v9, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget v5, Le/a/k/o/g;->c:I

    const-string v5, "context"

    .line 15
    invoke-static {p0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v5, "EntryPointAccessors.from\u2026rIdComponent::class.java)"

    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, p0

    check-cast v12, Le/a/k/o/g;

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v1}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 18
    move-object v11, p0

    check-cast v11, Le/a/o/q/a;

    .line 19
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class p0, Le/a/b0/c;

    invoke-static {v7, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    const-class p0, Le/a/p5/o0;

    invoke-static {v8, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 22
    const-class p0, Le/a/q2/e;

    invoke-static {v9, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 23
    invoke-static {v10, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 24
    invoke-static {v11, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 25
    invoke-static {v12, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 26
    new-instance v1, Le/a/e3/h/o;

    const/4 v13, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Le/a/e3/h/o;-><init>(Le/a/b0/c;Le/a/p5/o0;Le/a/q2/e;Le/a/d3/a;Le/a/o/q/a;Le/a/k/o/g;Le/a/e3/h/o$a;)V

    .line 27
    sput-object v1, Le/a/e3/h/e;->a:Le/a/e3/h/d;

    const-string p0, "component"

    .line 28
    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :goto_0
    return-object v1

    .line 29
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static s0(Landroid/content/Context;Ljava/lang/Class;IJLandroid/os/Bundle;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Ln3/k/a/i;",
            ">;IJ",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    sget p1, Lcom/truecaller/common/background/DelayedServiceBroadcastReceiver;->a:I

    const-string p1, "context"

    .line 4
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "componentName"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/truecaller/common/background/DelayedServiceBroadcastReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "component_name"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "job_id"

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, DelayedS\u2026xtra(EXTRA_JOB_ID, jobId)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "payload"

    .line 8
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    .line 9
    invoke-static {p0, p6, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    add-long/2addr p5, p3

    const-string p2, "alarm"

    .line 11
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x2

    .line 12
    invoke-virtual {p0, p2, p5, p6, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static final t(Landroid/content/Context;)Le/a/k0/k/b;
    .locals 2

    const-string v0, "$this$createCallRecordingComponent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$createComponent"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/a/k0/k/d;->b:Le/a/k0/k/d;

    const-string v1, "context"

    .line 3
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Le/a/k0/k/d;->a:Le/a/k0/k/b;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Le/a/k0/k/d;->a:Le/a/k0/k/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Le/a/k0/k/c;

    invoke-interface {p0}, Le/a/k0/k/c;->g()Le/a/k0/k/b;

    move-result-object v1

    .line 9
    sput-object v1, Le/a/k0/k/d;->a:Le/a/k0/k/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    :goto_0
    return-object v1

    .line 11
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.truecaller.callrecording.di.CallRecordingModuleComponentProvider"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static t0(Ljava/util/List;)Lx3/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/common/tag/network/NameSuggestionRestModel$NameSuggestion;",
            ">;)",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->CONTACT:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/b0/p/g/a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/p/g/a;

    .line 2
    invoke-interface {v0, p0}, Le/a/b0/p/g/a;->a(Ljava/util/List;)Lx3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final u(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$this$disableTouch"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public static final u0(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "$this$setBizmonTheme"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/i5/d$d;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Le/a/i5/d$b;

    if-eqz v1, :cond_1

    :goto_0
    sget v0, Lcom/truecaller/bizmon/R$style;->ThemeX_Dark_Bizmon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_2

    .line 4
    :cond_1
    instance-of v1, v0, Le/a/i5/d$c;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    instance-of v0, v0, Le/a/i5/d$a;

    if-eqz v0, :cond_3

    :goto_1
    sget v0, Lcom/truecaller/bizmon/R$style;->ThemeX_Light_Bizmon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_2

    .line 6
    :cond_3
    sget v0, Lcom/truecaller/bizmon/R$style;->ThemeX_Light_Bizmon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :goto_2
    return-void
.end method

.method public static synthetic v(Le/a/b/a/c/a/u;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Le/a/b/a/c/a/u;->B7(Z)V

    return-void
.end method

.method public static v0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final w(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$this$enableTouch"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public static final w0(Landroid/view/View;JLs1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Ls1/z/b/l<",
            "-",
            "Landroid/view/View;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$setDebouncingOnClickListener"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "doClick"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b0/a/f;

    invoke-direct {v0, p1, p2, p3}, Le/a/b0/a/f;-><init>(JLs1/z/b/l;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic x(Le/a/a3/a;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p5, 0x2

    const/4 p2, 0x0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/a3/a;->a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static x0(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final y(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$formattedAddress"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getLocationDetails()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    if-eqz p0, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v3, 0x2

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandmark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Le/a/n/g0;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getLandmark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V

    .line 9
    :goto_2
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Le/a/n/g0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;->getZipCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, v3}, Le/a/n/g0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;ZI)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public static y0(Ljava/lang/String;J)V
    .locals 1

    .line 1
    sget-object v0, Le/a/n/g0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1, p2}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public static final z(Lcom/truecaller/account/network/SimDto$a;Lcom/truecaller/multisim/SimInfo;Le/a/b0/q/z;Le/a/b0/b/f/b;ZZ)Lcom/truecaller/account/network/SimDto;
    .locals 10

    const-string v0, "$this$fromSimInfo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "simInfo"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "phoneNumberHelper"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "simInfoProvider"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p3, p5}, Le/a/n/g0;->e0(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;Z)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 2
    iget-object p0, p1, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p4, v1

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_5

    const-string p4, "it"

    .line 4
    invoke-static {p0, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p1, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v1, "simInfo.simToken"

    invoke-static {p4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Le/a/b0/q/z;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0, p4, v1}, Le/a/b0/q/z;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    move-object p0, p2

    :cond_4
    move-object v9, p0

    goto :goto_4

    :cond_5
    move-object v9, v0

    .line 5
    :goto_4
    new-instance p0, Lcom/truecaller/account/network/SimDto;

    .line 6
    iget-object v4, p1, Lcom/truecaller/multisim/SimInfo;->i:Ljava/lang/String;

    if-eqz p5, :cond_6

    .line 7
    invoke-static {p1, p3}, Le/a/n/g0;->G(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_6
    iget-object p2, p1, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    :goto_5
    move-object v5, p2

    .line 8
    iget-object p2, p1, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x3

    const-string p4, "simInfo.mccMnc"

    const/4 p5, 0x4

    if-lt p2, p5, :cond_7

    iget-object p2, p1, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p2

    goto :goto_6

    :cond_7
    move-object v6, v0

    .line 9
    :goto_6
    iget-object p2, p1, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, p5, :cond_8

    iget-object p1, p1, Lcom/truecaller/multisim/SimInfo;->e:Ljava/lang/String;

    invoke-static {p1, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    move-object v7, v0

    const/4 v8, 0x0

    move-object v3, p0

    .line 10
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/account/network/SimDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    :cond_9
    return-object v0
.end method

.method public static synthetic z0(Le/a/b/a/c/a/u;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Le/a/b/a/c/a/u;->p3(Z)V

    return-void
.end method
