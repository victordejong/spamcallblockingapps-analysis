.class public final Ls1/a/a/a/v0/d/a/d0/n/g$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/g;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/f0/g;ZLs1/a/a/a/v0/d/a/d0/n/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Map<",
        "Ls1/a/a/a/v0/f/e;",
        "+",
        "Ls1/a/a/a/v0/d/a/f0/n;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/g;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/g$f;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/g$f;->b:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/g;->s:Ls1/a/a/a/v0/d/a/f0/g;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->getFields()Ljava/util/Collection;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ls1/a/a/a/v0/d/a/f0/n;

    .line 6
    invoke-interface {v3}, Ls1/a/a/a/v0/d/a/f0/n;->H()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 7
    invoke-static {v1, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    move v0, v2

    .line 8
    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/d/a/f0/n;

    .line 11
    invoke-interface {v3}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v2
.end method
