.class public Le/a/c/c/d/h$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/h;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/h;


# direct methods
.method public constructor <init>(Le/a/c/c/d/h;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/h$a;->a:Le/a/c/c/d/h;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getEntityId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getDomain()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getState()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 8
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getOrigin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 9
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 11
    :goto_1
    iget-object v0, p0, Le/a/c/c/d/h$a;->a:Le/a/c/c/d/h;

    .line 12
    iget-object v0, v0, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    .line 13
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 16
    :goto_2
    iget-object v0, p0, Le/a/c/c/d/h$a;->a:Le/a/c/c/d/h;

    .line 17
    iget-object v0, v0, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    .line 18
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getUpdatesAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 21
    :goto_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getExtra()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 22
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 23
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `action_state` (`id`,`message_id`,`domain`,`state`,`origin`,`created_at`,`last_updated_at`,`extra`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
