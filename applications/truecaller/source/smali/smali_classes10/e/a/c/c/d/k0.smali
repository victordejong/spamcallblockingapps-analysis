.class public final Le/a/c/c/d/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/j0;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/c0;

.field public final c:Le/a/c/c0/g;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/k0$j;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/k0$j;-><init>(Le/a/c/c/d/k0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/k0;->b:Ln3/c0/c0;

    .line 5
    new-instance v0, Le/a/c/c/d/k0$m;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/k0$m;-><init>(Le/a/c/c/d/k0;Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT DISTINCT(updateCategory) FROM sms_backup_table\n        "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance v4, Le/a/c/c/d/k0$f;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/k0$f;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IJLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * FROM sms_backup_table \n            WHERE updateCategory = ? \n            AND spam_category != 3\n            AND date >= ?\n            ORDER BY date DESC LIMIT ?\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    int-to-long p1, p2

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 6
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 7
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance p4, Le/a/c/c/d/k0$g;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/k0$g;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, p4, p5}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(JILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * from sms_backup_table \n            WHERE conversationId = ?\n            ORDER BY date DESC LIMIT ?\n            "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    int-to-long p1, p3

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 4
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance p3, Le/a/c/c/d/k0$o;

    invoke-direct {p3, p0, v0}, Le/a/c/c/d/k0$o;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(JJJLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * from sms_backup_table \n            WHERE conversationId = ?\n            AND date > ? AND date < ?\n            ORDER BY date DESC\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 4
    invoke-virtual {v0, v1, p5, p6}, Ln3/c0/y;->l0(IJ)V

    .line 5
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance p3, Le/a/c/c/d/k0$r;

    invoke-direct {p3, p0, v0}, Le/a/c/c/d/k0$r;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p3, p7}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * FROM sms_backup_table \n            WHERE updateCategory NOT NULL \n            AND spam_category != 3\n            ORDER BY date LIMIT 1\n        "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance v4, Le/a/c/c/d/k0$d;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/k0$d;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(JILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/n/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT messageID, confidence_score from sms_backup_table\n            WHERE conversationId = ?\n            ORDER BY date DESC LIMIT ?\n            "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    int-to-long p1, p3

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 4
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance p3, Le/a/c/c/d/k0$p;

    invoke-direct {p3, p0, v0}, Le/a/c/c/d/k0$p;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/Date;Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT * FROM sms_backup_table"

    const-string v2, "            WHERE "

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                updateCategory IS NOT NULL AND"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                classified_by IN ("

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") AND"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "                date > "

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "            ORDER BY date"

    const-string v5, "            LIMIT "

    .line 12
    invoke-static {v1, v4, v0, v5, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "        "

    .line 13
    invoke-static {v1, v0, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x2

    .line 14
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 16
    invoke-virtual {v0, v4}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0, v4, v5, v6}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    .line 18
    iget-object p2, p0, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    invoke-virtual {p2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    .line 19
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    :goto_2
    int-to-long p1, p3

    .line 21
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 22
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 23
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/k0$k;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/k0$k;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * FROM sms_backup_table WHERE updateCategory NOT NULL \n            AND spam_category != 3\n            ORDER BY date DESC LIMIT 1\n        "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance v4, Le/a/c/c/d/k0$e;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/k0$e;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT date FROM sms_backup_table"

    const-string v2, "        WHERE"

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            updateCategory IS NOT NULL AND"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            classified_by IN ("

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        ORDER BY date DESC LIMIT 1"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    add-int/2addr v2, v1

    .line 13
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 15
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 18
    iget-object v2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance v3, Le/a/c/c/d/k0$l;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/k0$l;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {v2, v1, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, ?) as updateCategory, classified_by, message, transport, parseFailed, errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = \'Delivery\' AND pdo.c NOT NULL))\n            AND sbt.date <= ?\n            AND sbt.date >= ?\n            ORDER BY sbt.date DESC\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p5, 0x2

    .line 4
    invoke-virtual {v0, p5, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 5
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 6
    iget-object p1, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "sms_backup_table"

    const-string p4, "parsed_data_object_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/k0$a;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/k0$a;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public k(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * from sms_backup_table \n            WHERE messageID = ?\n    "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    new-instance v2, Le/a/c/c/d/k0$q;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/k0$q;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p2, v1, p1, v2, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, ?) as updateCategory, classified_by, message, transport, parseFailed, errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = \'Delivery\' AND pdo.c NOT NULL))\n            AND sbt.date < ?\n            AND sbt.date >= ?\n            ORDER BY sbt.date DESC\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p5, 0x2

    .line 4
    invoke-virtual {v0, p5, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 5
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 6
    iget-object p1, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "sms_backup_table"

    const-string p4, "parsed_data_object_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/k0$b;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/k0$b;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public m(IJ)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, \'Delivery\') as updateCategory, classified_by, message, transport, parseFailed, \n            errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = \'Delivery\' AND pdo.c NOT NULL))\n            AND sbt.date >= ?\n            ORDER BY sbt.date DESC LIMIT ?\n        "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p2, p3}, Ln3/c0/y;->l0(IJ)V

    int-to-long p1, p1

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const-string p2, "sms_backup_table"

    const-string p3, "parsed_data_object_table"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Le/a/c/c/d/k0$s;

    invoke-direct {p3, p0, v0}, Le/a/c/c/d/k0$s;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;JLcom/truecaller/insights/models/pdo/ClassifierType;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/truecaller/insights/models/pdo/ClassifierType;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    new-instance v7, Le/a/c/c/d/k0$n;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Le/a/c/c/d/k0$n;-><init>(Le/a/c/c/d/k0;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v7, p5}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/util/List;Ljava/util/List;)Ln3/z/k2;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ln3/z/k2<",
            "Ljava/lang/Integer;",
            "Le/a/c/r/h/a;",
            ">;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT * FROM ("

    const-string v2, "                /* Query for past section with descending chronological order */"

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                SELECT sbt.messageID AS messageID, sbt.address AS address, sbt.updateCategory AS updateCategory, "

    const-string v3, "                sbt.spam_category AS spam_category, sbt.classified_by AS classified_by, "

    .line 2
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                sbt.confidence_score AS confidence_score, sbt.transport AS transport, sbt.conversationId AS conversationId, "

    const-string v3, "                sbt.message AS message, sbt.no_of_words AS no_of_words, sbt.deleted AS deleted, "

    .line 3
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                sbt.created_at AS created_at, IFNULL(pdo.d, \"\") AS d, IFNULL(pdo.k,\"\") AS k,"

    const-string v3, "                IFNULL(pdo.p, \"\") AS p, IFNULL(pdo.c, \"\") As c, IFNULL(pdo.o, \"\") as o, IFNULL(pdo.f, \"\") as f, "

    .line 4
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                IFNULL(pdo.g, \"\") AS g, IFNULL(pdo.s, \"\") AS s, IFNULL(pdo.val1, \"\") AS val1, IFNULL(pdo.val2, \"\") AS val2, "

    const-string v3, "                IFNULL(pdo.val3, \"\") AS val3, IFNULL(pdo.val4, \"\") AS val4, IFNULL(pdo.val5, \"\") AS val5, IFNULL(pdo.date, \"\") AS date, "

    .line 5
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                IFNULL(pdo.dff_val1, \"\") AS dff_val1, IFNULL(pdo.dff_val2, \"\") AS dff_val2, IFNULL(pdo.dff_val3, \"\") AS dff_val3, "

    const-string v3, "                IFNULL(pdo.dff_val4, \"\") AS dff_val4, IFNULL(pdo.dff_val5, \"\") AS dff_val5,"

    .line 6
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                /* Select datetime based on the type of smart card"

    const-string v3, "                    1. If Update category use sms_backup_table.date"

    .line 7
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                    2. If pdo then use datetime if available"

    const-string v3, "                    3. otherwise use sms_backup_table.date"

    .line 8
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                 */"

    const-string v3, "                CASE"

    .line 9
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                    WHEN sbt.updateCategory IS NOT NULL THEN datetime(sbt.date/1000, \'unixepoch\', \'localtime\')"

    const-string v3, "                    WHEN d IN (\'Bill\', \'Travel\', \'Delivery\')"

    .line 10
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                        THEN CASE "

    const-string v4, "                                WHEN d = \'Bill\' "

    .line 11
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "                                    AND act_state.as_state IN (2, 4)"

    const-string v5, "                                    THEN act_state.action_datetime"

    .line 12
    invoke-static {v1, v4, v0, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "                                WHEN pdo.datetime IS NOT NULL AND pdo.datetime != \'\' THEN pdo.datetime"

    const-string v5, "                                ELSE datetime(sbt.date/1000, \'unixepoch\', \'localtime\')"

    .line 13
    invoke-static {v1, v4, v0, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "                             END"

    const-string v6, "                    ELSE datetime(sbt.date/1000, \'unixepoch\', \'localtime\')"

    .line 14
    invoke-static {v1, v4, v0, v6, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                END datetime,"

    const-string v8, "                /* Temp datetime is needed for the where conditions since it was colliding with pdo.datetime "

    .line 15
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                with empty values or datetime function*/"

    const-string v8, "                 CASE"

    .line 16
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                    WHEN d = \'Bill\'"

    .line 17
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                        THEN CASE"

    const-string v7, "                            WHEN act_state.as_state IN (2, 4)"

    .line 18
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                                THEN act_state.action_datetime"

    const-string v8, "                            WHEN (pdo.datetime IS NULL OR pdo.datetime = \'\') AND "

    .line 19
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                                datetime(sbt.date/1000, \'unixepoch\', \'localtime\',\'start of day\') = datetime(\'now\',\'start of day\')"

    const-string v8, "                                THEN datetime(\'now\', \'start of day\', \'+1 day\', \'-1 second\')"

    .line 20
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                            WHEN pdo.datetime = datetime(\'now\', \'start of day\')"

    const-string v9, "                                /* Hack to bring BILL reminders to the top of today\'s cards in chronological order*/"

    .line 21
    invoke-static {v1, v7, v0, v9, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                            WHEN pdo.datetime IS NOT NULL AND pdo.datetime != \'\' "

    .line 22
    invoke-static {v1, v8, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                                THEN pdo.datetime"

    const-string v8, "                            ELSE datetime(sbt.date/1000, \'unixepoch\', \'localtime\')"

    .line 23
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                            END"

    const-string v8, "                            "

    .line 24
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "                    WHEN d = \'Delivery\'"

    .line 25
    invoke-static {v1, v7, v0, v2, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                             WHEN pdo.k = \'actionrqd\' AND pdo.p = \'selfpickup\'"

    const-string v7, "                                THEN CASE "

    .line 26
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                    WHEN act_state.as_state = 5"

    const-string v7, "                                        THEN act_state.action_datetime"

    .line 27
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                    WHEN pdo.datetime IS NOT NULL AND pdo.datetime != \'\' AND "

    const-string v7, "                                        datetime(datetime, \'start of day\') = datetime(\'now\', \'start of day\')"

    .line 28
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                        THEN datetime(\'now\', \'start of day\', \'+1 day\', \'-1 second\')"

    const-string v7, "                                    WHEN pdo.datetime IS NOT NULL AND pdo.datetime != \'\' "

    .line 29
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                        THEN pdo.datetime"

    const-string v7, "                                    ELSE datetime(sbt.date/1000, \'unixepoch\', \'localtime\')"

    .line 30
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                    END"

    const-string v7, "                             ELSE datetime(sbt.date/1000, \'unixepoch\', \'localtime\')"

    .line 31
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                        END "

    const-string v7, "                    WHEN d = \'Travel\'"

    .line 32
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                WHEN (pdo.datetime IS NULL OR pdo.datetime = \'\') AND "

    .line 33
    invoke-static {v1, v3, v0, v2, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                    datetime(sbt.date/1000, \'unixepoch\', \'localtime\',\'start of day\') = datetime(\'now\',\'start of day\')"

    const-string v3, "                                    THEN datetime(\'now\', \'start of day\', \'+1 day\', \'-1 second\')"

    .line 34
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                WHEN datetime IS NOT NULL AND datetime != \'\' AND"

    const-string v7, "                                    datetime(datetime, \'start of day\') = datetime(\'now\', \'start of day\')"

    .line 35
    invoke-static {v1, v2, v0, v7, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                    /* Hack to bring travel reminders to the top of today\'s cards in chronological order*/"

    .line 36
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                                WHEN pdo.datetime IS NOT NULL AND pdo.datetime != \'\' "

    const-string v3, "                                    THEN pdo.datetime"

    .line 37
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {v1, v5, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                END datetime_temp,"

    .line 39
    invoke-static {v1, v6, v0, v2, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                IFNULL(sbt.date, \"\") AS msg_date, IFNULL(pdo.active, \"\") AS active, "

    const-string v3, "                IFNULL(pdo.state, \"\") AS state, act_state.* FROM sms_backup_table sbt"

    .line 40
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                LEFT JOIN ("

    const-string v3, "                    SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, "

    .line 41
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                    dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category "

    const-string v4, "                    FROM parsed_data_object_table AS p "

    .line 42
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                    WHERE messageID >= 0"

    const-string v4, "                    UNION ALL "

    .line 43
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                    SELECT pt.messageID AS messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, "

    const-string v4, "                    pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, "

    .line 44
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                    pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category "

    const-string v4, "                    FROM (SELECT * FROM parsed_data_object_table "

    .line 45
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                    WHERE messageID < 0) AS pdo "

    const-string v4, "                    LEFT JOIN (SELECT synthetic_record_id, messageID FROM parsed_data_object_table "

    .line 46
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                    WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ORDER BY msg_date) AS pt"

    const-string v4, "                    ON pdo.messageID = pt.synthetic_record_id"

    .line 47
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                ) AS pdo ON sbt.messageID = pdo.messageID"

    .line 48
    invoke-static {v1, v3, v0, v2, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                    SELECT message_id, state AS as_state, extra, datetime(created_at/1000, \'unixepoch\', \'localtime\') AS action_datetime"

    const-string v3, "                    FROM action_state"

    .line 49
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                ) AS act_state ON sbt.messageID = act_state.message_id"

    const-string v3, "                WHERE sbt.spam_category != 4"

    .line 50
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "                AND (sbt.updateCategory IN ("

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 53
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") OR (sbt.updateCategory IS NULL AND pdo.active = 1 AND pdo.d IN ("

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 56
    invoke-static {v1, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")))"

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "                AND datetime_temp IS NOT NULL"

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "                AND CASE"

    const-string v5, "                    WHEN updateCategory IS NOT NULL"

    .line 61
    invoke-static {v1, v4, v0, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "                        THEN datetime_temp <= datetime(\'now\', \'localtime\')"

    const-string v5, "                    ELSE 1"

    .line 62
    invoke-static {v1, v4, v0, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "                END"

    const-string v5, "                ORDER BY datetime_temp DESC"

    .line 63
    invoke-static {v1, v4, v0, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "            )"

    const-string v5, "    "

    .line 64
    invoke-static {v1, v4, v0, v5}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x0

    add-int/2addr v1, v3

    .line 65
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 67
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v0, v3, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 70
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 71
    :cond_2
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 72
    :cond_3
    new-instance p1, Le/a/c/c/d/k0$i;

    invoke-direct {p1, p0, v0}, Le/a/c/c/d/k0$i;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    .line 73
    sget-object p2, Lq3/a/t0;->d:Lq3/a/g0;

    const-string v0, "fetchDispatcher"

    .line 74
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ln3/z/w;

    invoke-direct {v0, p1, p2}, Ln3/z/w;-><init>(Ln3/z/v$b;Lq3/a/g0;)V

    const-string p1, "dispatcher"

    .line 76
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "delegate"

    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ln3/z/w;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/z/k2;

    return-object p1
.end method

.method public p(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * FROM sms_backup_table\n            WHERE date >= ?\n            ORDER BY date DESC\n        "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p2, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    new-instance v2, Le/a/c/c/d/k0$h;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/k0$h;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p2, v1, p1, v2, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT sbt.messageID, sbt.address, sbt.date, IFNULL(sbt.updateCategory, ?) as updateCategory, classified_by, message, transport, parseFailed, errorMessage, retryCount, sbt.deleted, sbt.created_at, conversationId, sbt.spam_category, sbt.confidence_score, sbt.no_of_words FROM sms_backup_table sbt\n            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID\n            WHERE ((updateCategory NOT NULL \n            AND sbt.spam_category != 3) OR (pdo.d = \'Delivery\' AND pdo.c NOT NULL))\n            AND sbt.date > ?\n            AND sbt.date <= ?\n            ORDER BY sbt.date DESC\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p5, 0x2

    .line 4
    invoke-virtual {v0, p5, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 5
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 6
    iget-object p1, p0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "sms_backup_table"

    const-string p4, "parsed_data_object_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/k0$c;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/k0$c;-><init>(Le/a/c/c/d/k0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
