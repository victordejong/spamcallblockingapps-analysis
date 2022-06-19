.class public final Le/a/a/k/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/l;


# instance fields
.field public final a:Le/a/o5/b0;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/a/i0;

.field public final d:Le/a/a/k/a/e1;

.field public final e:Le/a/b0/e/l;

.field public final f:Le/a/o5/f0;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/o5/b0;Landroid/content/ContentResolver;Le/a/a/i0;Le/a/a/k/a/e1;Le/a/b0/e/l;Le/a/o5/f0;Lo3/a;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/b0;",
            "Landroid/content/ContentResolver;",
            "Le/a/a/i0;",
            "Le/a/a/k/a/e1;",
            "Le/a/b0/e/l;",
            "Le/a/o5/f0;",
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dateHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUserManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/m;->a:Le/a/o5/b0;

    iput-object p2, p0, Le/a/a/k/a/m;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/a/k/a/m;->c:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/k/a/m;->d:Le/a/a/k/a/e1;

    iput-object p5, p0, Le/a/a/k/a/m;->e:Le/a/b0/e/l;

    iput-object p6, p0, Le/a/a/k/a/m;->f:Le/a/o5/f0;

    iput-object p7, p0, Le/a/a/k/a/m;->g:Lo3/a;

    iput-object p8, p0, Le/a/a/k/a/m;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/k/a/m;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DISTINCT(data1)"

    .line 3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x4

    .line 4
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    sget-object v3, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "data_type = ? AND data_phonebook_id NOT NULL AND data8 = ?"

    const/4 v5, 0x0

    .line 5
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/a/k/a/m;->c:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->j0()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 12
    iget-object v0, p0, Le/a/a/k/a/m;->d:Le/a/a/k/a/e1;

    invoke-interface {v0, v2}, Le/a/a/k/a/e1;->c(Ljava/util/Collection;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/a/k/a/m;->d:Le/a/a/k/a/e1;

    .line 14
    invoke-interface {v0, v2, v6}, Le/a/a/k/a/e1;->a(Ljava/util/Collection;Z)Le/a/r2/x;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_3
    if-eqz v6, :cond_4

    .line 16
    iget-object v0, p0, Le/a/a/k/a/m;->c:Le/a/a/i0;

    iget-object v1, p0, Le/a/a/k/a/m;->a:Le/a/o5/b0;

    invoke-interface {v1}, Le/a/o5/b0;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/a/i0;->i4(J)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 17
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/k/a/m;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "workManager.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ln3/m0/y;

    iget-object v4, p0, Le/a/a/k/a/m;->h:Landroid/content/Context;

    const-string v3, "FetchImContactsWorkAction"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-static/range {v2 .. v7}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/m;->e:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/k/a/m;->f:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
