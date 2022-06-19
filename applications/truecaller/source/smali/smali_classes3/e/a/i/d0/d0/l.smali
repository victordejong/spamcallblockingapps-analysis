.class public final Le/a/i/d0/d0/l;
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
        "Le/a/i/d0/d0/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.google.MediationNativeImage$Companion$createNativeImage$2"
    f = "MediationNativeImage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/d0/l;->e:Ljava/lang/String;

    iput-object p2, p0, Le/a/i/d0/d0/l;->f:Landroid/content/Context;

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

    new-instance p1, Le/a/i/d0/d0/l;

    iget-object v0, p0, Le/a/i/d0/d0/l;->e:Ljava/lang/String;

    iget-object v1, p0, Le/a/i/d0/d0/l;->f:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/d0/d0/l;-><init>(Ljava/lang/String;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/i/d0/d0/l;->e:Ljava/lang/String;

    iget-object v0, p0, Le/a/i/d0/d0/l;->f:Landroid/content/Context;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object p2, Le/a/z3/i/f;->a:Le/a/z3/i/f;

    const-string v1, "size"

    .line 6
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 8
    :goto_2
    new-instance v3, Le/a/z3/i/a;

    invoke-direct {v3, v2, p2}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 9
    invoke-static {v3, v0}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 10
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 11
    new-instance p2, Le/a/i/d0/d0/m;

    invoke-direct {p2, v2, p1, v1}, Le/a/i/d0/d0/m;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ls1/z/c/f;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/i/d0/d0/l;->e:Ljava/lang/String;

    sget-object v0, Le/a/z3/i/f;->a:Le/a/z3/i/f;

    const-string v1, "size"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    .line 5
    :goto_2
    new-instance v2, Le/a/z3/i/a;

    invoke-direct {v2, p1, v0}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 6
    iget-object p1, p0, Le/a/i/d0/d0/l;->f:Landroid/content/Context;

    invoke-static {v2, p1}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Le/a/i/d0/d0/l;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 8
    new-instance p1, Le/a/i/d0/d0/m;

    iget-object v2, p0, Le/a/i/d0/d0/l;->e:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Le/a/i/d0/d0/m;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ls1/z/c/f;)V

    return-object p1
.end method
