.class public final Le/a/d/c0/z1/k$y;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z1/k;->F(Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$search$1"
    f = "CallInfoRepository.kt"
    l = {
        0x27e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public i:I

.field public final synthetic j:Le/a/d/c0/z1/k;

.field public final synthetic k:Ljava/util/Map;

.field public final synthetic l:Ljava/util/Map;


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/k;Ljava/util/Map;Ljava/util/Map;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    iput-object p2, p0, Le/a/d/c0/z1/k$y;->k:Ljava/util/Map;

    iput-object p3, p0, Le/a/d/c0/z1/k$y;->l:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/d/c0/z1/k$y;

    iget-object v0, p0, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    iget-object v1, p0, Le/a/d/c0/z1/k$y;->k:Ljava/util/Map;

    iget-object v2, p0, Le/a/d/c0/z1/k$y;->l:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/z1/k$y;-><init>(Le/a/d/c0/z1/k;Ljava/util/Map;Ljava/util/Map;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/z1/k$y;

    iget-object v0, p0, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    iget-object v1, p0, Le/a/d/c0/z1/k$y;->k:Ljava/util/Map;

    iget-object v2, p0, Le/a/d/c0/z1/k$y;->l:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/z1/k$y;-><init>(Le/a/d/c0/z1/k;Ljava/util/Map;Ljava/util/Map;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/k$y;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$y;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, v0, Le/a/d/c0/z1/k$y;->h:I

    iget-object v4, v0, Le/a/d/c0/z1/k$y;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/z1/o;

    iget-object v5, v0, Le/a/d/c0/z1/k$y;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/d/c0/z1/k$y;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    move v7, v2

    move-object v2, v0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/d/c0/z1/k$y;->k:Ljava/util/Map;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v2

    move-object v6, v4

    move-object v2, v0

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/c0/z1/o;

    .line 8
    iget-object v8, v2, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    iput-object v6, v2, Le/a/d/c0/z1/k$y;->e:Ljava/lang/Object;

    iput-object v5, v2, Le/a/d/c0/z1/k$y;->f:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/c0/z1/k$y;->g:Ljava/lang/Object;

    iput v7, v2, Le/a/d/c0/z1/k$y;->h:I

    iput v3, v2, Le/a/d/c0/z1/k$y;->i:I

    invoke-virtual {v8, v4, v7, v2}, Le/a/d/c0/z1/k;->C(Le/a/d/c0/z1/o;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_1
    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_4

    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot resolve number for peer id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " handle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    iget-object v4, v2, Le/a/d/c0/z1/k$y;->l:Ljava/util/Map;

    .line 12
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    invoke-static {v4, v8}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq3/a/x2/a1;

    sget-object v7, Le/a/d/c0/j$a;->a:Le/a/d/c0/j$a;

    invoke-interface {v4, v7}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    const/4 v4, 0x0

    goto :goto_2

    .line 14
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resolved number for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " number: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    iget-object v4, v2, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    .line 16
    iget-object v4, v4, Le/a/d/c0/z1/k;->w:Le/a/d/c0/y1/b;

    .line 17
    invoke-static {v8}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v4, v9}, Le/a/d/c0/y1/b;->g(Ljava/util/Set;)V

    .line 18
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    new-instance v7, Ls1/k;

    invoke-direct {v7, v8, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v7

    :goto_2
    if-eqz v4, :cond_2

    .line 20
    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 21
    :cond_5
    check-cast v6, Ljava/util/List;

    .line 22
    invoke-static {v6}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 23
    iget-object v3, v2, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    .line 24
    iget-object v4, v3, Le/a/d/c0/z1/k;->s:Le/a/d/c0/e;

    .line 25
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, v2, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    invoke-virtual {v6}, Le/a/d/c0/z1/k;->b()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Le/a/d/c0/e;->d(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/groupcall/call/CallDirection;)Ljava/util/Map;

    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lq3/a/x2/i1;

    .line 27
    invoke-static {v1, v10}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 28
    iget-object v4, v2, Le/a/d/c0/z1/k$y;->l:Ljava/util/Map;

    .line 29
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 30
    invoke-static {v4, v5}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lq3/a/x2/a1;

    .line 31
    iget-object v4, v2, Le/a/d/c0/z1/k$y;->j:Le/a/d/c0/z1/k;

    .line 32
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v15, Le/a/d/c0/z1/n;

    const/4 v12, 0x0

    move-object v6, v15

    move-object v7, v4

    invoke-direct/range {v6 .. v12}, Le/a/d/c0/z1/n;-><init>(Le/a/d/c0/z1/k;Lq3/a/x2/i1;Lq3/a/x2/a1;Ljava/lang/String;ILs1/w/d;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    move-object v12, v4

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    .line 34
    :cond_6
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
