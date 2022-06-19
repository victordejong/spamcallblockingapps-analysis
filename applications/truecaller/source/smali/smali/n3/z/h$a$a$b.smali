.class public final Ln3/z/h$a$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/u/w<",
        "+",
        "Ln3/z/c1<",
        "TT;>;>;>;",
        "Ljava/lang/Throwable;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$activeStreamCollection$1$2"
    f = "CachedPageEventFlow.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/h$a$a;


# direct methods
.method public constructor <init>(Ln3/z/h$a$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h$a$a$b;->e:Ln3/z/h$a$a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lq3/a/x2/g;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Ls1/w/d;

    const-string p2, "$this$create"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "continuation"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ln3/z/h$a$a$b;->e:Ln3/z/h$a$a;

    .line 2
    invoke-interface {p3}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Ln3/z/h$a$a;->h:Ln3/z/e3;

    .line 6
    iget-object p1, p1, Ln3/z/e3;->a:Lq3/a/w2/j;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p3, v0, p3}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/h$a$a$b;->e:Ln3/z/h$a$a;

    iget-object p1, p1, Ln3/z/h$a$a;->h:Ln3/z/e3;

    .line 3
    iget-object p1, p1, Ln3/z/e3;->a:Lq3/a/w2/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
