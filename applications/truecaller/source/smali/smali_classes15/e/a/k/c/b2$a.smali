.class public final Le/a/k/c/b2$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/b2;->a(Ljava/lang/String;)V
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
    c = "com.truecaller.videocallerid.utils.VideoIdUpdatesReceiverImpl$handleVideoUpdatesNotification$1"
    f = "VideoIdUpdatesReceiver.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/c/b2;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/c/b2;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    iput-object p2, p0, Le/a/k/c/b2$a;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/k/c/b2$a;

    iget-object v0, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    iget-object v1, p0, Le/a/k/c/b2$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/b2$a;-><init>(Le/a/k/c/b2;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/b2$a;

    iget-object v0, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    iget-object v1, p0, Le/a/k/c/b2$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/b2$a;-><init>(Le/a/k/c/b2;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/c/b2$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k/c/b2$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/c/b2$a;->g:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v3

    :goto_1
    if-nez p1, :cond_7

    iget-object p1, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    .line 5
    iget-object p1, p1, Le/a/k/c/b2;->a:Le/a/k/c/r0;

    .line 6
    invoke-interface {p1}, Le/a/k/c/r0;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    .line 7
    iget-object p1, p1, Le/a/k/c/b2;->b:Le/a/k/c/h0;

    .line 8
    invoke-interface {p1}, Le/a/k/c/h0;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    iget-object p1, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    .line 10
    iget-object p1, p1, Le/a/k/c/b2;->c:Le/a/k/c/k1;

    .line 11
    iget-object v2, p0, Le/a/k/c/b2$a;->g:Ljava/lang/String;

    iput v3, p0, Le/a/k/c/b2$a;->e:I

    check-cast p1, Le/a/k/c/n1;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v3, Le/a/k/c/l1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Le/a/k/c/l1;-><init>(Le/a/k/c/n1;Ljava/lang/String;Ls1/w/d;)V

    .line 14
    iget-object p1, p1, Le/a/k/c/n1;->o:Ls1/w/f;

    new-instance v2, Le/a/k/c/o1;

    invoke-direct {v2, v3, v4}, Le/a/k/c/o1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 15
    :cond_5
    :goto_2
    check-cast p1, Le/a/k/c/v;

    if-eqz p1, :cond_7

    .line 16
    iget-object v1, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    .line 17
    iget-object v1, v1, Le/a/k/c/b2;->e:Le/a/k/j;

    .line 18
    iget-object v2, p1, Le/a/k/c/v;->b:Ljava/lang/String;

    .line 19
    check-cast v1, Le/a/k/k;

    invoke-virtual {v1, v2}, Le/a/k/k;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0

    .line 20
    :cond_6
    iget-object v1, p0, Le/a/k/c/b2$a;->f:Le/a/k/c/b2;

    .line 21
    iget-object v1, v1, Le/a/k/c/b2;->d:Le/a/k/c/u0;

    .line 22
    new-instance v2, Le/a/k/c/p$b;

    .line 23
    iget-object p1, p1, Le/a/k/c/v;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 24
    iget-object p1, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    .line 25
    sget-object v3, Ln3/m0/q;->c:Ln3/m0/q;

    invoke-direct {v2, p1, v3}, Le/a/k/c/p$b;-><init>(Ljava/lang/String;Ln3/m0/q;)V

    invoke-interface {v1, v2}, Le/a/k/c/u0;->a(Le/a/k/c/p;)V

    :cond_7
    :goto_3
    return-object v0
.end method
