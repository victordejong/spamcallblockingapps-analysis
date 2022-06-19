.class public final Le/a/x3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x3/c;


# instance fields
.field public final a:Le/a/x3/e;

.field public final b:Le/a/p5/c;

.field public final c:I


# direct methods
.method public constructor <init>(Le/a/x3/e;Le/a/p5/c;I)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "forcedUpdateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    iput-object p2, p0, Le/a/x3/d;->b:Le/a/p5/c;

    iput p3, p0, Le/a/x3/d;->c:I

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string v1, "forcedUpdate_lastDismissed"

    invoke-interface {v0, v1, p1, p2}, Le/a/x3/e;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public b()Lcom/truecaller/forcedupdate/UpdateType;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string v1, "forcedUpdate_appVersion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Le/a/x3/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 3
    iget v1, p0, Le/a/x3/d;->c:I

    if-le v1, v0, :cond_2

    .line 4
    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->Companion:Lcom/truecaller/forcedupdate/UpdateType$a;

    iget-object v1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string v2, "forcedUpdate_updateType"

    invoke-interface {v1, v2}, Le/a/x3/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/forcedupdate/UpdateType$a;->a(Ljava/lang/String;)Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string v1, "forcedUpdate_link"

    invoke-interface {v0, v1}, Le/a/x3/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/truecaller/forcedupdate/UpdateType;
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/x3/d;->b()Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/forcedupdate/UpdateType;->getSupportsCompactMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    if-eq v0, v1, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/forcedupdate/UpdateType;->getSkippable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/x3/d;->b:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v2

    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string v4, "forcedUpdate_lastDismissed"

    const-wide/16 v5, 0x0

    invoke-interface {p1, v4, v5, v6}, Le/a/x3/e;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 6
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string v4, "forcedUpdate_period"

    invoke-interface {p1, v4, v5, v6}, Le/a/x3/e;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public e(Lcom/truecaller/forcedupdate/UpdateType;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->NONE:Lcom/truecaller/forcedupdate/UpdateType;

    const-string v1, "forcedUpdate_period"

    const-string v2, "forcedUpdate_link"

    const-string v3, "forcedUpdate_updateType"

    const-string v4, "forcedUpdate_appVersion"

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-interface {p1, v3}, Le/a/x3/e;->remove(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-interface {p1, v2}, Le/a/x3/e;->remove(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-interface {p1, v1}, Le/a/x3/e;->remove(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    const-string p2, "forcedUpdate_lastDismissed"

    invoke-interface {p1, p2}, Le/a/x3/e;->remove(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-interface {p1, v4}, Le/a/x3/e;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/x3/d;->a:Le/a/x3/e;

    iget v5, p0, Le/a/x3/d;->c:I

    invoke-interface {v0, v4, v5}, Le/a/x3/e;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Le/a/x3/e;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-interface {p1, v2, p2}, Le/a/x3/e;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    const-wide/32 v2, 0x5265c00

    mul-long/2addr p1, v2

    iget-object p3, p0, Le/a/x3/d;->a:Le/a/x3/e;

    invoke-interface {p3, v1, p1, p2}, Le/a/x3/e;->putLong(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/x3/d;->b()Lcom/truecaller/forcedupdate/UpdateType;

    move-result-object v0

    sget-object v1, Lcom/truecaller/forcedupdate/UpdateType;->DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
