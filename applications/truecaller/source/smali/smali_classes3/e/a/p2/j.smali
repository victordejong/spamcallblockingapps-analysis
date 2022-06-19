.class public Le/a/p2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p2/i;


# instance fields
.field public final a:Le/a/o5/x1;

.field public final b:Lcom/truecaller/settings/CallingSettings;

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/o5/x1;Lcom/truecaller/settings/CallingSettings;Le/a/o5/f0;Le/a/p5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/p2/j;->a:Le/a/o5/x1;

    .line 3
    iput-object p2, p0, Le/a/p2/j;->b:Lcom/truecaller/settings/CallingSettings;

    .line 4
    iput-object p3, p0, Le/a/p2/j;->c:Le/a/o5/f0;

    .line 5
    new-instance p1, Le/a/b0/q/l0;

    invoke-direct {p1, p4}, Le/a/b0/q/l0;-><init>(Le/a/p5/c;)V

    iput-object p1, p0, Le/a/p2/j;->d:Le/a/b0/q/l0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/Number;ZZ)Lcom/truecaller/aftercall/PromotionType;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/aftercall/PromotionCategory;->DIALER:Lcom/truecaller/aftercall/PromotionCategory;

    invoke-virtual {p0, v0}, Le/a/p2/j;->c(Lcom/truecaller/aftercall/PromotionCategory;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object p2

    invoke-static {p2}, Le/a/b0/q/c0;->d(Le/m/f/a/j$d;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    return-object v1

    :cond_1
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 5
    sget-object p2, Lcom/truecaller/aftercall/PromotionType;->DIALER_OUTGOING_OUTSIDE:Lcom/truecaller/aftercall/PromotionType;

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p0, p2, p1}, Le/a/p2/j;->b(Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v1, p2

    :cond_3
    return-object v1
.end method

.method public b(Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/p2/j;->a:Le/a/o5/x1;

    invoke-interface {v0}, Le/a/o5/x1;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/aftercall/PromotionType;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/aftercall/PromotionType;->SIGN_UP:Lcom/truecaller/aftercall/PromotionType;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Le/a/p2/j;->b:Lcom/truecaller/settings/CallingSettings;

    const-string p2, "afterCallPromoteTcTimestamp"

    invoke-interface {p1, p2, v3, v4}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Le/a/p2/j;->d:Le/a/b0/q/l0;

    iget-object v3, p0, Le/a/p2/j;->c:Le/a/o5/f0;

    invoke-interface {v3}, Le/a/o5/f0;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x337f9800

    invoke-virtual {v0, v3, v4, v5, v6}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/p2/j;->d:Le/a/b0/q/l0;

    const-wide/32 v3, 0x240c8400

    .line 5
    invoke-virtual {v0, p1, p2, v3, v4}, Le/a/b0/q/l0;->b(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/truecaller/aftercall/PromotionType;->category:Lcom/truecaller/aftercall/PromotionCategory;

    sget-object v5, Lcom/truecaller/aftercall/PromotionCategory;->PERMISSION:Lcom/truecaller/aftercall/PromotionCategory;

    if-ne v0, v5, :cond_4

    .line 7
    iget-object p2, p0, Le/a/p2/j;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "afterCallPromotePhonePermissionTimestamp"

    invoke-interface {p2, v0, v3, v4}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 8
    iget-object p2, p0, Le/a/p2/j;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "afterCallPromoteContactsPermissionTimestamp"

    invoke-interface {p2, v2, v3, v4}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 9
    sget-object p2, Lcom/truecaller/aftercall/PromotionType;->PHONE_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move-wide v0, v2

    :goto_0
    const-wide/32 p1, 0x5265c00

    .line 10
    invoke-static {v0, v1, p1, p2}, Le/a/b0/q/m;->a(JJ)Z

    move-result p1

    return p1

    .line 11
    :cond_4
    sget-object p1, Lcom/truecaller/aftercall/PromotionCategory;->DIALER:Lcom/truecaller/aftercall/PromotionCategory;

    if-ne v0, p1, :cond_5

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x7

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_5

    if-eqz p2, :cond_5

    .line 14
    iget-object p2, p2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_5

    .line 15
    invoke-virtual {p0, p1}, Le/a/p2/j;->c(Lcom/truecaller/aftercall/PromotionCategory;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public final c(Lcom/truecaller/aftercall/PromotionCategory;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/truecaller/aftercall/PromotionCategory;->DIALER:Lcom/truecaller/aftercall/PromotionCategory;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/p2/j;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "lastCallMadeWithTcTime"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/32 v5, 0x240c8400

    invoke-static {v3, v4, v5, v6}, Le/a/b0/q/m;->a(JJ)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/p2/j;->b:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "lastDialerPromotionTime"

    invoke-interface {p1, v3, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    invoke-static {v1, v2, v3, v4}, Le/a/b0/q/m;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
