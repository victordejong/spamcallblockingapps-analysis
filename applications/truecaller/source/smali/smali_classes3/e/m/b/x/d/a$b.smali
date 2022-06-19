.class public final Le/m/b/x/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Le/m/b/x/d/a;


# direct methods
.method public constructor <init>(Le/m/b/x/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/d/a$b;->c:Le/m/b/x/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Le/m/b/x/d/a$b;->b:I

    iget-object v1, p0, Le/m/b/x/d/a$b;->c:Le/m/b/x/d/a;

    iget v1, v1, Le/m/b/x/d/a;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Le/m/b/x/d/a$b;->b:I

    .line 2
    iget-object v1, p0, Le/m/b/x/d/a$b;->c:Le/m/b/x/d/a;

    iget v2, v1, Le/m/b/x/d/a;->a:I

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 3
    iput v2, p0, Le/m/b/x/d/a$b;->b:I

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Le/m/b/x/d/a$b;->a:Z

    .line 5
    new-instance v2, Le/m/b/x/d/a$a;

    invoke-direct {v2, v1, v0}, Le/m/b/x/d/a$a;-><init>(Le/m/b/x/d/a;I)V

    return-object v2

    .line 6
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget v0, p0, Le/m/b/x/d/a$b;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    iget-boolean v2, p0, Le/m/b/x/d/a$b;->a:Z

    if-nez v2, :cond_0

    if-ltz v0, :cond_0

    .line 3
    iget-object v2, p0, Le/m/b/x/d/a$b;->c:Le/m/b/x/d/a;

    shl-int/2addr v0, v1

    .line 4
    invoke-virtual {v2, v0}, Le/m/b/x/d/a;->i(I)Ljava/lang/Object;

    .line 5
    iget v0, p0, Le/m/b/x/d/a$b;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Le/m/b/x/d/a$b;->b:I

    .line 6
    iput-boolean v1, p0, Le/m/b/x/d/a$b;->a:Z

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
