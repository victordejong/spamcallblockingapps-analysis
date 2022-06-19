.class public final Ls1/a/a/a/a$a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/a$a;-><init>(Ls1/a/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/f<",
        "+TT;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/a$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/a$a$e;->b:Ls1/a/a/a/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a$a$e;->b:Ls1/a/a/a/a$a;

    iget-object v0, v0, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    invoke-virtual {v0}, Ls1/a/a/a/a;->f()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ls1/a/a/a/v0/b/j;

    .line 5
    new-instance v3, Ls1/a/a/a/b;

    iget-object v4, p0, Ls1/a/a/a/a$a$e;->b:Ls1/a/a/a/a$a;

    iget-object v4, v4, Ls1/a/a/a/a$a;->m:Ls1/a/a/a/a;

    invoke-direct {v3, v4, v2}, Ls1/a/a/a/b;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/v;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
