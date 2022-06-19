.class final Lg/g/b/a/j/o$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/o;->a(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/b/c/n;Lg/g/a/a/i/o/u;)Li/c/b0/b/e;
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
        "Lg/g/b/c/m;",
        ">;",
        "Li/c/b0/b/u<",
        "Lg/g/b/c/f;",
        ">;",
        "Lg/g/a/a/i/o/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lg/g/b/a/j/o;

.field final synthetic b:Lg/g/a/a/i/h;

.field final synthetic c:Lg/g/b/a/j/m;

.field final synthetic d:I

.field final synthetic e:Lg/g/b/c/n;

.field final synthetic f:Lg/g/b/c/m;

.field final synthetic g:Lg/g/b/c/f;

.field final synthetic h:Lg/g/a/a/i/o/u;


# direct methods
.method constructor <init>(Lg/g/b/a/j/o;Lg/g/a/a/i/h;Lg/g/b/a/j/m;ILg/g/b/c/n;Lg/g/b/c/m;Lg/g/b/c/f;Lg/g/a/a/i/o/u;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/o$f;->a:Lg/g/b/a/j/o;

    iput-object p2, p0, Lg/g/b/a/j/o$f;->b:Lg/g/a/a/i/h;

    iput-object p3, p0, Lg/g/b/a/j/o$f;->c:Lg/g/b/a/j/m;

    iput p4, p0, Lg/g/b/a/j/o$f;->d:I

    iput-object p5, p0, Lg/g/b/a/j/o$f;->e:Lg/g/b/c/n;

    iput-object p6, p0, Lg/g/b/a/j/o$f;->f:Lg/g/b/c/m;

    iput-object p7, p0, Lg/g/b/a/j/o$f;->g:Lg/g/b/c/f;

    iput-object p8, p0, Lg/g/b/a/j/o$f;->h:Lg/g/a/a/i/o/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/u;Li/c/b0/b/u;)Lg/g/a/a/i/o/y;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/u<",
            "Lg/g/b/c/m;",
            ">;",
            "Li/c/b0/b/u<",
            "Lg/g/b/c/f;",
            ">;)",
            "Lg/g/a/a/i/o/y;"
        }
    .end annotation

    const-string v0, "overrideId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/o$f;->a:Lg/g/b/a/j/o;

    invoke-static {v0}, Lg/g/b/a/j/o;->f(Lg/g/b/a/j/o;)Lg/g/b/a/g/a/g;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lg/g/b/a/j/o$f;->b:Lg/g/a/a/i/h;

    .line 3
    iget-object v0, p0, Lg/g/b/a/j/o$f;->c:Lg/g/b/a/j/m;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/b/a/j/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-string v4, ""

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 4
    :goto_1
    iget v5, p0, Lg/g/b/a/j/o$f;->d:I

    .line 5
    iget-object v6, p0, Lg/g/b/a/j/o$f;->c:Lg/g/b/a/j/m;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lg/g/b/a/j/m;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v4

    .line 6
    :goto_3
    iget-object v7, p0, Lg/g/b/a/j/o$f;->c:Lg/g/b/a/j/m;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lg/g/b/a/j/m;->d()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move-object v7, v4

    .line 7
    :goto_5
    iget-object v4, p0, Lg/g/b/a/j/o$f;->e:Lg/g/b/c/n;

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lg/g/b/a/j/o$f;->a:Lg/g/b/a/j/o;

    invoke-static {v4}, Lg/g/b/a/j/o;->d(Lg/g/b/a/j/o;)Lg/g/b/b/d/e;

    move-result-object v4

    iget-object v8, p0, Lg/g/b/a/j/o$f;->b:Lg/g/a/a/i/h;

    invoke-static {v8}, Lg/g/b/a/k/j;->e(Lg/g/a/a/i/h;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lg/g/b/b/d/e;->a(Ljava/lang/String;)Lg/g/b/c/n;

    move-result-object v4

    :goto_6
    move-object v8, v4

    .line 8
    invoke-virtual {p1}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/b/c/m;

    iget-object v9, p0, Lg/g/b/a/j/o$f;->f:Lg/g/b/c/m;

    if-ne v4, v9, :cond_8

    :cond_7
    move-object p1, v3

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/b/c/m;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lg/g/b/c/m;->c()Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_7
    invoke-virtual {p2}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/b/c/f;

    iget-object v9, p0, Lg/g/b/a/j/o$f;->g:Lg/g/b/c/f;

    if-ne v4, v9, :cond_9

    move-object v9, v3

    goto :goto_8

    :cond_9
    invoke-virtual {p2}, Li/c/b0/b/u;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/g/b/c/f;

    move-object v9, p2

    .line 10
    :goto_8
    iget-object v10, p0, Lg/g/b/a/j/o$f;->h:Lg/g/a/a/i/o/u;

    move-object v3, v0

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    .line 11
    invoke-virtual/range {v1 .. v10}, Lg/g/b/a/g/a/g;->d(Lg/g/a/a/i/h;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/g/b/c/n;Ljava/lang/String;Lg/g/b/c/f;Lg/g/a/a/i/o/u;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li/c/b0/b/u;

    check-cast p2, Li/c/b0/b/u;

    invoke-virtual {p0, p1, p2}, Lg/g/b/a/j/o$f;->a(Li/c/b0/b/u;Li/c/b0/b/u;)Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method
