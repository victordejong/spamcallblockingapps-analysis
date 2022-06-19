.class public final Le/a/h/c/s;
.super Le/a/u2/a/d;
.source "SourceFile"

# interfaces
.implements Le/a/h/c/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/d<",
        "Le/a/h/c/o;",
        "Le/a/h/c/p;",
        ">;",
        "Le/a/h/c/n;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/h/c/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/h/c/t;

.field public final g:Le/a/k3/l/f;

.field public final h:Le/a/k3/j/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/h/c/t;Le/a/k3/l/f;Le/a/k3/j/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localContactSearcher"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/d;-><init>()V

    iput-object p1, p0, Le/a/h/c/s;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/h/c/s;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/h/c/s;->f:Le/a/h/c/t;

    iput-object p4, p0, Le/a/h/c/s;->g:Le/a/k3/l/f;

    iput-object p5, p0, Le/a/h/c/s;->h:Le/a/k3/j/g;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Le/a/h/c/s;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Ud(I)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/h/c/s;->d:Ls1/w/f;

    new-instance v3, Le/a/h/c/r;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/h/c/r;-><init>(Le/a/h/c/s;ILs1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public X3(Le/a/h/c/k;Ls1/a/l;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/c/k;",
            "Ls1/a/l<",
            "*>;)",
            "Ljava/util/List<",
            "Le/a/h/c/h;",
            ">;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/c/s;->c:Ljava/util/List;

    return-object p1
.end method

.method public Xx(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/c/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/h/c/c;->Xx(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/h/c/p;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance p1, Ls1/d0/i;

    const/4 v0, 0x2

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1}, Ls1/d0/i;-><init>(II)V

    .line 5
    invoke-virtual {p1}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Ls1/d0/h;

    .line 6
    iget-boolean v0, v0, Ls1/d0/h;->b:Z

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    check-cast v0, Ls1/u/z;

    invoke-virtual {v0}, Ls1/u/z;->a()I

    move-result v0

    .line 8
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/h/c/s;->d:Ls1/w/f;

    new-instance v4, Le/a/h/c/r;

    const/4 v3, 0x0

    invoke-direct {v4, p0, v0, v3}, Le/a/h/c/r;-><init>(Le/a/h/c/s;ILs1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    :cond_0
    return-void
.end method
