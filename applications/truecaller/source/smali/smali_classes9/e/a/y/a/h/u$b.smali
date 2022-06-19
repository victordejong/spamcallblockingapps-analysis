.class public final Le/a/y/a/h/u$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/a/h/u;->h(Landroid/graphics/Bitmap;)V
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
    c = "com.truecaller.flashsdk.ui.incoming.FlashActivityPresenterImpl$shareBitmap$1"
    f = "FlashActivityPresenterImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/a/h/u;

.field public final synthetic f:Landroid/graphics/Bitmap;

.field public final synthetic g:Le/a/y/a/h/v;


# direct methods
.method public constructor <init>(Le/a/y/a/h/u;Landroid/graphics/Bitmap;Le/a/y/a/h/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/h/u$b;->e:Le/a/y/a/h/u;

    iput-object p2, p0, Le/a/y/a/h/u$b;->f:Landroid/graphics/Bitmap;

    iput-object p3, p0, Le/a/y/a/h/u$b;->g:Le/a/y/a/h/v;

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

    new-instance p1, Le/a/y/a/h/u$b;

    iget-object v0, p0, Le/a/y/a/h/u$b;->e:Le/a/y/a/h/u;

    iget-object v1, p0, Le/a/y/a/h/u$b;->f:Landroid/graphics/Bitmap;

    iget-object v2, p0, Le/a/y/a/h/u$b;->g:Le/a/y/a/h/v;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/a/h/u$b;-><init>(Le/a/y/a/h/u;Landroid/graphics/Bitmap;Le/a/y/a/h/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/y/a/h/u$b;->e:Le/a/y/a/h/u;

    iget-object v1, p0, Le/a/y/a/h/u$b;->f:Landroid/graphics/Bitmap;

    iget-object v2, p0, Le/a/y/a/h/u$b;->g:Le/a/y/a/h/v;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/y/a/h/u;->T:Le/a/y/b/h;

    .line 5
    invoke-interface {p2, v1}, Le/a/y/b/h;->b(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, v0, Le/a/y/a/h/u;->H:Ljava/lang/String;

    .line 7
    invoke-interface {v2, p2, v0}, Le/a/y/a/h/v;->m6(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/a/h/u$b;->e:Le/a/y/a/h/u;

    .line 3
    iget-object p1, p1, Le/a/y/a/h/u;->T:Le/a/y/b/h;

    .line 4
    iget-object v1, p0, Le/a/y/a/h/u$b;->f:Landroid/graphics/Bitmap;

    invoke-interface {p1, v1}, Le/a/y/b/h;->b(Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p0, Le/a/y/a/h/u$b;->g:Le/a/y/a/h/v;

    iget-object v2, p0, Le/a/y/a/h/u$b;->e:Le/a/y/a/h/u;

    .line 6
    iget-object v2, v2, Le/a/y/a/h/u;->H:Ljava/lang/String;

    .line 7
    invoke-interface {v1, p1, v2}, Le/a/y/a/h/v;->m6(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
