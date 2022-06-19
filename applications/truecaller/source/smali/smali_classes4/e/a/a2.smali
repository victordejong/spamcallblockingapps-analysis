.class public final Le/a/a2;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.SearchOnCopyHelper$onSearch$1"
    f = "SearchOnCopyHelper.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i0;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a2;->g:Le/a/i0;

    iput-object p2, p0, Le/a/a2;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/a2;

    iget-object v0, p0, Le/a/a2;->g:Le/a/i0;

    iget-object v1, p0, Le/a/a2;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a2;-><init>(Le/a/i0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a2;

    iget-object v0, p0, Le/a/a2;->g:Le/a/i0;

    iget-object v1, p0, Le/a/a2;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/a2;-><init>(Le/a/i0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a2;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a2;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v1, p0, Le/a/a2;->e:Ljava/lang/Object;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/a2;->g:Le/a/i0;

    .line 5
    iget-object p1, p1, Le/a/i0;->a:Le/a/i0$b;

    if-eqz p1, :cond_6

    .line 6
    iget-object v2, p0, Le/a/a2;->h:Ljava/lang/String;

    check-cast p1, Lcom/truecaller/clipboard/ClipboardService;

    .line 7
    iget-object v6, p1, Lcom/truecaller/clipboard/ClipboardService;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 8
    iget-object v7, p1, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v4, v4, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "number"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p1, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v6, :cond_6

    .line 11
    iget-object p1, p0, Le/a/a2;->g:Le/a/i0;

    .line 12
    iget-object p1, p1, Le/a/i0;->q:Ls1/w/f;

    .line 13
    new-instance v2, Le/a/a2$a;

    invoke-direct {v2, p0, v3}, Le/a/a2$a;-><init>(Le/a/a2;Ls1/w/d;)V

    iput-object v6, p0, Le/a/a2;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/a2;->f:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, v6

    :goto_0
    check-cast p1, Ls1/o;

    if-eqz p1, :cond_5

    .line 14
    iget-object v2, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 15
    check-cast v2, Ljava/lang/String;

    .line 16
    iget-object v6, p1, Ls1/o;->b:Ljava/lang/Object;

    .line 17
    check-cast v6, Lcom/truecaller/data/entity/Contact;

    .line 18
    iget-object p1, p1, Ls1/o;->c:Ljava/lang/Object;

    .line 19
    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    .line 20
    iget-object v7, p0, Le/a/a2;->g:Le/a/i0;

    .line 21
    iget-object v7, v7, Le/a/i0;->a:Le/a/i0$b;

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    iget-object v2, p0, Le/a/a2;->h:Ljava/lang/String;

    :goto_1
    const-string v3, "contact"

    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/truecaller/clipboard/ClipboardService;

    .line 23
    iget-object v3, v7, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object v3, v7, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 25
    iget-object v3, v7, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 26
    new-instance v5, Lcom/truecaller/clipboard/ClipboardService$a$a;

    invoke-direct {v5, v2, v6, p1}, Lcom/truecaller/clipboard/ClipboardService$a$a;-><init>(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)V

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    iget-object p1, v7, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object v3, v0

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    .line 28
    :cond_5
    iget-object p1, p0, Le/a/a2;->g:Le/a/i0;

    .line 29
    iget-object p1, p1, Le/a/i0;->a:Le/a/i0$b;

    if-eqz p1, :cond_6

    .line 30
    check-cast p1, Lcom/truecaller/clipboard/ClipboardService;

    .line 31
    iget-object v2, p1, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p1, Lcom/truecaller/clipboard/ClipboardService;->e:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v4, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_2
    return-object v0
.end method
