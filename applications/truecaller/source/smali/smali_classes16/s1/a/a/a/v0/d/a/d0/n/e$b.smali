.class public final Ls1/a/a/a/v0/d/a/d0/n/e$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/e;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/b/e;)V
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
        "Ls1/a/a/a/v0/b/w0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e$b;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e$b;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/x;->getTypeParameters()Ljava/util/List;

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
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/w;

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/e$b;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 8
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/h;->d:Ls1/a/a/a/v0/d/a/d0/m;

    .line 10
    invoke-interface {v3, v2}, Ls1/a/a/a/v0/d/a/d0/m;->a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surely belongs to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/e$b;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 12
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", so it must be resolved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-object v1
.end method
