.class public final Ls1/a/a/a/v0/b/h1/t$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/t;-><init>(Ls1/a/a/a/v0/b/h1/a0;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;)V
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
        "Ls1/a/a/a/v0/b/c0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/h1/t;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/t;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/t$a;->b:Ls1/a/a/a/v0/b/h1/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t$a;->b:Ls1/a/a/a/v0/b/h1/t;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/a0;->v0()V

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/b/h1/a0;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/h1/l;

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/t$a;->b:Ls1/a/a/a/v0/b/h1/t;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 7
    invoke-static {v0, v1}, Le/q/f/a/d/a;->g2(Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/f/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
