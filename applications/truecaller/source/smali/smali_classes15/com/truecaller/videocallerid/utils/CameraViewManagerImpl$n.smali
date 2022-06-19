.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a()Lq3/a/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Le/a/k/c/j0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$stopRecording$1"
    f = "CameraViewManager.kt"
    l = {
        0xa5,
        0xa8,
        0xac,
        0xae,
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:I

.field public final synthetic h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {v0, v1, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {v0, v1, p1}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;-><init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->g:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->f:Z

    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 5
    iget-boolean p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->a:Z

    if-nez p1, :cond_6

    return-object v7

    .line 6
    :cond_6
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    iput v6, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->g:I

    invoke-virtual {p1, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->u(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 7
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 8
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q:Le/a/k/c/s1;

    .line 9
    iput v5, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->g:I

    check-cast p1, Le/a/k/c/a;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/a/k/c/y1;

    invoke-direct {v1, p1, v7}, Le/a/k/c/y1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    .line 12
    iget-object p1, p1, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v5, Le/a/k/c/z1;

    invoke-direct {v5, v1, v7}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 13
    :cond_8
    :goto_1
    move-object v1, p1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_c

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    iput-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->e:Ljava/lang/Object;

    iput v4, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->g:I

    invoke-virtual {p1, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 18
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 19
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q:Le/a/k/c/s1;

    .line 20
    iput-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->e:Ljava/lang/Object;

    iput v3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->g:I

    check-cast p1, Le/a/k/c/a;

    invoke-virtual {p1, v1, p0}, Le/a/k/c/a;->e(Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 21
    iget-object v3, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->h:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 22
    iget-object v3, v3, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->q:Le/a/k/c/s1;

    .line 23
    iput-object v1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->e:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->f:Z

    iput v2, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$n;->g:I

    check-cast v3, Le/a/k/c/a;

    .line 24
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v2, Le/a/k/c/w1;

    invoke-direct {v2, v3, v1, v7}, Le/a/k/c/w1;-><init>(Le/a/k/c/a;Ljava/io/File;Ls1/w/d;)V

    .line 26
    iget-object v3, v3, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v4, Le/a/k/c/z1;

    invoke-direct {v4, v2, v7}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_b

    return-object v0

    :cond_b
    move v0, p1

    move-object p1, v2

    .line 27
    :goto_4
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_c

    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 29
    new-instance v7, Le/a/k/c/j0;

    invoke-direct {v7, v1, v2, v3, v0}, Le/a/k/c/j0;-><init>(Ljava/io/File;JZ)V

    :cond_c
    return-object v7
.end method
