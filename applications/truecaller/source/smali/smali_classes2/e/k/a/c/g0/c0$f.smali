.class public Le/k/a/c/g0/c0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/g0/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/k/a/c/g0/i;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Le/k/a/c/g0/c0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/g0/c0$e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/g0/c0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c0$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/c0$f;->a:Le/k/a/c/g0/c0$e;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$f;->a:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$f;->a:Le/k/a/c/g0/c0$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/k/a/c/g0/c0$e;->a:Ljava/lang/Object;

    check-cast v1, Le/k/a/c/g0/i;

    .line 3
    iget-object v0, v0, Le/k/a/c/g0/c0$e;->b:Le/k/a/c/g0/c0$e;

    iput-object v0, p0, Le/k/a/c/g0/c0$f;->a:Le/k/a/c/g0/c0$e;

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
