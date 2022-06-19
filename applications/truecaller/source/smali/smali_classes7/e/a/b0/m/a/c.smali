.class public final Le/a/b0/m/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/m/a/b;


# instance fields
.field public final a:Le/a/b0/m/c/c;

.field public final b:Le/a/b0/m/d/a;


# direct methods
.method public constructor <init>(Le/a/b0/m/c/c;Le/a/b0/m/d/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderResolutionContract"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/m/a/c;->a:Le/a/b0/m/c/c;

    iput-object p2, p0, Le/a/b0/m/a/c;->b:Le/a/b0/m/d/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/b0/m/a/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/b0/m/a/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/b0/m/a/c$a;

    iget v1, v0, Le/a/b0/m/a/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b0/m/a/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b0/m/a/c$a;

    invoke-direct {v0, p0, p2}, Le/a/b0/m/a/c$a;-><init>(Le/a/b0/m/a/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/b0/m/a/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b0/m/a/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/b0/m/a/c$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Le/a/b0/m/a/c$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/b0/m/a/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    new-instance p2, Le/a/b0/m/a/a;

    .line 5
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "Uri.EMPTY"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p2, p1, p1, v0}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object p2

    .line 7
    :cond_4
    iget-object p2, p0, Le/a/b0/m/a/c;->a:Le/a/b0/m/c/c;

    iput-object p0, v0, Le/a/b0/m/a/c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/b0/m/a/c$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/b0/m/a/c$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/b0/m/c/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    .line 8
    :goto_2
    check-cast p2, Le/a/b0/m/c/b;

    .line 9
    iget-object v1, v0, Le/a/b0/m/a/c;->b:Le/a/b0/m/d/a;

    invoke-interface {v1, p1}, Le/a/b0/m/d/a;->b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    iget-object v0, v0, Le/a/b0/m/a/c;->b:Le/a/b0/m/d/a;

    invoke-interface {v0, p1}, Le/a/b0/m/d/a;->e(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v1

    :goto_3
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 11
    iget-object v2, p2, Le/a/b0/m/c/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move-object v2, p1

    :goto_5
    if-eqz p2, :cond_a

    .line 13
    iget-object p2, p2, Le/a/b0/m/c/b;->c:Ljava/lang/String;

    if-eqz p2, :cond_a

    move-object v0, p2

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_b

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p2, "Uri.EMPTY.toString()"

    invoke-static {v0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "Uri.parse(senderResoluti\u2026 ?: Uri.EMPTY.toString())"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Le/a/b0/m/a/a;

    invoke-direct {v0, p1, v2, p2}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method
