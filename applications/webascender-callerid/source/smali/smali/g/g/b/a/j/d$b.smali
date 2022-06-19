.class final Lg/g/b/a/j/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/d;->e(Li/c/b0/b/p;Li/c/b0/b/p;)Li/c/b0/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "Li/c/b0/b/u<",
        "Lg/g/b/c/f;",
        ">;",
        "Li/c/b0/b/u<",
        "Lg/g/b/c/m;",
        ">;",
        "Lg/g/b/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lg/g/b/a/j/d;


# direct methods
.method constructor <init>(Lg/g/b/a/j/d;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/d$b;->a:Lg/g/b/a/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/u;Li/c/b0/b/u;)Lg/g/b/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/u<",
            "Lg/g/b/c/f;",
            ">;",
            "Li/c/b0/b/u<",
            "Lg/g/b/c/m;",
            ">;)",
            "Lg/g/b/c/f;"
        }
    .end annotation

    const-string v0, "override"

    .line 1
    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "callerId"

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/b/c/f;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/g/b/a/j/f;->a()Lg/g/b/c/f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lg/g/b/a/j/d$b;->a:Lg/g/b/a/j/d;

    invoke-static {v0}, Lg/g/b/a/j/d;->d(Lg/g/b/a/j/d;)Lg/g/b/a/g/a/b;

    move-result-object v0

    .line 4
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/b/c/f;

    .line 5
    invoke-virtual {p2}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Lg/g/b/c/m;

    .line 6
    invoke-virtual {v0, p1, p2}, Lg/g/b/a/g/a/b;->d(Lg/g/b/c/f;Lg/g/b/c/m;)Lg/g/b/c/f;

    move-result-object p1

    :goto_0
    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li/c/b0/b/u;

    check-cast p2, Li/c/b0/b/u;

    invoke-virtual {p0, p1, p2}, Lg/g/b/a/j/d$b;->a(Li/c/b0/b/u;Li/c/b0/b/u;)Lg/g/b/c/f;

    move-result-object p1

    return-object p1
.end method
