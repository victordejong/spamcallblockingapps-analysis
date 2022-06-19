.class public Ls1/a/a/a/v0/h/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ls1/a/a/a/v0/h/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ls1/a/a/a/v0/h/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ls1/a/a/a/v0/h/o;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/h/s$c;->a:Ljava/util/Stack;

    .line 3
    :goto_0
    instance-of p2, p1, Ls1/a/a/a/v0/h/s;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Ls1/a/a/a/v0/h/s;

    .line 5
    iget-object p2, p0, Ls1/a/a/a/v0/h/s$c;->a:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/h/s;->c:Ls1/a/a/a/v0/h/c;

    goto :goto_0

    .line 7
    :cond_0
    check-cast p1, Ls1/a/a/a/v0/h/o;

    .line 8
    iput-object p1, p0, Ls1/a/a/a/v0/h/s$c;->b:Ls1/a/a/a/v0/h/o;

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/h/o;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/s$c;->b:Ls1/a/a/a/v0/h/o;

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    iget-object v1, p0, Ls1/a/a/a/v0/h/s$c;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p0, Ls1/a/a/a/v0/h/s$c;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/s;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/h/s;->d:Ls1/a/a/a/v0/h/c;

    .line 5
    :goto_0
    instance-of v2, v1, Ls1/a/a/a/v0/h/s;

    if-eqz v2, :cond_2

    .line 6
    check-cast v1, Ls1/a/a/a/v0/h/s;

    .line 7
    iget-object v2, p0, Ls1/a/a/a/v0/h/s$c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v1, Ls1/a/a/a/v0/h/s;->c:Ls1/a/a/a/v0/h/c;

    goto :goto_0

    .line 9
    :cond_2
    check-cast v1, Ls1/a/a/a/v0/h/o;

    .line 10
    invoke-virtual {v1}, Ls1/a/a/a/v0/h/o;->size()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 11
    :goto_2
    iput-object v1, p0, Ls1/a/a/a/v0/h/s$c;->b:Ls1/a/a/a/v0/h/o;

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/s$c;->b:Ls1/a/a/a/v0/h/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/s$c;->a()Ls1/a/a/a/v0/h/o;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
