.class public final Le/a/k/a/k/z/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k/c/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/k/z/h;

.field public final synthetic b:Le/m/a/c/c0;

.field public final synthetic c:Lq3/a/i0;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/a/k/z/h;Le/m/a/c/c0;Lq3/a/i0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    iput-object p2, p0, Le/a/k/a/k/z/n;->b:Le/m/a/c/c0;

    iput-object p3, p0, Le/a/k/a/k/z/n;->c:Lq3/a/i0;

    iput-object p4, p0, Le/a/k/a/k/z/n;->d:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Le/a/k/a/k/z/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/a/k/z/n$a;

    iget v1, v0, Le/a/k/a/k/z/n$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/a/k/z/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/a/k/z/n$a;

    invoke-direct {v0, p0, p2}, Le/a/k/a/k/z/n$a;-><init>(Le/a/k/a/k/z/n;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/a/k/z/n$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/a/k/z/n$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

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
    check-cast p1, Le/a/k/c/t;

    .line 5
    instance-of p2, p1, Le/a/k/c/t$e;

    if-eqz p2, :cond_3

    iget-object p1, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    .line 6
    iget-object p1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 7
    sget-object p2, Le/a/k/a/k/z/b$f;->a:Le/a/k/a/k/z/b$f;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 8
    :cond_3
    instance-of p2, p1, Le/a/k/c/t$a;

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    iget-object p1, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    iget-object p2, p0, Le/a/k/a/k/z/n;->b:Le/m/a/c/c0;

    iget-object v4, p0, Le/a/k/a/k/z/n;->c:Lq3/a/i0;

    iget-object v0, p0, Le/a/k/a/k/z/n;->d:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p2, v2}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    .line 11
    iget-object v1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 12
    sget-object v2, Le/a/k/a/k/z/b$a;->a:Le/a/k/a/k/z/b$a;

    invoke-interface {v1, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v1, p1, Le/a/k/a/k/z/h;->f:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 14
    new-instance v7, Le/a/k/a/k/z/j;

    invoke-direct {v7, p1, p2, v0, v2}, Le/a/k/a/k/z/j;-><init>(Le/a/k/a/k/z/h;Le/m/a/c/c0;Ljava/lang/String;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p2

    iput-object p2, p1, Le/a/k/a/k/z/h;->f:Lq3/a/p1;

    goto :goto_1

    .line 15
    :cond_5
    instance-of p2, p1, Le/a/k/c/t$d;

    if-eqz p2, :cond_7

    iget-object p1, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    .line 16
    iget-object p2, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 17
    new-instance v0, Le/a/k/a/k/z/b$e;

    .line 18
    iget-object p1, p1, Le/a/k/a/k/z/h;->g:Le/a/k/c/g;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result v2

    .line 19
    :cond_6
    invoke-direct {v0, v2}, Le/a/k/a/k/z/b$e;-><init>(I)V

    invoke-interface {p2, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 20
    :cond_7
    instance-of p2, p1, Le/a/k/c/t$b;

    if-eqz p2, :cond_8

    .line 21
    iget-object p2, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    .line 22
    iget-object p2, p2, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 23
    new-instance v2, Le/a/k/a/k/z/b$b;

    check-cast p1, Le/a/k/c/t$b;

    .line 24
    iget-object v4, p1, Le/a/k/c/t$b;->a:Le/m/a/c/b0;

    .line 25
    invoke-direct {v2, v4}, Le/a/k/a/k/z/b$b;-><init>(Ljava/lang/Exception;)V

    invoke-interface {p2, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 26
    iget-object p2, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    .line 27
    iget-object p2, p2, Le/a/k/a/k/z/h;->b:Lq3/a/x2/z0;

    .line 28
    sget-object v2, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->MEDIA_PLAYER:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    .line 29
    iget-object p1, p1, Le/a/k/c/t$b;->a:Le/m/a/c/b0;

    .line 30
    invoke-virtual {v2, p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->setEx(Le/m/a/c/b0;)V

    iput v3, v0, Le/a/k/a/k/z/n$a;->e:I

    invoke-interface {p2, v2, v0}, Lq3/a/x2/z0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 31
    :cond_8
    instance-of p1, p1, Le/a/k/c/t$c;

    if-eqz p1, :cond_9

    iget-object p1, p0, Le/a/k/a/k/z/n;->a:Le/a/k/a/k/z/h;

    .line 32
    iget-object p1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 33
    sget-object p2, Le/a/k/a/k/z/b$d;->a:Le/a/k/a/k/z/b$d;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 34
    :cond_9
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
