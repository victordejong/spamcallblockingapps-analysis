.class public final Ln3/e/b/j1/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/r1;
.implements Ln3/e/b/j1/q0;
.implements Ln3/e/b/k1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/r1<",
        "Ln3/e/b/c1;",
        ">;",
        "Ln3/e/b/j1/q0;",
        "Ln3/e/b/k1/g;"
    }
.end annotation


# static fields
.field public static final r:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/m0;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/h0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final q:Ln3/e/b/j1/d1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ln3/e/b/j1/m0;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.preview.imageInfoProcessor"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/j1/e1;->r:Ln3/e/b/j1/j0$a;

    .line 4
    const-class v0, Ln3/e/b/j1/h0;

    .line 5
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.preview.captureProcessor"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Ln3/e/b/j1/e1;->s:Ln3/e/b/j1/j0$a;

    return-void
.end method

.method public constructor <init>(Ln3/e/b/j1/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/j1/e1;->q:Ln3/e/b/j1/d1;

    return-void
.end method


# virtual methods
.method public synthetic a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->f(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->g(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ln3/e/b/j1/j0$a;)Z
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->a(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Z

    move-result p1

    return p1
.end method

.method public synthetic d()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/h1;->e(Ln3/e/b/j1/i1;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->c(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/p0;->b(Ln3/e/b/j1/q0;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/p0;->c(Ln3/e/b/j1/q0;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Ln3/e/b/j1/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/e1;->q:Ln3/e/b/j1/d1;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    sget-object v0, Ln3/e/b/j1/o0;->a:Ln3/e/b/j1/j0$a;

    invoke-interface {p0, v0}, Ln3/e/b/j1/i1;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic i(Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->b(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Ljava/lang/String;Ln3/e/b/j1/j0$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->b(Ln3/e/b/j1/i1;Ljava/lang/String;Ln3/e/b/j1/j0$b;)V

    return-void
.end method

.method public synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/k1/e;->a(Ln3/e/b/k1/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ln3/e/b/j1/j0$a;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->d(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(I)I
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->d(Ln3/e/b/j1/r1;I)I

    move-result p1

    return p1
.end method

.method public synthetic n(I)I
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/p0;->f(Ln3/e/b/j1/q0;I)I

    move-result p1

    return p1
.end method

.method public synthetic o(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/p0;->e(Ln3/e/b/j1/q0;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic p(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->h(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic q()Z
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/p0;->g(Ln3/e/b/j1/q0;)Z

    move-result v0

    return v0
.end method

.method public synthetic r()I
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/p0;->d(Ln3/e/b/j1/q0;)I

    move-result v0

    return v0
.end method

.method public synthetic s(Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/p0;->a(Ln3/e/b/j1/q0;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public synthetic t(Ln3/e/b/m0;)Ln3/e/b/m0;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->a(Ln3/e/b/j1/r1;Ln3/e/b/m0;)Ln3/e/b/m0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic u(Ln3/e/b/g1$a;)Ln3/e/b/g1$a;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/k1/h;->a(Ln3/e/b/k1/i;Ln3/e/b/g1$a;)Ln3/e/b/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic v(Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/q1;->c(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;

    move-result-object p1

    return-object p1
.end method
