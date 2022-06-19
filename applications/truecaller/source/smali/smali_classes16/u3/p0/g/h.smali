.class public final Lu3/p0/g/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/X509Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lu3/p0/g/i;


# direct methods
.method public constructor <init>(Lu3/p0/g/i;)V
    .locals 0

    iput-object p1, p0, Lu3/p0/g/h;->b:Lu3/p0/g/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/g/h;->b:Lu3/p0/g/i;

    .line 2
    iget-object v0, v0, Lu3/p0/g/i;->d:Lu3/y;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lu3/y;->c()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_0

    .line 7
    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method
