.class public final Le/a/r5/m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/r5/o;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.whoviewedme.ProfileViewDaoImpl$getAllIncomingProfileViews$2"
    f = "ProfileViewDao.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r5/n;

.field public final synthetic f:Lcom/truecaller/whoviewedme/ProfileViewSource;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Le/a/r5/n;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/m;->e:Le/a/r5/n;

    iput-object p2, p0, Le/a/r5/m;->f:Lcom/truecaller/whoviewedme/ProfileViewSource;

    iput-wide p3, p0, Le/a/r5/m;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r5/m;

    iget-object v1, p0, Le/a/r5/m;->e:Le/a/r5/n;

    iget-object v2, p0, Le/a/r5/m;->f:Lcom/truecaller/whoviewedme/ProfileViewSource;

    iget-wide v3, p0, Le/a/r5/m;->g:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/r5/m;-><init>(Le/a/r5/n;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r5/m;

    iget-object v1, p0, Le/a/r5/m;->e:Le/a/r5/n;

    iget-object v2, p0, Le/a/r5/m;->f:Lcom/truecaller/whoviewedme/ProfileViewSource;

    iget-wide v3, p0, Le/a/r5/m;->g:J

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/r5/m;-><init>(Le/a/r5/n;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r5/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object v0, v1, Le/a/r5/m;->e:Le/a/r5/n;

    .line 3
    iget-object v2, v0, Le/a/r5/n;->c:Landroid/content/ContentResolver;

    .line 4
    iget-object v3, v0, Le/a/r5/n;->b:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 5
    iget-object v0, v1, Le/a/r5/m;->f:Lcom/truecaller/whoviewedme/ProfileViewSource;

    if-eqz v0, :cond_0

    const-string v5, "source = ? AND timestamp >= ?"

    goto :goto_0

    :cond_0
    const-string v5, "timestamp >= ?"

    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    iget-wide v9, v1, Le/a/r5/m;->g:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v0

    invoke-static {v6}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v6, v7, [Ljava/lang/String;

    .line 7
    invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const-string v7, "timestamp DESC"

    .line 8
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 9
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    new-instance v3, Le/a/k3/j/d;

    invoke-direct {v3, v2}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 12
    invoke-virtual {v3, v2}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v3, v2, v4}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    move-object/from16 v16, v4

    goto :goto_3

    :cond_2
    move-object/from16 v16, v8

    :goto_3
    if-eqz v16, :cond_4

    const-string v3, "rowid"

    .line 14
    invoke-static {v2, v3}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    const-string v3, "timestamp"

    .line 15
    invoke-static {v2, v3}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v12

    .line 16
    sget-object v14, Lcom/truecaller/whoviewedme/ProfileViewType;->INCOMING:Lcom/truecaller/whoviewedme/ProfileViewType;

    const-string v3, "source"

    .line 17
    invoke-static {v2, v3}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v1, Le/a/r5/m;->e:Le/a/r5/n;

    .line 18
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    invoke-static {v3}, Lcom/truecaller/whoviewedme/ProfileViewSource;->valueOf(Ljava/lang/String;)Lcom/truecaller/whoviewedme/ProfileViewSource;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-object v3, v8

    :goto_4
    move-object v15, v3

    goto :goto_5

    :cond_3
    move-object v15, v8

    .line 20
    :goto_5
    :try_start_2
    new-instance v3, Le/a/r5/o;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Le/a/r5/o;-><init>(JJLcom/truecaller/whoviewedme/ProfileViewType;Lcom/truecaller/whoviewedme/ProfileViewSource;Lcom/truecaller/data/entity/Contact;)V

    goto :goto_6

    :cond_4
    move-object v3, v8

    .line 21
    :goto_6
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {v2, v8}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    invoke-static {v0}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 24
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 25
    :cond_6
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_7
    return-object v0
.end method
