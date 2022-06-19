.class public final Ln3/z/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    and-int/lit8 p1, p2, 0x1

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ls1/k;

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Ln3/z/s;->a:Lq3/a/x2/a1;

    .line 3
    new-instance p2, Ln3/z/r;

    invoke-direct {p2, p1}, Ln3/z/r;-><init>(Lq3/a/x2/f;)V

    .line 4
    iput-object p2, p0, Ln3/z/s;->b:Lq3/a/x2/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/s;->a:Lq3/a/x2/a1;

    new-instance v1, Ls1/k;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/k;

    .line 2
    iget-object v2, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
