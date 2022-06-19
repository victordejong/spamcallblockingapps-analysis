.class public final Le/a/a/k/a/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/e1;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Le/a/p5/c;

.field public final d:Le/a/a/k/a/s1;

.field public final e:Landroid/content/ContentResolver;

.field public final f:Le/a/b0/e/l;

.field public final g:Le/a/o5/f0;

.field public final h:Le/a/a/i0;

.field public final i:Le/a/p5/u;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Le/a/a/k/a/a/q;


# direct methods
.method public constructor <init>(IILe/a/p5/c;Le/a/a/k/a/s1;Landroid/content/ContentResolver;Le/a/b0/e/l;Le/a/o5/f0;Le/a/a/i0;Le/a/p5/u;Lo3/a;Le/a/a/k/a/a/q;)V
    .locals 1
    .param p1    # I
        .annotation runtime Ljavax/inject/Named;
            value = "max_get_users_batch_size"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavax/inject/Named;
            value = "max_db_argument_count"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le/a/p5/c;",
            "Le/a/a/k/a/s1;",
            "Landroid/content/ContentResolver;",
            "Le/a/b0/e/l;",
            "Le/a/o5/f0;",
            "Le/a/a/i0;",
            "Le/a/p5/u;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;>;",
            "Le/a/a/k/a/a/q;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupUtil"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/k/a/f1;->a:I

    iput p2, p0, Le/a/a/k/a/f1;->b:I

    iput-object p3, p0, Le/a/a/k/a/f1;->c:Le/a/p5/c;

    iput-object p4, p0, Le/a/a/k/a/f1;->d:Le/a/a/k/a/s1;

    iput-object p5, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    iput-object p6, p0, Le/a/a/k/a/f1;->f:Le/a/b0/e/l;

    iput-object p7, p0, Le/a/a/k/a/f1;->g:Le/a/o5/f0;

    iput-object p8, p0, Le/a/a/k/a/f1;->h:Le/a/a/i0;

    iput-object p9, p0, Le/a/a/k/a/f1;->i:Le/a/p5/u;

    iput-object p10, p0, Le/a/a/k/a/f1;->j:Lo3/a;

    iput-object p11, p0, Le/a/a/k/a/f1;->k:Le/a/a/k/a/a/q;

    return-void
.end method

.method public static final i(Le/a/a/k/a/f1;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    iget-object v1, v0, Le/a/a/k/a/f1;->h:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->L3()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    .line 3
    :cond_2
    sget-wide v1, Le/a/a/k/a/h1;->a:J

    .line 4
    :goto_2
    iget-object v3, v0, Le/a/a/k/a/f1;->c:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v10

    sub-long v12, v10, v1

    .line 5
    iget-object v14, v0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 6
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v15

    const-string v0, "normalized_number"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "normalized_number IN ("

    .line 8
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    sget-object v6, Le/a/a/k/a/g1;->b:Le/a/a/k/a/g1;

    const/16 v18, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v9, v7

    move/from16 v7, v18

    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")\n                AND (im_peer_id IS NOT NULL OR date BETWEEN ? AND ?)"

    invoke-static {v9, v0, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v5, v17

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 14
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 15
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 16
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    .line 17
    :cond_5
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 18
    :goto_5
    invoke-static {v8, v0}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;Z)Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f1;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/k/a/f1;->i:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    .line 3
    iget v0, p0, Le/a/a/k/a/f1;->b:I

    invoke-static {p1, v0}, Ls1/e0/x;->b(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/a/k/a/f1$a;

    invoke-direct {v0, p0, p2}, Le/a/a/k/a/f1$a;-><init>(Le/a/a/k/a/f1;Z)V

    invoke-static {p1, v0}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->W0(Ls1/e0/k;)Ls1/e0/k;

    move-result-object p1

    .line 6
    iget p2, p0, Le/a/a/k/a/f1;->a:I

    invoke-static {p1, p2}, Ls1/e0/x;->b(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object p1

    .line 7
    check-cast p1, Ls1/u/g0;

    invoke-virtual {p1}, Ls1/u/g0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 8
    invoke-virtual {p0, v1, p2}, Le/a/a/k/a/f1;->k(Ljava/util/Collection;Z)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "normalizedNumbers.asSequ\u2026.let { Promise.wrap(it) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_2
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "imPeerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizedNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalized_number"

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Le/a/a/k/a/f1;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f1;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/a/k/a/f1;->i:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    .line 3
    iget v0, p0, Le/a/a/k/a/f1;->b:I

    invoke-static {p1, v0}, Ls1/e0/x;->b(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/a/k/a/f1$c;

    invoke-direct {v0, p0}, Le/a/a/k/a/f1$c;-><init>(Le/a/a/k/a/f1;)V

    invoke-static {p1, v0}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->W0(Ls1/e0/k;)Ls1/e0/k;

    move-result-object p1

    .line 6
    invoke-static {p1}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/k/a/f1;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l4/h;

    invoke-interface {v0, p1}, Le/a/l4/h;->e(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "imPeerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 2
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "msg/msg_im_users"

    .line 4
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "im_peer_id"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 8
    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.truecaller.messaging.transport.im.ACTION_IM_USED_ADDED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "phone_numbers"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 11
    iget-object p1, p0, Le/a/a/k/a/f1;->g:Le/a/o5/f0;

    invoke-interface {p1, v0}, Le/a/o5/f0;->j(Landroid/content/Intent;)V

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    .line 12
    invoke-static {v0}, Ls1/u/i;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/k/a/f1;->k(Ljava/util/Collection;Z)Z

    .line 13
    iget-object v4, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 14
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v5

    .line 15
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    new-array v8, p1, [Ljava/lang/String;

    aput-object p2, v8, v3

    const/4 v9, 0x0

    const-string v7, "normalized_number = ? AND im_peer_id NOT NULL"

    .line 16
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    :try_start_0
    const-string v0, "it"

    .line 17
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-static {p2, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move v3, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 18
    :cond_1
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(hasImId(normalizedNumber))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 19
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(J)Le/a/r2/x;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Le/a/a/k/a/k1;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/a/k/a/f1;->h:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "AND im_peer_id != "

    .line 2
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1 IN\n                (SELECT normalized_number FROM msg_im_users\n                WHERE im_peer_id NOT NULL AND join_im_notification=0\n                AND registration_timestamp >= ?\n                "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x4

    .line 5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    .line 6
    sget-object v6, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v4, v8

    .line 7
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v4, v9

    .line 8
    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 9
    iget-object v10, v1, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 10
    invoke-static {}, Le/a/m0/a1$h;->a()Landroid/net/Uri;

    move-result-object v11

    const-string v6, "DISTINCT(data1)"

    .line 11
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v6, "data_phonebook_id NOT NULL AND data_type = ? AND data8 = ?"

    const-string v13, " AND "

    .line 12
    invoke-static {v6, v13, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v2, v7, [Ljava/lang/String;

    .line 13
    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 14
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v6, "Promise.wrap(null)"

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    .line 15
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 17
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {v2, v10}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    invoke-static {v11}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 20
    iget-object v11, v1, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 21
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v12

    const-string v13, "normalized_destination"

    .line 22
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v14, "tc_im_peer_id IS NOT NULL AND\n               _id IN\n                    (SELECT DISTINCT(participant_id) FROM msg_messages\n                    WHERE transport = 2)"

    .line 23
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 24
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 26
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    .line 27
    :cond_2
    invoke-static {v11, v10}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 28
    invoke-interface {v2, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v6, v1, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 30
    invoke-static {}, Le/a/m0/a1$a;->d()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "DISTINCT(_id)"

    const-string v12, "contact_name"

    const-string v13, "data1"

    const-string v14, "contact_image_url"

    const-string v15, "contact_phonebook_id"

    .line 31
    filled-new-array {v11, v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "data1 IN ("

    .line 32
    invoke-static {v12}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Le/a/a/k/a/f1$b;->b:Le/a/a/k/a/f1$b;

    const/16 v20, 0x1f

    move-object v13, v2

    invoke-static/range {v13 .. v20}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v16

    new-array v0, v7, [Ljava/lang/String;

    .line 33
    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [Ljava/lang/String;

    move-object v13, v6

    move-object v14, v10

    move-object v15, v11

    .line 34
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 35
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    new-instance v4, Le/a/a/k/a/k1;

    .line 38
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 39
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 40
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "getString(2)"

    invoke-static {v13, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object v10, v4

    .line 43
    invoke-direct/range {v10 .. v15}, Le/a/a/k/a/k1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 45
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 46
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    const/4 v0, 0x0

    .line 47
    :goto_4
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v2, "Promise.wrap(joinedImUsers)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 48
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v11, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 49
    :cond_5
    invoke-static {v10}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 50
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 51
    :cond_6
    invoke-static {v10}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "imPeerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tc_id"

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Le/a/a/k/a/f1;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "normalized_number"

    .line 5
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "join_im_notification"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/content/ContentValues;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    check-cast p1, [Landroid/content/ContentValues;

    .line 10
    iget-object v0, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method public h(Ljava/lang/String;)Le/a/r2/x;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "imPeerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "normalized_number"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v4, "im_peer_id=?"

    const/4 v6, 0x0

    .line 4
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 7
    :goto_0
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_1
    :goto_1
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(number)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p4, :cond_0

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object p4

    invoke-static {p4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    const-string v1, "im_peer_id = ? AND "

    const-string v2, " NOT NULL"

    .line 3
    invoke-static {v1, p2, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    .line 4
    invoke-virtual {p4, v3}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    .line 5
    invoke-virtual {p4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "im_peer_id"

    .line 8
    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/a/a/k/a/f1;->k:Le/a/a/k/a/a/q;

    invoke-interface {v1, p1}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "fallback_name"

    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/a/k/a/f1;->c:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "date"

    invoke-virtual {p4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    invoke-virtual {p4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :try_start_0
    iget-object p1, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    sget-object p2, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p2, "com.truecaller"

    :try_start_1
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    const-string p2, "contentResolver.applyBat\u2026tAuthority(), operations)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public final k(Ljava/util/Collection;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f1;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Le/a/a/k/a/f1;->i:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/a/f1;->d:Le/a/a/k/a/s1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    const/16 v4, 0xa

    if-eqz v0, :cond_6

    .line 3
    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Le/q/f/a/d/a;->Y1(I)I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    move v5, v6

    .line 4
    :cond_1
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 6
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0x2b

    const/4 v10, 0x2

    .line 7
    invoke-static {v8, v9, v1, v10}, Ls1/f0/v;->W(Ljava/lang/CharSequence;CZI)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v8, v2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 9
    :goto_1
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 11
    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Ls1/u/t;->a:Ls1/u/t;

    goto :goto_3

    .line 12
    :cond_4
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/GetUsers$Request$a;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v8, v7, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;

    invoke-static {v8, v5}, Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;Ljava/lang/Iterable;)V

    .line 15
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    .line 16
    check-cast v5, Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;

    .line 17
    :try_start_0
    invoke-virtual {v0, v5}, Le/a/t2/a/e/a/b$a;->m(Lcom/truecaller/api/services/messenger/v1/GetUsers$Request;)Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;

    move-result-object v0

    const-string v5, "response"

    .line 18
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetUsers$Response;->getUsersMap()Ljava/util/Map;

    move-result-object v0

    const-string v5, "response.usersMap"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Le/q/f/a/d/a;->Y1(I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 22
    move-object v8, v7

    check-cast v8, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    check-cast v7, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    move-object v0, v5

    goto :goto_3

    :catch_0
    :cond_6
    move-object v0, v2

    .line 25
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 27
    check-cast v6, Ljava/lang/String;

    .line 28
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "normalized_number"

    .line 29
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v8, p0, Le/a/a/k/a/f1;->c:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "date"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v0, :cond_d

    .line 31
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/User;

    if-eqz v6, :cond_7

    .line 32
    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/User;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_7
    move-object v8, v2

    :goto_5
    const-string v9, "im_peer_id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_8

    .line 33
    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/User;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v9, p0, Le/a/a/k/a/f1;->k:Le/a/a/k/a/a/q;

    invoke-interface {v9, v8}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const-string v8, ""

    :goto_6
    const-string v9, "fallback_name"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_9

    .line 34
    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/User;->getCreated()I

    move-result v8

    goto :goto_7

    :cond_9
    move v8, v1

    :goto_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "registration_timestamp"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v6, :cond_a

    .line 35
    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/User;->getId()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_a
    move-object v6, v2

    :goto_8
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_9

    :cond_b
    move v6, v1

    goto :goto_a

    :cond_c
    :goto_9
    move v6, v3

    :goto_a
    if-eqz v6, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "join_im_notification"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    :cond_d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    new-array v2, v1, [Landroid/content/ContentValues;

    .line 37
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    check-cast v2, [Landroid/content/ContentValues;

    .line 39
    iget-object v4, p0, Le/a/a/k/a/f1;->e:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    if-eqz p2, :cond_f

    .line 40
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.truecaller.messaging.transport.im.ACTION_IM_USED_ADDED"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "phone_numbers"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Le/a/a/k/a/f1;->g:Le/a/o5/f0;

    invoke-interface {p1, p2}, Le/a/o5/f0;->j(Landroid/content/Intent;)V

    :cond_f
    if-eqz v0, :cond_10

    move v1, v3

    :cond_10
    :goto_b
    return v1
.end method
