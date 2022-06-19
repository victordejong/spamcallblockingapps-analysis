.class public final Ls1/a/a/a/v0/i/k;
.super Ls1/b0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/b0/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ls1/a/a/a/v0/i/j;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ls1/a/a/a/v0/i/j;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/i/k;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls1/a/a/a/v0/i/k;->c:Ls1/a/a/a/v0/i/j;

    .line 1
    invoke-direct {p0, p2}, Ls1/b0/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Ls1/a/l;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/l<",
            "*>;TT;TT;)Z"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/i/k;->c:Ls1/a/a/a/v0/i/j;

    .line 2
    iget-boolean p1, p1, Ls1/a/a/a/v0/i/j;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
