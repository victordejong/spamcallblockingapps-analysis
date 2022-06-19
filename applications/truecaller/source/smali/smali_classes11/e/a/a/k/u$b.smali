.class public Le/a/a/k/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Le/a/a/k/q;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Le/a/a/k/u;


# direct methods
.method public constructor <init>(Le/a/a/k/u;Le/a/a/k/u$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/k/u$b;->b:Le/a/a/k/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/a/a/k/u$b;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/u$b;->a:I

    .line 2
    sget-object v1, Le/a/a/k/u;->x:[I

    .line 3
    array-length v1, v1

    if-ge v0, v1, :cond_0

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
    iget-object v0, p0, Le/a/a/k/u$b;->b:Le/a/a/k/u;

    .line 2
    sget-object v1, Le/a/a/k/u;->x:[I

    .line 3
    iget v2, p0, Le/a/a/k/u$b;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/a/a/k/u$b;->a:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Le/a/a/k/u;->x(I)Le/a/a/k/q;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed for this iterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
