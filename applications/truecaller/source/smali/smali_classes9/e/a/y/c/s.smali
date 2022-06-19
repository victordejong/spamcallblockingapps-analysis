.class public final Le/a/y/c/s;
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
    c = "com.truecaller.flashsdk.core.KidFlashService$showFlashPendingNotification$1"
    f = "KidFlashService.kt"
    l = {
        0x2b6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lcom/truecaller/flashsdk/core/KidFlashService;

.field public final synthetic i:Lcom/truecaller/flashsdk/models/QueuedFlash;

.field public final synthetic j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/s;->h:Lcom/truecaller/flashsdk/core/KidFlashService;

    iput-object p2, p0, Le/a/y/c/s;->i:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iput-object p3, p0, Le/a/y/c/s;->j:Landroid/graphics/Bitmap;

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

    new-instance p1, Le/a/y/c/s;

    iget-object v0, p0, Le/a/y/c/s;->h:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v1, p0, Le/a/y/c/s;->i:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v2, p0, Le/a/y/c/s;->j:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/c/s;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/c/s;

    iget-object v0, p0, Le/a/y/c/s;->h:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v1, p0, Le/a/y/c/s;->i:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v2, p0, Le/a/y/c/s;->j:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/c/s;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/c/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/y/c/s;->g:I

    const-string v2, "sender"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Le/a/y/c/s;->f:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/flashsdk/models/Sender;

    iget-object v1, p0, Le/a/y/c/s;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

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
    iget-object p1, p0, Le/a/y/c/s;->i:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 5
    iput-boolean v4, p1, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    .line 6
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v1, "flash.payload"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object p1, p0, Le/a/y/c/s;->i:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 9
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 10
    new-instance v5, Ls1/z/c/c0;

    invoke-direct {v5}, Ls1/z/c/c0;-><init>()V

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 11
    iget-object v6, p0, Le/a/y/c/s;->h:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 12
    sget v7, Lcom/truecaller/flashsdk/core/KidFlashService;->x:I

    .line 13
    invoke-virtual {v6}, Lcom/truecaller/flashsdk/core/KidFlashService;->f()Ls1/w/f;

    move-result-object v6

    .line 14
    sget-object v7, Lq3/a/t0;->d:Lq3/a/g0;

    .line 15
    invoke-interface {v6, v7}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v6

    new-instance v7, Le/a/y/c/s$a;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v5, v8}, Le/a/y/c/s$a;-><init>(Le/a/y/c/s;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v1, p0, Le/a/y/c/s;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/y/c/s;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/y/c/s;->g:I

    invoke-static {v6, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v5

    .line 16
    :goto_0
    check-cast p1, Lcom/truecaller/flashsdk/models/Contact;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_1
    iget-object v0, p0, Le/a/y/c/s;->h:Lcom/truecaller/flashsdk/core/KidFlashService;

    sget v2, Lcom/truecaller/flashsdk/R$string;->resume_flash:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "name"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v6, " "

    invoke-static {p1, v6, v4, v5}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    if-eqz v5, :cond_4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {p1, v5, v4, v4, v6}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_4
    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.resum\u2026.split(\" \")[0] else name)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Le/a/y/c/s;->h:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v2, p0, Le/a/y/c/s;->i:Lcom/truecaller/flashsdk/models/QueuedFlash;

    iget-object v3, p0, Le/a/y/c/s;->j:Landroid/graphics/Bitmap;

    const-string v4, "title"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->m(Lcom/truecaller/flashsdk/models/QueuedFlash;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
