.class public final Lq3/b/i/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ls1/z/c/i0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/b/i/f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lq3/b/i/d;",
        ">;",
        "Ls1/z/c/i0/a;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lq3/b/i/f;


# direct methods
.method public constructor <init>(Lq3/b/i/f;)V
    .locals 0

    iput-object p1, p0, Lq3/b/i/f$a;->b:Lq3/b/i/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lq3/b/i/f;->a:Lq3/b/i/d;

    invoke-interface {p1}, Lq3/b/i/d;->d()I

    move-result p1

    iput p1, p0, Lq3/b/i/f$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lq3/b/i/f$a;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lq3/b/i/f$a;->b:Lq3/b/i/f;

    iget-object v0, v0, Lq3/b/i/f;->a:Lq3/b/i/d;

    invoke-interface {v0}, Lq3/b/i/d;->d()I

    move-result v1

    iget v2, p0, Lq3/b/i/f$a;->a:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lq3/b/i/f$a;->a:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
