.class public final Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->r()Landroidx/work/ListenableWorker$a;
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
        "Le/a/b/a/a/b/d/a<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker$work$imgUploadedUrl$1"
    f = "ImageUploadWorker.kt"
    l = {
        0x43,
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->f:Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->g:Ls1/z/c/c0;

    iput-object p3, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->h:Ls1/z/c/c0;

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

    new-instance p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->f:Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->g:Ls1/z/c/c0;

    iget-object v2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->h:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;-><init>(Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->f:Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->g:Ls1/z/c/c0;

    iget-object v2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->h:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;-><init>(Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lu3/j0;->a:Lu3/j0$a;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

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

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v2, "text/plain"

    const-string v5, "bizProfileRemoteDataSource"

    const/4 v6, 0x0

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_5

    .line 5
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->f:Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;

    .line 6
    iget-object p1, p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->a:Le/a/b/a/a/b/d/b;

    if-eqz p1, :cond_4

    .line 7
    iget-object v4, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->h:Ls1/z/c/c0;

    iget-object v4, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput v3, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->e:I

    .line 8
    sget-object v3, Le/a/b0/b/a/c;->b:Lu3/c0;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lu3/j0$a;->b(Lu3/c0;Ljava/io/File;)Lu3/j0;

    move-result-object v3

    .line 9
    iget-object p1, p1, Le/a/b/a/a/b/d/b;->b:Le/a/b/a/a/b/d/b$a;

    sget-object v4, Lu3/c0;->f:Lu3/c0$a;

    invoke-static {v2}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v2

    const-string v4, "BusinessBackground"

    invoke-virtual {v0, v2, v4}, Lu3/j0$a;->c(Lu3/c0;Ljava/lang/String;)Lu3/j0;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Le/a/b/a/a/b/d/b$a;->c(Lu3/j0;Lu3/j0;)Lx3/b;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 10
    :cond_3
    :goto_0
    check-cast p1, Lx3/b;

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_4
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 12
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->f:Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;

    .line 14
    iget-object p1, p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->a:Le/a/b/a/a/b/d/b;

    if-eqz p1, :cond_a

    .line 15
    iget-object v3, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->h:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput v4, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;->e:I

    .line 16
    sget-object v4, Le/a/b0/b/a/c;->b:Lu3/c0;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lu3/j0$a;->b(Lu3/c0;Ljava/io/File;)Lu3/j0;

    move-result-object v3

    .line 17
    iget-object p1, p1, Le/a/b/a/a/b/d/b;->b:Le/a/b/a/a/b/d/b$a;

    sget-object v4, Lu3/c0;->f:Lu3/c0$a;

    invoke-static {v2}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v2

    const-string v4, "BusinessLogo"

    invoke-virtual {v0, v2, v4}, Lu3/j0$a;->c(Lu3/c0;Ljava/lang/String;)Lu3/j0;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Le/a/b/a/a/b/d/b$a;->c(Lu3/j0;Lu3/j0;)Lx3/b;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 18
    :cond_7
    :goto_1
    check-cast p1, Lx3/b;

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    :goto_2
    const-string v0, "response"

    .line 19
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    new-instance v0, Le/a/b/a/a/b/d/a$c;

    .line 21
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 22
    check-cast p1, Lu3/l0;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const-string p1, ""

    :goto_3
    invoke-direct {v0, p1}, Le/a/b/a/a/b/d/a$c;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 23
    :cond_9
    new-instance v0, Le/a/b/a/a/b/d/a$b$f;

    const/4 v1, 0x0

    .line 24
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 25
    iget-object p1, p1, Lu3/k0;->d:Ljava/lang/String;

    .line 26
    invoke-direct {v0, v1, p1}, Le/a/b/a/a/b/d/a$b$f;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 27
    :cond_a
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6
.end method
