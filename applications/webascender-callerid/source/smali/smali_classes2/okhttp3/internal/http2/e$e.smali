.class public final Lokhttp3/internal/http2/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http2/g$c;
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/internal/http2/g$c;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lokhttp3/internal/http2/g;

.field final synthetic g:Lokhttp3/internal/http2/e;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/e;Lokhttp3/internal/http2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/http2/g;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/http2/e$e;->f:Lokhttp3/internal/http2/g;

    return-void
.end method


# virtual methods
.method public a(ZLokhttp3/internal/http2/m;)V
    .locals 11

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {v0}, Lokhttp3/internal/http2/e;->r(Lokhttp3/internal/http2/e;)Lm/k0/e/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v2}, Lokhttp3/internal/http2/e;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " applyAndAckSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lokhttp3/internal/http2/e$e$d;

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, v6

    move v5, v7

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v3 .. v10}, Lokhttp3/internal/http2/e$e$d;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e$e;ZLokhttp3/internal/http2/m;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    return-void
.end method

.method public b(ZIILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    const-string v1, "headerBlock"

    invoke-static {v10, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1, v9}, Lokhttp3/internal/http2/e;->Z0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1, v9, v10, v0}, Lokhttp3/internal/http2/e;->T0(ILjava/util/List;Z)V

    return-void

    .line 3
    :cond_0
    iget-object v13, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    monitor-enter v13

    .line 4
    :try_start_0
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1, v9}, Lokhttp3/internal/http2/e;->u0(I)Lokhttp3/internal/http2/h;

    move-result-object v8

    if-nez v8, :cond_4

    .line 5
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->y(Lokhttp3/internal/http2/e;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v13

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->k0()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v9, v1, :cond_2

    monitor-exit v13

    return-void

    .line 7
    :cond_2
    :try_start_2
    rem-int/lit8 v1, v9, 0x2

    iget-object v2, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v2}, Lokhttp3/internal/http2/e;->p0()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_3

    monitor-exit v13

    return-void

    .line 8
    :cond_3
    :try_start_3
    invoke-static/range {p4 .. p4}, Lm/k0/b;->M(Ljava/util/List;)Lm/x;

    move-result-object v6

    .line 9
    new-instance v7, Lokhttp3/internal/http2/h;

    iget-object v3, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    const/4 v4, 0x0

    move-object v1, v7

    move/from16 v2, p2

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/h;-><init>(ILokhttp3/internal/http2/e;ZZLm/x;)V

    .line 10
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1, v9}, Lokhttp3/internal/http2/e;->g1(I)V

    .line 11
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->y0()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->o(Lokhttp3/internal/http2/e;)Lm/k0/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lm/k0/e/e;->i()Lm/k0/e/d;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v2}, Lokhttp3/internal/http2/e;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onStream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v11, 0x1

    .line 13
    new-instance v15, Lokhttp3/internal/http2/e$e$b;

    move-object v1, v15

    move-object v2, v4

    move v3, v11

    move v5, v11

    move-object v6, v7

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lokhttp3/internal/http2/e$e$b;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/h;Lokhttp3/internal/http2/e$e;Lokhttp3/internal/http2/h;ILjava/util/List;Z)V

    const-wide/16 v0, 0x0

    invoke-virtual {v14, v15, v0, v1}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    monitor-exit v13

    return-void

    .line 15
    :cond_4
    :try_start_4
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    monitor-exit v13

    .line 17
    invoke-static/range {p4 .. p4}, Lm/k0/b;->M(Ljava/util/List;)Lm/x;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Lokhttp3/internal/http2/h;->x(Lm/x;Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v13

    throw v0
.end method

.method public c(ILokhttp3/internal/http2/a;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/e;->Z0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/e;->X0(ILokhttp3/internal/http2/a;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/e;->b1(I)Lokhttp3/internal/http2/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/h;->y(Lokhttp3/internal/http2/a;)V

    :cond_1
    return-void
.end method

.method public d(IJ)V
    .locals 3

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->G0()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/http2/e;->L(Lokhttp3/internal/http2/e;J)V

    .line 3
    iget-object p2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    sget-object p2, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p1

    goto :goto_0

    .line 7
    :cond_0
    :try_start_1
    new-instance p2, Lkotlin/TypeCastException;

    const-string p3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p2, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1

    throw p2

    .line 9
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/e;->u0(I)Lokhttp3/internal/http2/h;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    monitor-enter p1

    .line 11
    :try_start_2
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/h;->a(J)V

    .line 12
    sget-object p2, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public e(ILokhttp3/internal/http2/a;Ln/i;)V
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "debugData"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Ln/i;->size()I

    .line 2
    iget-object p2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {p3}, Lokhttp3/internal/http2/e;->y0()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Lokhttp3/internal/http2/h;

    .line 4
    invoke-interface {p3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, [Lokhttp3/internal/http2/h;

    .line 5
    iget-object v1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/http2/e;->K(Lokhttp3/internal/http2/e;Z)V

    .line 6
    sget-object v1, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p2

    .line 8
    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 9
    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->j()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    sget-object v2, Lokhttp3/internal/http2/a;->REFUSED_STREAM:Lokhttp3/internal/http2/a;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/h;->y(Lokhttp3/internal/http2/a;)V

    .line 11
    iget-object v2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/h;->j()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/e;->b1(I)Lokhttp3/internal/http2/h;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 12
    :cond_2
    :try_start_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p2

    throw p1
.end method

.method public final f(ZLokhttp3/internal/http2/m;)V
    .locals 22

    move-object/from16 v12, p0

    move-object/from16 v0, p2

    const-string v1, "settings"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v13, Lkotlin/w/c/p;

    invoke-direct {v13}, Lkotlin/w/c/p;-><init>()V

    .line 2
    new-instance v14, Lkotlin/w/c/q;

    invoke-direct {v14}, Lkotlin/w/c/q;-><init>()V

    .line 3
    new-instance v15, Lkotlin/w/c/q;

    invoke-direct {v15}, Lkotlin/w/c/q;-><init>()V

    .line 4
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->I0()Lokhttp3/internal/http2/i;

    move-result-object v16

    monitor-enter v16

    .line 5
    :try_start_0
    iget-object v11, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :try_start_1
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->s0()Lokhttp3/internal/http2/m;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 7
    iput-object v0, v15, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/m;

    invoke-direct {v2}, Lokhttp3/internal/http2/m;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/m;->g(Lokhttp3/internal/http2/m;)V

    .line 10
    invoke-virtual {v2, v0}, Lokhttp3/internal/http2/m;->g(Lokhttp3/internal/http2/m;)V

    .line 11
    iput-object v2, v15, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 12
    :goto_0
    iget-object v2, v15, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/m;

    invoke-virtual {v2}, Lokhttp3/internal/http2/m;->c()I

    move-result v2

    int-to-long v2, v2

    .line 13
    invoke-virtual {v1}, Lokhttp3/internal/http2/m;->c()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v13, Lkotlin/w/c/p;->f:J

    const/4 v10, 0x0

    const/16 v17, 0x0

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->y0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->y0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v2, v10, [Lokhttp3/internal/http2/h;

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, [Lokhttp3/internal/http2/h;

    goto :goto_2

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    move-object/from16 v1, v17

    .line 17
    :goto_2
    iput-object v1, v14, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 18
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    iget-object v2, v15, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v2, Lokhttp3/internal/http2/m;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/e;->h1(Lokhttp3/internal/http2/m;)V

    .line 19
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {v1}, Lokhttp3/internal/http2/e;->l(Lokhttp3/internal/http2/e;)Lm/k0/e/d;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v2}, Lokhttp3/internal/http2/e;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 20
    new-instance v6, Lokhttp3/internal/http2/e$e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v6

    move-object v2, v4

    move v3, v5

    move-object/from16 v18, v6

    move-object/from16 v6, p0

    move-object/from16 v19, v7

    move/from16 v7, p1

    move-object v8, v15

    move-object/from16 v9, p2

    const/16 v20, 0x0

    move-object v10, v13

    move-object/from16 v21, v11

    move-object v11, v14

    :try_start_2
    invoke-direct/range {v1 .. v11}, Lokhttp3/internal/http2/e$e$a;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e$e;ZLkotlin/w/c/q;Lokhttp3/internal/http2/m;Lkotlin/w/c/p;Lkotlin/w/c/q;)V

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    .line 21
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 23
    :try_start_4
    iget-object v0, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->I0()Lokhttp3/internal/http2/i;

    move-result-object v0

    iget-object v1, v15, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v1, Lokhttp3/internal/http2/m;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/i;->a(Lokhttp3/internal/http2/m;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v0

    .line 24
    :try_start_5
    iget-object v1, v12, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {v1, v0}, Lokhttp3/internal/http2/e;->a(Lokhttp3/internal/http2/e;Ljava/io/IOException;)V

    .line 25
    :goto_3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 26
    monitor-exit v16

    .line 27
    iget-object v0, v14, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lokhttp3/internal/http2/h;

    if-eqz v1, :cond_5

    .line 28
    check-cast v0, [Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_5

    aget-object v2, v0, v10

    .line 29
    monitor-enter v2

    .line 30
    :try_start_6
    iget-wide v3, v13, Lkotlin/w/c/p;->f:J

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http2/h;->a(J)V

    .line 31
    sget-object v3, Lkotlin/r;->a:Lkotlin/r;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 32
    monitor-exit v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 33
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v17

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v21, v11

    .line 34
    :goto_5
    :try_start_7
    monitor-exit v21

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 35
    monitor-exit v16

    throw v0
.end method

.method public g()V
    .locals 5

    .line 1
    sget-object v0, Lokhttp3/internal/http2/a;->INTERNAL_ERROR:Lokhttp3/internal/http2/a;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/e$e;->f:Lokhttp3/internal/http2/g;

    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/g;->c(Lokhttp3/internal/http2/g$c;)V

    .line 3
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/e$e;->f:Lokhttp3/internal/http2/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/g;->b(ZLokhttp3/internal/http2/g$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/a;->NO_ERROR:Lokhttp3/internal/http2/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    iget-object v3, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v3, v2, v0, v1}, Lokhttp3/internal/http2/e;->M(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;Ljava/io/IOException;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 7
    :goto_1
    :try_start_2
    sget-object v0, Lokhttp3/internal/http2/a;->PROTOCOL_ERROR:Lokhttp3/internal/http2/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    iget-object v2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v2, v0, v0, v1}, Lokhttp3/internal/http2/e;->M(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;Ljava/io/IOException;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->f:Lokhttp3/internal/http2/g;

    invoke-static {v0}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v3

    .line 10
    :goto_3
    iget-object v4, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v4, v2, v0, v1}, Lokhttp3/internal/http2/e;->M(Lokhttp3/internal/http2/a;Lokhttp3/internal/http2/a;Ljava/io/IOException;)V

    .line 11
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->f:Lokhttp3/internal/http2/g;

    invoke-static {v0}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    throw v3
.end method

.method public h(ZII)V
    .locals 11

    if-eqz p1, :cond_4

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    monitor-enter p1

    const/4 p3, 0x1

    const-wide/16 v0, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    .line 2
    :goto_0
    :try_start_0
    sget-object p2, Lkotlin/r;->a:Lkotlin/r;

    goto :goto_1

    .line 3
    :cond_0
    iget-object p2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {p2}, Lokhttp3/internal/http2/e;->b(Lokhttp3/internal/http2/e;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lokhttp3/internal/http2/e;->z(Lokhttp3/internal/http2/e;J)V

    .line 4
    iget-object p2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :cond_1
    new-instance p2, Lkotlin/TypeCastException;

    const-string p3, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p2, p3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_2
    iget-object p2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {p2}, Lokhttp3/internal/http2/e;->f(Lokhttp3/internal/http2/e;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lokhttp3/internal/http2/e;->A(Lokhttp3/internal/http2/e;J)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p2, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {p2}, Lokhttp3/internal/http2/e;->i(Lokhttp3/internal/http2/e;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p2, v2, v3}, Lokhttp3/internal/http2/e;->D(Lokhttp3/internal/http2/e;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .line 9
    :cond_4
    iget-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-static {p1}, Lokhttp3/internal/http2/e;->r(Lokhttp3/internal/http2/e;)Lm/k0/e/d;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v1}, Lokhttp3/internal/http2/e;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    .line 10
    new-instance v10, Lokhttp3/internal/http2/e$e$c;

    move-object v2, v10

    move-object v3, v5

    move v4, v6

    move-object v7, p0

    move v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lokhttp3/internal/http2/e$e$c;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLokhttp3/internal/http2/e$e;II)V

    invoke-virtual {p1, v10, v0, v1}, Lm/k0/e/d;->i(Lm/k0/e/a;J)V

    :goto_2
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/http2/e$e;->g()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public j(ZILn/h;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/e;->Z0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/e;->O0(ILn/h;IZ)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/e;->u0(I)Lokhttp3/internal/http2/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    sget-object v0, Lokhttp3/internal/http2/a;->PROTOCOL_ERROR:Lokhttp3/internal/http2/a;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/e;->D1(ILokhttp3/internal/http2/a;)V

    .line 5
    iget-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/e;->y1(J)V

    .line 6
    invoke-interface {p3, v0, v1}, Ln/h;->H0(J)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/h;->w(Ln/h;I)V

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lm/k0/b;->b:Lm/x;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/h;->x(Lm/x;Z)V

    :cond_2
    return-void
.end method

.method public k(IIIZ)V
    .locals 0

    return-void
.end method

.method public l(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;)V"
        }
    .end annotation

    const-string p1, "requestHeaders"

    invoke-static {p3, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/e$e;->g:Lokhttp3/internal/http2/e;

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/e;->U0(ILjava/util/List;)V

    return-void
.end method
