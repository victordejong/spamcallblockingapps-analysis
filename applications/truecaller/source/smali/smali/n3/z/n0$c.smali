.class public final Ln3/z/n0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/n0;-><init>(Lq3/a/g0;Ln3/z/v;)V
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
    c = "androidx.paging.LegacyPagingSource$3"
    f = "LegacyPagingSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/n0;


# direct methods
.method public constructor <init>(Ln3/z/n0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/n0$c;->e:Ln3/z/n0;

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

    new-instance p1, Ln3/z/n0$c;

    iget-object v0, p0, Ln3/z/n0$c;->e:Ln3/z/n0;

    invoke-direct {p1, v0, p2}, Ln3/z/n0$c;-><init>(Ln3/z/n0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln3/z/n0$c;->e:Ln3/z/n0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ln3/z/k2;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p2, v0, Ln3/z/n0;->e:Ln3/z/v;

    .line 6
    invoke-virtual {p2}, Ln3/z/v;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {v0}, Ln3/z/k2;->d()V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/n0$c;->e:Ln3/z/n0;

    invoke-virtual {p1}, Ln3/z/k2;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ln3/z/n0$c;->e:Ln3/z/n0;

    .line 3
    iget-object p1, p1, Ln3/z/n0;->e:Ln3/z/v;

    .line 4
    invoke-virtual {p1}, Ln3/z/v;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Ln3/z/n0$c;->e:Ln3/z/n0;

    invoke-virtual {p1}, Ln3/z/k2;->d()V

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
