.class public final Le/a/d/c0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/e;


# instance fields
.field public final a:Lq3/a/b3/c;

.field public final b:Ls1/w/f;

.field public final c:Le/a/d/c0/y0;

.field public final d:Le/a/d/c0/j1;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/y0;Le/a/d/c0/j1;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/f;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/f;->c:Le/a/d/c0/y0;

    iput-object p3, p0, Le/a/d/c0/f;->d:Le/a/d/c0/j1;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/f;->a:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/groupcall/call/CallDirection;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/b0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/f;->b:Ls1/w/f;

    new-instance v1, Le/a/d/c0/f$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Le/a/d/c0/f$e;-><init>(Le/a/d/c0/f;Lcom/truecaller/voip/groupcall/call/CallDirection;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/voip/util/VoipSearchDirection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq3/a/x2/i1<",
            "Le/a/d/c0/j;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "scope"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "numbers"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "direction"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Lq3/a/j0;->b:Lq3/a/j0;

    new-instance v6, Le/a/d/c0/f$c;

    const/4 v2, 0x0

    move-object/from16 v15, p0

    invoke-direct {v6, v15, v0, v1, v2}, Le/a/d/c0/f$c;-><init>(Le/a/d/c0/f;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v1

    const/16 v2, 0xa

    .line 2
    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    .line 3
    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    sget-object v3, Le/a/d/c0/j$c;->a:Le/a/d/c0/j$c;

    invoke-static {v3}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v7

    .line 7
    new-instance v6, Le/a/d/c0/g;

    const/16 v16, 0x0

    const/4 v3, 0x0

    move-object v10, v6

    move-object/from16 v11, p0

    move-object v12, v2

    move-object v13, v7

    move-object v14, v1

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Le/a/d/c0/g;-><init>(Le/a/d/c0/f;Ljava/lang/String;Lq3/a/x2/a1;Lq3/a/n0;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x3

    move-object/from16 v3, p1

    move-object v11, v7

    move v7, v10

    move-object v10, v8

    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 8
    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, p0

    move-object v8, v10

    goto :goto_0

    :cond_1
    move-object v10, v8

    return-object v10
.end method

.method public c(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/groupcall/call/CallDirection;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/b0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/f;->b:Ls1/w/f;

    new-instance v1, Le/a/d/c0/f$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/d/c0/f$d;-><init>(Le/a/d/c0/f;Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/groupcall/call/CallDirection;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/voip/groupcall/call/CallDirection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq3/a/x2/i1<",
            "Le/a/d/c0/j;",
            ">;>;"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numbers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    sget-object p3, Lcom/truecaller/voip/util/VoipSearchDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipSearchDirection;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p3, Lcom/truecaller/voip/util/VoipSearchDirection;->INCOMING:Lcom/truecaller/voip/util/VoipSearchDirection;

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/d/c0/f;->b(Lq3/a/i0;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final e(Le/a/d/c0/k1;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/k1;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/c0/l1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/f$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/f$b;

    iget v1, v0, Le/a/d/c0/f$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/f$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/f$b;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/f$b;-><init>(Le/a/d/c0/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/f$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/f$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/f$b;->g:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Le/a/d/c0/k1;->b:Ljava/util/Set;

    .line 5
    new-instance p2, Lq3/a/x2/h;

    invoke-direct {p2, p1}, Lq3/a/x2/h;-><init>(Ljava/lang/Iterable;)V

    .line 6
    new-instance p1, Le/a/d/c0/l1;

    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-direct {p1, v4, v4, v4, v2}, Le/a/d/c0/l1;-><init>(IZZI)V

    .line 7
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    iput-object p1, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    new-instance p1, Le/a/d/c0/f$a;

    invoke-direct {p1, v2, p0}, Le/a/d/c0/f$a;-><init>(Ls1/z/c/c0;Le/a/d/c0/f;)V

    iput-object v2, v0, Le/a/d/c0/f$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/f$b;->e:I

    invoke-virtual {p2, p1, v0}, Lq3/a/x2/h;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, v2

    .line 9
    :goto_1
    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    return-object p1
.end method
