.class public final Ls1/a/a/a/v0/d/a/b0/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/b0/i;-><init>(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)V
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
        "Ls1/a/a/a/v0/j/t/g<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/b0/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/b0/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/b0/i$a;->b:Ls1/a/a/a/v0/d/a/b0/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/i$a;->b:Ls1/a/a/a/v0/d/a/b0/i;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/b0/b;->c:Ls1/a/a/a/v0/d/a/f0/b;

    .line 3
    instance-of v1, v0, Ls1/a/a/a/v0/d/a/f0/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Ls1/a/a/a/v0/d/a/b0/d;->c:Ls1/a/a/a/v0/d/a/b0/d;

    check-cast v0, Ls1/a/a/a/v0/d/a/f0/e;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/e;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/d/a/b0/d;->a(Ljava/util/List;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Ls1/a/a/a/v0/d/a/f0/m;

    if-eqz v1, :cond_1

    sget-object v1, Ls1/a/a/a/v0/d/a/b0/d;->c:Ls1/a/a/a/v0/d/a/b0/d;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/d/a/b0/d;->a(Ljava/util/List;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    .line 6
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->g:Ls1/a/a/a/v0/f/e;

    .line 7
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Ls1/u/t;->a:Ls1/u/t;

    :goto_1
    return-object v2
.end method
