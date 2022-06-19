.class public final Le/a/p/h;
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
        "Le/a/b0/b/m/c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.editprofile.EditProfileAvatarHelperImpl$getAvatarRequestBodyFromUrl$2"
    f = "EditProfileAvatarHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/p/i;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/p/i;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p/h;->e:Le/a/p/i;

    iput-object p2, p0, Le/a/p/h;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/p/h;

    iget-object v0, p0, Le/a/p/h;->e:Le/a/p/i;

    iget-object v1, p0, Le/a/p/h;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/p/h;-><init>(Le/a/p/i;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/p/h;->e:Le/a/p/i;

    iget-object v0, p0, Le/a/p/h;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 5
    :try_start_0
    iget-object p1, p1, Le/a/p/i;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Le/a/z3/d;->l0(Ljava/lang/String;)Le/a/z3/d;

    .line 9
    invoke-virtual {p1}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    check-cast p1, Le/f/a/r/f;

    :try_start_1
    invoke-virtual {p1}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_0

    .line 11
    new-instance p2, Le/a/b0/b/m/c;

    const/16 v0, 0x50

    invoke-direct {p2, p1, v0}, Le/a/b0/b/m/c;-><init>(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/p/h;->e:Le/a/p/i;

    .line 3
    iget-object v0, v0, Le/a/p/i;->a:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/p/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/z3/d;->l0(Ljava/lang/String;)Le/a/z3/d;

    .line 7
    invoke-virtual {v0}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    check-cast v0, Le/f/a/r/f;

    :try_start_1
    invoke-virtual {v0}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 9
    new-instance p1, Le/a/b0/b/m/c;

    const/16 v1, 0x50

    invoke-direct {p1, v0, v1}, Le/a/b0/b/m/c;-><init>(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-object p1
.end method
