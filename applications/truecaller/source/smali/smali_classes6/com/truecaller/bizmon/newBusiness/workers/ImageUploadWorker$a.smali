.class public final Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.workers.ImageUploadWorker$work$compressedImagePath$1$1"
    f = "ImageUploadWorker.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->f:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->f:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;-><init>(Ljava/io/File;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->f:Ljava/io/File;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;-><init>(Ljava/io/File;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->f:Ljava/io/File;

    iput v2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;->e:I

    const/16 v4, 0x320

    const/16 v5, 0x264

    const/16 v6, 0x50

    .line 5
    new-instance v1, Le/a/b/a/i/b/a;

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/b/a/i/b/a;-><init>(IIILandroid/graphics/Bitmap$CompressFormat;I)V

    .line 6
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 7
    new-instance v3, Le/a/b/a/i/b/b;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v4}, Le/a/b/a/i/b/b;-><init>(Ljava/io/File;Le/a/b/a/i/b/a;Ls1/w/d;)V

    invoke-static {v2, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
