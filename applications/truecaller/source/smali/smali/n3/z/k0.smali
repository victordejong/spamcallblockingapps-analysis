.class public final Ln3/z/k0;
.super Ln3/z/i0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/i0$b<",
        "TValue;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Ln3/z/i0;


# direct methods
.method public constructor <init>(Lq3/a/n;Ln3/z/i0;Ln3/z/i0$c;)V
    .locals 0

    iput-object p1, p0, Ln3/z/k0;->a:Lq3/a/n;

    iput-object p2, p0, Ln3/z/k0;->b:Ln3/z/i0;

    .line 1
    invoke-direct {p0}, Ln3/z/i0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TValue;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/k0;->a:Lq3/a/n;

    .line 2
    new-instance v8, Ln3/z/v$a;

    .line 3
    iget-object v1, p0, Ln3/z/k0;->b:Ln3/z/i0;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "$this$getPrevKey"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ln3/z/i0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 6
    :goto_0
    iget-object v1, p0, Ln3/z/k0;->b:Ln3/z/i0;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "$this$getNextKey"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Ls1/u/i;->S(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ln3/z/i0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x18

    move-object v1, v8

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    .line 9
    invoke-direct/range {v1 .. v7}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 10
    invoke-interface {v0, v8}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
