.class public Ls1/a/a/a/v0/o/l$c;
.super Ls1/a/a/a/v0/o/l$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/o/l$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final synthetic c:Ls1/a/a/a/v0/o/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/o/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/o/l$c;->c:Ls1/a/a/a/v0/o/l;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/a/a/a/v0/o/l$d;-><init>(Ls1/a/a/a/v0/o/l$a;)V

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/o/l;->b(Ls1/a/a/a/v0/o/l;)I

    move-result p1

    iput p1, p0, Ls1/a/a/a/v0/o/l$c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/o/l$c;->c:Ls1/a/a/a/v0/o/l;

    invoke-static {v0}, Ls1/a/a/a/v0/o/l;->c(Ls1/a/a/a/v0/o/l;)I

    move-result v0

    iget v1, p0, Ls1/a/a/a/v0/o/l$c;->b:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "ModCount: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/v0/o/l$c;->c:Ls1/a/a/a/v0/o/l;

    invoke-static {v2}, Ls1/a/a/a/v0/o/l;->d(Ls1/a/a/a/v0/o/l;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ls1/a/a/a/v0/o/l$c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/o/l$c;->a()V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/o/l$c;->c:Ls1/a/a/a/v0/o/l;

    invoke-virtual {v0}, Ls1/a/a/a/v0/o/l;->clear()V

    return-void
.end method
