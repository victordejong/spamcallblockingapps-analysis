.class public final Le/a/b0/q/r$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/q/r;->a(Landroid/view/View;IILs1/w/d;)Ljava/lang/Object;
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
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.util.ImageRendererImpl$renderViewAsPng$2"
    f = "ImageRenderer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b0/q/r;

.field public final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Le/a/b0/q/r;Landroid/graphics/Bitmap;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/q/r$b;->e:Le/a/b0/q/r;

    iput-object p2, p0, Le/a/b0/q/r$b;->f:Landroid/graphics/Bitmap;

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

    new-instance p1, Le/a/b0/q/r$b;

    iget-object v0, p0, Le/a/b0/q/r$b;->e:Le/a/b0/q/r;

    iget-object v1, p0, Le/a/b0/q/r$b;->f:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, p2}, Le/a/b0/q/r$b;-><init>(Le/a/b0/q/r;Landroid/graphics/Bitmap;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/b0/q/r$b;->e:Le/a/b0/q/r;

    iget-object v0, p0, Le/a/b0/q/r$b;->f:Landroid/graphics/Bitmap;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/b0/q/r;->a:Landroid/content/Context;

    .line 6
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    const-string v2, "png"

    invoke-static {p1, v0, v2, p2, v1}, Le/a/b0/q/g0;->O(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/net/Uri;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b0/q/r$b;->e:Le/a/b0/q/r;

    .line 3
    iget-object p1, p1, Le/a/b0/q/r;->a:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Le/a/b0/q/r$b;->f:Landroid/graphics/Bitmap;

    .line 5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    const-string v3, "png"

    invoke-static {p1, v0, v3, v1, v2}, Le/a/b0/q/g0;->O(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Landroid/net/Uri;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/a/b0/q/r$b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method
