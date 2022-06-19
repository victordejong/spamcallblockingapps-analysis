.class public final Le/a/c/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/j/b;


# instance fields
.field public final a:Le/a/c/h/g;

.field public final b:Le/a/e4/p;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/h/g;Le/a/e4/p;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageFetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/j/d;->a:Le/a/c/h/g;

    iput-object p2, p0, Le/a/c/j/d;->b:Le/a/e4/p;

    iput-object p3, p0, Le/a/c/j/d;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/j/f;Ls1/z/b/l;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/j/f;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "open"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/c/j/f$a;

    if-eqz v0, :cond_6

    .line 2
    move-object v0, p1

    check-cast v0, Le/a/c/j/f$a;

    .line 3
    iget-object v1, v0, Le/a/c/j/f$a;->b:Le/a/c/j/a;

    .line 4
    iget-object v2, v1, Le/a/c/j/a;->b:Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 5
    iget-object v1, v1, Le/a/c/j/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 7
    iget-object v1, v0, Le/a/c/j/f$a;->b:Le/a/c/j/a;

    .line 8
    iget-object v1, v1, Le/a/c/j/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_5

    const-string v1, "postpaid"

    const-string v2, "prepaid"

    .line 10
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 11
    iget-object v2, v0, Le/a/c/j/f$a;->b:Le/a/c/j/a;

    .line 12
    iget-object v2, v2, Le/a/c/j/a;->e:Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v2}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    invoke-static {v1, v2}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v0, v0, Le/a/c/j/f$a;->b:Le/a/c/j/a;

    .line 15
    iget-object v0, v0, Le/a/c/j/a;->b:Ljava/lang/Long;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 17
    iget-object v0, p0, Le/a/c/j/d;->c:Ls1/w/f;

    invoke-static {v4, v3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    new-instance v4, Le/a/c/j/c;

    const/4 v11, 0x0

    move-object v5, v4

    move-object v6, p0

    move-object v9, p2

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Le/a/c/j/c;-><init>(Le/a/c/j/d;JLs1/z/b/l;Le/a/c/j/f;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p1}, Le/a/c/j/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-void
.end method
