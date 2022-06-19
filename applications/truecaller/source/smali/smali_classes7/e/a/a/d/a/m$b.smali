.class public final Le/a/a/d/a/m$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/d/a/m;->Tj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/a/k/a/d2;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$getUploadedAvatarUri$uploadResult$1"
    f = "NewImGroupPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/d/a/m;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/a/d/a/m;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/m$b;->e:Le/a/a/d/a/m;

    iput-object p2, p0, Le/a/a/d/a/m$b;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/a/d/a/m$b;

    iget-object v0, p0, Le/a/a/d/a/m$b;->e:Le/a/a/d/a/m;

    iget-object v1, p0, Le/a/a/d/a/m$b;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/d/a/m$b;-><init>(Le/a/a/d/a/m;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/d/a/m$b;->e:Le/a/a/d/a/m;

    iget-object v0, p0, Le/a/a/d/a/m$b;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/a/d/a/m;->o:Le/a/o5/m;

    .line 6
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    const/16 v1, 0x280

    const/16 v2, 0x32

    invoke-interface {p2, v0, v1, v2}, Le/a/o5/m;->e(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object p2

    .line 7
    iget-object v0, p1, Le/a/a/d/a/m;->n:Le/a/a/k/a/z0;

    .line 8
    invoke-interface {v0, p2}, Le/a/a/k/a/z0;->a(Landroid/net/Uri;)Le/a/a/k/a/d2;

    move-result-object v0

    .line 9
    iget-object p1, p1, Le/a/a/d/a/m;->o:Le/a/o5/m;

    .line 10
    invoke-interface {p1, p2}, Le/a/o5/m;->a(Landroid/net/Uri;)Z

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/d/a/m$b;->e:Le/a/a/d/a/m;

    .line 3
    iget-object p1, p1, Le/a/a/d/a/m;->o:Le/a/o5/m;

    .line 4
    iget-object v0, p0, Le/a/a/d/a/m$b;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    const/16 v1, 0x280

    const/16 v2, 0x32

    invoke-interface {p1, v0, v1, v2}, Le/a/o5/m;->e(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/a/d/a/m$b;->e:Le/a/a/d/a/m;

    .line 6
    iget-object v0, v0, Le/a/a/d/a/m;->n:Le/a/a/k/a/z0;

    .line 7
    invoke-interface {v0, p1}, Le/a/a/k/a/z0;->a(Landroid/net/Uri;)Le/a/a/k/a/d2;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/a/d/a/m$b;->e:Le/a/a/d/a/m;

    .line 9
    iget-object v1, v1, Le/a/a/d/a/m;->o:Le/a/o5/m;

    .line 10
    invoke-interface {v1, p1}, Le/a/o5/m;->a(Landroid/net/Uri;)Z

    return-object v0
.end method
