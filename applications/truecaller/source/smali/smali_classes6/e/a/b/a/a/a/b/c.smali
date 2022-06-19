.class public final Le/a/b/a/a/a/b/c;
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
    c = "com.truecaller.bizmon.newBusiness.profile.ui.imagePicker.ImagePickerViewModel$requestPermissionForGallery$1"
    f = "ImagePickerViewModel.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/a/a/a/b/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/b/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/b/c;->g:Le/a/b/a/a/a/b/d;

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

    new-instance p1, Le/a/b/a/a/a/b/c;

    iget-object v0, p0, Le/a/b/a/a/a/b/c;->g:Le/a/b/a/a/a/b/d;

    invoke-direct {p1, v0, p2}, Le/a/b/a/a/a/b/c;-><init>(Le/a/b/a/a/a/b/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/a/a/a/b/c;

    iget-object v0, p0, Le/a/b/a/a/a/b/c;->g:Le/a/b/a/a/a/b/d;

    invoke-direct {p1, v0, p2}, Le/a/b/a/a/a/b/c;-><init>(Le/a/b/a/a/a/b/d;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/a/a/a/b/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/a/a/a/b/c;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/b/a/a/a/b/c;->e:Ljava/lang/Object;

    check-cast v0, Ln3/v/k0;

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
    iget-object p1, p0, Le/a/b/a/a/a/b/c;->g:Le/a/b/a/a/a/b/d;

    .line 5
    iget-object v1, p1, Le/a/b/a/a/a/b/d;->b:Ln3/v/k0;

    .line 6
    iget-object p1, p1, Le/a/b/a/a/a/b/d;->d:Le/a/h5/y;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 7
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v1, p0, Le/a/b/a/a/a/b/c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/b/a/a/a/b/c;->f:I

    .line 8
    invoke-interface {p1, v3, p0}, Le/a/h5/y;->f([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    .line 9
    :goto_0
    new-instance v1, Le/a/b/l/l;

    invoke-direct {v1, p1}, Le/a/b/l/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
