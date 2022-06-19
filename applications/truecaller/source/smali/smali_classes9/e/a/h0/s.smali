.class public Le/a/h0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h0/r;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/h0/j;

.field public final c:Le/a/c/h/e;

.field public d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/k3/j/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h0/j;Le/a/r2/f;Le/a/c/h/e;Le/a/k3/j/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/h0/j;",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;",
            "Le/a/c/h/e;",
            "Le/a/k3/j/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/h0/s;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/h0/s;->b:Le/a/h0/j;

    .line 4
    iput-object p3, p0, Le/a/h0/s;->d:Le/a/r2/f;

    .line 5
    iput-object p4, p0, Le/a/h0/s;->c:Le/a/c/h/e;

    .line 6
    iput-object p5, p0, Le/a/h0/s;->e:Le/a/k3/j/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Le/a/r2/x;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v9, Le/a/h0/s;->e:Le/a/k3/j/b;

    const-string v2, "$this$getAddressesAndSpamVersions"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dao"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v10, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 6
    iget-object v3, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-wide v4, v2, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {v1, v4, v5}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v2, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_1
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    .line 11
    sget-object v12, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v13, 0x0

    .line 12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v14, v0, [Landroid/content/ContentValues;

    const/4 v0, 0x0

    move v15, v0

    .line 13
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_2

    .line 14
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 15
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 16
    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 17
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    .line 18
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 19
    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v7, p2

    .line 20
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v6, p3

    .line 21
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v4, p5

    move v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v0 .. v8}, Le/a/h0/s;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    .line 22
    aput-object v0, v14, v15

    .line 23
    iget-object v1, v9, Le/a/h0/s;->b:Le/a/h0/j;

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Le/a/h0/j;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 24
    :cond_2
    iget-object v0, v9, Le/a/h0/s;->c:Le/a/c/h/e;

    invoke-interface {v0}, Le/a/c/h/e;->b()V

    .line 25
    iget-object v0, v9, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 26
    iget-object v0, v9, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/a/r2/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/h0/w/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    .line 3
    iget-object v0, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "rule=? AND sync_state!=?"

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4
    new-instance v1, Le/a/h0/w/c;

    invoke-direct {v1, v0}, Le/a/h0/w/c;-><init>(Landroid/database/Cursor;)V

    sget-object v0, Le/a/h0/d;->a:Le/a/h0/d;

    .line 5
    new-instance v2, Le/a/r2/y;

    invoke-direct {v2, v1, v0}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    return-object v2
.end method

.method public c(Le/a/h0/w/a;Ljava/lang/String;Z)Le/a/r2/x;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h0/w/a;",
            "Ljava/lang/String;",
            "Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    iget-object v3, p1, Le/a/h0/w/a;->f:Ljava/lang/String;

    iget-object v4, p1, Le/a/h0/w/a;->d:Ljava/lang/String;

    iget v6, p1, Le/a/h0/w/a;->b:I

    iget-object v1, p1, Le/a/h0/w/a;->g:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v7, v1, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    iget v8, p1, Le/a/h0/w/a;->c:I

    sget-object v9, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v11, p1, Le/a/h0/w/a;->i:Ljava/lang/Integer;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v11}, Le/a/h0/s;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Le/a/h0/w/a;->b()Z

    move-result v2

    const/4 v3, 0x1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p1, Le/a/h0/w/a;->a:J

    .line 6
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "_id = ?"

    .line 7
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    iget-object v5, p0, Le/a/h0/s;->b:Le/a/h0/j;

    iget-object v6, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    const-string v7, "COUNTRY_CODE"

    const-string v8, "unblock"

    move-object v9, p2

    move v10, p3

    invoke-interface/range {v5 .. v10}, Le/a/h0/j;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Le/a/h0/w/a;->a()Z

    move-result v2

    const-string v3, "sync_state"

    if-nez v2, :cond_1

    const-string v2, "rule"

    .line 11
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    :goto_0
    iget-object v2, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 15
    iget-object v4, p0, Le/a/h0/s;->b:Le/a/h0/j;

    iget-object v5, p1, Le/a/h0/w/a;->e:Ljava/lang/String;

    iget-object v6, p1, Le/a/h0/w/a;->f:Ljava/lang/String;

    const-string v7, "unblock"

    move-object v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v9}, Le/a/h0/j;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iget-object p1, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 17
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Ljava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->formatPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .line 3
    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "REG_EXP"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Le/a/h0/s;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object p2

    .line 4
    iget p3, p3, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "wildcard_type"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object p3, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6
    iget-object v0, p0, Le/a/h0/s;->b:Le/a/h0/j;

    const-string v2, "REG_EXP"

    const-string v3, "block"

    invoke-interface/range {v0 .. v5}, Le/a/h0/j;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 8
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Could not compile wildcard pattern"

    .line 9
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/truecaller/common/network/country/CountryListDto$a;Ljava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/network/country/CountryListDto$a;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/truecaller/common/network/country/CountryListDto$a;->c:Ljava/lang/String;

    .line 2
    sget-object v6, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->UNKNOWN:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    const-string v2, "COUNTRY_CODE"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Le/a/h0/s;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sync_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v1, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5
    iget-object v0, p0, Le/a/h0/s;->b:Le/a/h0/j;

    const-string v2, "COUNTRY_CODE"

    const-string v3, "block"

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Le/a/h0/j;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object v9, p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-virtual/range {v0 .. v8}, Le/a/h0/s;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2
    iget-object v1, v9, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/truecaller/blocking/FiltersContract$Filters;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3
    iget-object v0, v9, Le/a/h0/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/filters/sync/FilterUploadWorker;->n(Landroid/content/Context;)V

    .line 4
    iget-object v1, v9, Le/a/h0/s;->b:Le/a/h0/j;

    const-string v4, "block"

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Le/a/h0/j;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, v9, Le/a/h0/s;->c:Le/a/c/h/e;

    invoke-interface {v0}, Le/a/c/h/e;->b()V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "value"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 3
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "rule"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "wildcard_type"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "sync_state"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "tracking_type"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tracking_source"

    .line 8
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget p1, p8, Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "entity_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "category_id"

    .line 10
    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "spam_version"

    .line 11
    invoke-virtual {v0, p1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    iget-object p1, p0, Le/a/h0/s;->d:Le/a/r2/f;

    invoke-static {p1, v0}, Le/a/h0/k;->C(Le/a/r2/f;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "history_event_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;
    .locals 12

    .line 1
    sget-object v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v7, v0, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Le/a/h0/s;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
