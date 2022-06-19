.class public Le/a/k3/j/i;
.super Le/a/k3/j/f;
.source "SourceFile"


# instance fields
.field public final c:Le/a/k3/j/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/k3/j/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Le/a/k3/j/j;

    invoke-direct {v0, p1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/k3/j/i;->c:Le/a/k3/j/j;

    return-void
.end method

.method public static c(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-nez v1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    iput-wide v3, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    .line 6
    new-instance v2, Lcom/truecaller/data/entity/Number;

    invoke-direct {v2, v1}, Lcom/truecaller/data/entity/Number;-><init>(Lcom/truecaller/data/entity/Number;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v2, v1}, Lcom/truecaller/data/entity/RowEntity;->setId(Ljava/lang/Long;)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/truecaller/data/entity/Number;->setTcId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/data/entity/Contact;->X0(J)V

    return-object v0
.end method


# virtual methods
.method public d(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 9

    .line 1
    invoke-static {p1}, Le/a/k3/j/b;->o(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le/a/k3/j/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3
    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "aggregated_contact_id=? AND contact_source=16"

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v2, Le/a/k3/j/d;

    invoke-direct {v2, v0}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 8
    invoke-virtual {v2, v8}, Le/a/k3/j/d;->h(Z)V

    .line 9
    invoke-virtual {v2, v0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v3

    .line 10
    :cond_0
    invoke-virtual {v2, v0, v3}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 12
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    throw p1

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    .line 14
    invoke-static {p1}, Le/a/k3/j/i;->c(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object v3

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v3, v1}, Lcom/truecaller/data/entity/RowEntity;->setId(Ljava/lang/Long;)V

    .line 16
    :goto_2
    iget-object p1, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p2, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Le/a/k3/j/i;->c:Le/a/k3/j/j;

    invoke-virtual {p1, v3}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 18
    new-instance p1, Le/a/k3/j/b;

    iget-object p2, p0, Le/a/k3/j/f;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Le/a/k3/j/b;->l(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method
