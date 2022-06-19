.class public Le/a/c/c/d/z$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/z;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/InsightsReminder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/z;


# direct methods
.method public constructor <init>(Le/a/c/c/d/z;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/z$a;->a:Le/a/c/c/d/z;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/InsightsReminder;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getVendorName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getVendorName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-object v0, p0, Le/a/c/c/d/z$a;->a:Le/a/c/c/d/z;

    .line 9
    iget-object v0, v0, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    .line 10
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getDueDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 13
    :goto_2
    iget-object v0, p0, Le/a/c/c/d/z$a;->a:Le/a/c/c/d/z;

    .line 14
    iget-object v0, v0, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    .line 15
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getGeneratedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 16
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 18
    :goto_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_4
    const/4 v0, 0x6

    .line 21
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getTimesNotified()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 22
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getDismissed()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 23
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 24
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 25
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 26
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 27
    :goto_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 28
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 29
    :cond_6
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 30
    :goto_6
    iget-object v0, p0, Le/a/c/c/d/z$a;->a:Le/a/c/c/d/z;

    .line 31
    iget-object v0, v0, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    .line 32
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_7

    .line 33
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_7

    .line 34
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 35
    :goto_7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsReminder;->getPendingNotification()Z

    move-result p2

    const/16 v0, 0xb

    int-to-long v1, p2

    .line 36
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `insights_reminders` (`uniqueRefId`,`vendorName`,`due_date`,`generated_date`,`image_url`,`times_notified`,`is_dismissed`,`category`,`meta`,`created_at`,`is_notification_pending`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
