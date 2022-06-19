.class public final Ls1/a/a/a/v0/d/a/d0/n/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/c;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[",
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/c$a;->b:Ls1/a/a/a/v0/d/a/d0/n/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/c$a;->b:Ls1/a/a/a/v0/d/a/d0/n/c;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/c;->e:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/d/a/d0/n/i;->w0()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 6
    check-cast v2, Ls1/a/a/a/v0/d/b/l;

    .line 7
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/c$a;->b:Ls1/a/a/a/v0/d/a/d0/n/c;

    .line 8
    iget-object v4, v3, Ls1/a/a/a/v0/d/a/d0/n/c;->d:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 10
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/d0/c;->d:Ls1/a/a/a/v0/d/b/d;

    .line 11
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/n/c;->e:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 12
    invoke-virtual {v4, v3, v2}, Ls1/a/a/a/v0/d/b/d;->a(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->y2(Ljava/lang/Iterable;)Ls1/a/a/a/v0/o/l;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ls1/a/a/a/v0/j/y/i;

    .line 15
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/o/l;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method
