.class public final Ls1/a/a/a/a$a$g;
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
        "Ls1/a/a/a/a<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/a$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/a$a$g;->b:Ls1/a/a/a/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a$a$g;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v0}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->I()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->m1(Ls1/a/a/a/v0/j/y/k;Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ls1/a/a/a/v0/b/k;

    .line 4
    invoke-static {v4}, Ls1/a/a/a/v0/j/g;->r(Ls1/a/a/a/v0/b/k;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ls1/a/a/a/v0/b/k;

    const-string v4, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    .line 8
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ls1/a/a/a/v0/b/e;

    invoke-static {v3}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    new-instance v4, Ls1/a/a/a/a;

    invoke-direct {v4, v3}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method
