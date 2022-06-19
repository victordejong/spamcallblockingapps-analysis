.class public final Ln3/e/a/d/c;
.super Ln3/e/b/j1/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/d/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/e/b/j1/y0<",
        "Ln3/e/a/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>([Ln3/e/a/d/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/e/b/j1/y0;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ln3/e/b/j1/y0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static d()Ln3/e/a/d/c;
    .locals 2

    .line 1
    new-instance v0, Ln3/e/a/d/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ln3/e/a/d/b;

    invoke-direct {v0, v1}, Ln3/e/a/d/c;-><init>([Ln3/e/a/d/b;)V

    return-object v0
.end method


# virtual methods
.method public a()Ln3/e/b/j1/y0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/e/b/j1/y0<",
            "Ln3/e/a/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln3/e/a/d/c;->d()Ln3/e/a/d/c;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ln3/e/b/j1/y0;->b()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, v0, Ln3/e/b/j1/y0;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public c()Ln3/e/a/d/c$a;
    .locals 2

    .line 1
    new-instance v0, Ln3/e/a/d/c$a;

    invoke-virtual {p0}, Ln3/e/b/j1/y0;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/a/d/c$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/e/a/d/c;->a()Ln3/e/b/j1/y0;

    move-result-object v0

    return-object v0
.end method
