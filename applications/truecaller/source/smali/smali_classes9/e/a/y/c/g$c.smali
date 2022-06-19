.class public final Le/a/y/c/g$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/c/g;->n4(Ljava/lang/String;Lcom/truecaller/flashsdk/models/Flash;Lcom/truecaller/flashsdk/models/ImageFlash;)I
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
    c = "com.truecaller.flashsdk.core.FlashMediaServicePresenter$onStartCommand$2$1"
    f = "FlashMediaServicePresenter.kt"
    l = {
        0x2d,
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/flashsdk/models/ImageFlash;

.field public final synthetic g:Le/a/y/c/g;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;Le/a/y/c/g;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/g$c;->f:Lcom/truecaller/flashsdk/models/ImageFlash;

    iput-object p3, p0, Le/a/y/c/g$c;->g:Le/a/y/c/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/y/c/g$c;

    iget-object v0, p0, Le/a/y/c/g$c;->f:Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object v1, p0, Le/a/y/c/g$c;->g:Le/a/y/c/g;

    invoke-direct {p1, v0, p2, v1}, Le/a/y/c/g$c;-><init>(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;Le/a/y/c/g;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/c/g$c;

    iget-object v0, p0, Le/a/y/c/g$c;->f:Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object v1, p0, Le/a/y/c/g$c;->g:Le/a/y/c/g;

    invoke-direct {p1, v0, p2, v1}, Le/a/y/c/g$c;-><init>(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;Le/a/y/c/g;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/c/g$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/y/c/g$c;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/y/c/g$c;->f:Lcom/truecaller/flashsdk/models/ImageFlash;

    .line 5
    iget-boolean v1, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->k:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Le/a/y/c/g$c;->g:Le/a/y/c/g;

    .line 8
    invoke-virtual {v0, p1}, Le/a/y/c/g;->Kj(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Le/a/y/c/g$c;->g:Le/a/y/c/g;

    iput v3, p0, Le/a/y/c/g$c;->e:I

    invoke-virtual {v1, p1, p0}, Le/a/y/c/g;->Jj(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 11
    :cond_4
    iget-object v1, p0, Le/a/y/c/g$c;->g:Le/a/y/c/g;

    iput v2, p0, Le/a/y/c/g$c;->e:I

    invoke-virtual {v1, p1, p0}, Le/a/y/c/g;->Ij(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
