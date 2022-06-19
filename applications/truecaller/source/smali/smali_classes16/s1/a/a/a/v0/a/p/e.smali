.class public final Ls1/a/a/a/v0/a/p/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/a0;",
        "Ls1/a/a/a/v0/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/a/p/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/a/p/e;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/p/e;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/p/e;->b:Ls1/a/a/a/v0/a/p/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/a0;

    const-string v0, "module"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/a/a/a/v0/a/p/f;->e:Ls1/a/a/a/v0/f/b;

    .line 4
    invoke-interface {p1, v0}, Ls1/a/a/a/v0/b/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/g0;->P()Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ls1/a/a/a/v0/a/b;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/a/b;

    return-object p1
.end method
