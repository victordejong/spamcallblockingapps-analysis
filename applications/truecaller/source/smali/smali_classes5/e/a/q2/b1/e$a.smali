.class public Le/a/q2/b1/e$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/b1/e;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/q2/b1/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/q2/b1/e;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Le/a/q2/b1/c;

    .line 2
    iget-wide v0, p2, Le/a/q2/b1/c;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object p2, p2, Le/a/q2/b1/c;->b:[B

    const/4 v0, 0x2

    if-nez p2, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->o0(I[B)V

    :goto_0
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `persisted_event` (`id`,`record`) VALUES (nullif(?, 0),?)"

    return-object v0
.end method
