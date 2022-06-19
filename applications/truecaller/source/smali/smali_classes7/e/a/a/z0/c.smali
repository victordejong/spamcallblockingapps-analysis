.class public final Le/a/a/z0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/z0/b;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/g/g;

.field public final c:Le/a/a/i0;

.field public final d:Le/a/a/z0/d;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/b0/q/l0;

.field public final g:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/a/z0/d;Le/a/r2/f;Le/a/b0/q/l0;Le/a/u3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Le/a/a/g/g;",
            "Le/a/a/i0;",
            "Le/a/a/z0/d;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;",
            "Le/a/b0/q/l0;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageToNudgeNotificationHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/z0/c;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/z0/c;->b:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/z0/c;->c:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/z0/c;->d:Le/a/a/z0/d;

    iput-object p5, p0, Le/a/a/z0/c;->e:Le/a/r2/f;

    iput-object p6, p0, Le/a/a/z0/c;->f:Le/a/b0/q/l0;

    iput-object p7, p0, Le/a/a/z0/c;->g:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/z0/c;->g:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->Q()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/a/z0/c;->f:Le/a/b0/q/l0;

    iget-object v0, p0, Le/a/a/z0/c;->c:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->x2()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/a/z0/c;->a:Landroid/content/ContentResolver;

    .line 4
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "message_to_nudge"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Le/a/a/z0/c;->b:Le/a/a/g/g;

    invoke-interface {v1, v0}, Le/a/a/g/g;->r(Landroid/database/Cursor;)Le/a/a/g/j0/t;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 8
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v0}, Le/a/a/g/j0/t;->C0()Le/a/a/g/l0/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 13
    :cond_3
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 14
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 15
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/l0/e;

    .line 16
    iget-object v3, p0, Le/a/a/z0/c;->d:Le/a/a/z0/d;

    .line 17
    iget-wide v4, v1, Le/a/a/g/l0/e;->a:J

    .line 18
    iget-wide v6, v1, Le/a/a/g/l0/e;->b:J

    .line 19
    iget-object v8, v1, Le/a/a/g/l0/e;->d:Ljava/lang/String;

    .line 20
    iget v1, v1, Le/a/a/g/l0/e;->c:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    move v9, v1

    .line 21
    invoke-interface/range {v3 .. v9}, Le/a/a/z0/d;->a(JJLjava/lang/String;Z)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object v0, p0, Le/a/a/z0/c;->e:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 25
    check-cast v3, Le/a/a/g/l0/e;

    .line 26
    iget-wide v3, v3, Le/a/a/g/l0/e;->b:J

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v0, v1}, Le/a/a/g/m;->E(Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Le/a/a/z0/c;->c:Le/a/a/i0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/a/i0;->d2(J)V

    return-void
.end method
