.class public final Ln3/z/g1$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1;->b(Lq3/a/x2/f;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ln3/z/f0;",
        "Ln3/z/f0;",
        "Ls1/w/d<",
        "-",
        "Ln3/z/f0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$3"
    f = "PageFetcherSnapshot.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ln3/z/t0;


# direct methods
.method public constructor <init>(Ln3/z/t0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$c;->g:Ln3/z/t0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ln3/z/f0;

    check-cast p2, Ln3/z/f0;

    check-cast p3, Ls1/w/d;

    const-string v0, "previous"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/g1$c;

    iget-object v1, p0, Ln3/z/g1$c;->g:Ln3/z/t0;

    invoke-direct {v0, v1, p3}, Ln3/z/g1$c;-><init>(Ln3/z/t0;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/g1$c;->e:Ljava/lang/Object;

    iput-object p2, v0, Ln3/z/g1$c;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/g1$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/z/g1$c;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/f0;

    iget-object v0, p0, Ln3/z/g1$c;->f:Ljava/lang/Object;

    check-cast v0, Ln3/z/f0;

    .line 2
    iget-object v1, p0, Ln3/z/g1$c;->g:Ln3/z/t0;

    const-string v2, "$this$shouldPrioritizeOver"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "previous"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loadType"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v2, v0, Ln3/z/f0;->a:I

    iget v3, p1, Ln3/z/f0;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p1, Ln3/z/f0;->b:Ln3/z/i3;

    .line 6
    instance-of v3, v2, Ln3/z/i3$b;

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, v0, Ln3/z/f0;->b:Ln3/z/i3;

    .line 8
    instance-of v3, v3, Ln3/z/i3$a;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v0, Ln3/z/f0;->b:Ln3/z/i3;

    .line 10
    instance-of v6, v3, Ln3/z/i3$b;

    if-eqz v6, :cond_2

    instance-of v6, v2, Ln3/z/i3$a;

    if-eqz v6, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget v6, v3, Ln3/z/i3;->c:I

    iget v7, v2, Ln3/z/i3;->c:I

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget v6, v3, Ln3/z/i3;->d:I

    iget v7, v2, Ln3/z/i3;->d:I

    if-eq v6, v7, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    sget-object v6, Ln3/z/t0;->b:Ln3/z/t0;

    if-ne v1, v6, :cond_5

    .line 14
    iget v6, v2, Ln3/z/i3;->a:I

    iget v7, v3, Ln3/z/i3;->a:I

    if-ge v6, v7, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    sget-object v6, Ln3/z/t0;->c:Ln3/z/t0;

    if-ne v1, v6, :cond_6

    .line 16
    iget v1, v2, Ln3/z/i3;->b:I

    iget v2, v3, Ln3/z/i3;->b:I

    if-ge v1, v2, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_7

    move-object p1, v0

    :cond_7
    return-object p1
.end method
