.class public final Le/a/c/c/d/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/w;


# instance fields
.field public final a:Ln3/c0/q;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/c/d/x;->a:Ln3/c0/q;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/insightsui/UpdateCategoryData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT updateCategory, COUNT(*) as count FROM sms_backup_table\n            WHERE updateCategory IS NOT NULL AND deleted = 0 AND spam_category != 4\n            GROUP BY updateCategory\n            ORDER BY count DESC\n        "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/x;->a:Ln3/c0/q;

    const-string v3, "sms_backup_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le/a/c/c/d/x$a;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/x$a;-><init>(Le/a/c/c/d/x;Ln3/c0/y;)V

    invoke-static {v2, v1, v3, v4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/insightsui/GrammarCategoryData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT d as domain, COUNT(*) as count FROM parsed_data_object_table\n            WHERE domain IS NOT NULL and active = 1\n            GROUP BY domain\n            ORDER BY count DESC\n        "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/x;->a:Ln3/c0/q;

    const-string v3, "parsed_data_object_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le/a/c/c/d/x$b;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/x$b;-><init>(Le/a/c/c/d/x;Ln3/c0/y;)V

    invoke-static {v2, v1, v3, v4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lq3/a/x2/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/insightsui/SenderFilterEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT CASE"

    const-string v2, "                WHEN sbt.updateCategory IS NOT NULL AND sbt.updateCategory != \'\' THEN sbt.address"

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "                WHEN pdo.d IS NOT NULL AND pdo.d != \'\' THEN pdo.address"

    const-string v4, "                ELSE \'\'"

    .line 2
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "            END sender_id,"

    const-string v5, "            CASE"

    .line 3
    invoke-static {v1, v3, v0, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v1, v2, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            END raw_sender_id, srt.sender_name as sender_name FROM sms_backup_table sbt"

    const-string v3, "            LEFT JOIN parsed_data_object_table pdo on sbt.messageID = pdo.messageID LEFT JOIN sender_resolution_table srt on srt.sender = pdo.address"

    .line 5
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            WHERE sbt.deleted = 0 AND sbt.spam_category != 4"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                AND (sbt.updateCategory IN ("

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 10
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") OR (sbt.updateCategory IS NULL AND pdo.active = 1 AND pdo.d IN ("

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 13
    invoke-static {v1, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")))"

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "                AND ((sender_id IS NOT NULL AND sender_id != \'\' AND sender_id LIKE \'%\' || "

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    const-string v5, " || \'%\')"

    const-string v6, "                    OR (raw_sender_id IS NOT NULL AND raw_sender_id != \'\' AND raw_sender_id LIKE \'%\' || "

    .line 17
    invoke-static {v1, v4, v5, v0, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "                    OR (srt.sender_name IS NOT NULL AND srt.sender_name != \'\' AND srt.sender_name LIKE \'%\' || "

    .line 18
    invoke-static {v1, v4, v5, v0, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " || \'%\'))"

    const-string v6, "                OR (pdo.address IN ("

    .line 19
    invoke-static {v1, v4, v5, v0, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    .line 21
    invoke-static {v1, v4}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v5, ") OR sbt.address IN ("

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    .line 24
    invoke-static {v1, v5}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v6, "))"

    .line 25
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "            GROUP BY sender_id"

    .line 27
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "            ORDER BY COUNT(sender_id) DESC"

    const-string v7, "        "

    .line 29
    invoke-static {v1, v6, v0, v7}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x3

    add-int/2addr v1, v3

    add-int v6, v1, v4

    add-int/2addr v6, v5

    .line 30
    invoke-static {v0, v6}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 32
    invoke-virtual {v0, v5}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v0, v5, v6}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    .line 34
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v5, p2

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 35
    invoke-virtual {v0, v5}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 36
    :cond_2
    invoke-virtual {v0, v5, v6}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr p2, v3

    if-nez p1, :cond_4

    .line 37
    invoke-virtual {v0, p2}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 38
    :cond_4
    invoke-virtual {v0, p2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 p2, v2, 0x2

    add-int/2addr p2, v3

    if-nez p1, :cond_5

    .line 39
    invoke-virtual {v0, p2}, Ln3/c0/y;->y0(I)V

    goto :goto_5

    .line 40
    :cond_5
    invoke-virtual {v0, p2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_5
    if-nez p1, :cond_6

    .line 41
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_6

    .line 42
    :cond_6
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_6
    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    .line 43
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v2

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_7

    .line 44
    invoke-virtual {v0, p2}, Ln3/c0/y;->y0(I)V

    goto :goto_8

    .line 45
    :cond_7
    invoke-virtual {v0, p2, p3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_8
    add-int/2addr v2, v4

    .line 46
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_9

    .line 47
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_a

    .line 48
    :cond_9
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 49
    :cond_a
    iget-object p1, p0, Le/a/c/c/d/x;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "sms_backup_table"

    const-string p4, "parsed_data_object_table"

    const-string v1, "sender_resolution_table"

    filled-new-array {p3, p4, v1}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/x$c;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/x$c;-><init>(Le/a/c/c/d/x;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
