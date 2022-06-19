.class public final Ls1/f0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ls1/z/c/i0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/f0/c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ls1/d0/i;",
        ">;",
        "Ls1/z/c/i0/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "counter",
        "",
        "getCounter",
        "()I",
        "setCounter",
        "(I)V",
        "currentStartIndex",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "nextItem",
        "getNextItem",
        "()Lkotlin/ranges/IntRange;",
        "setNextItem",
        "(Lkotlin/ranges/IntRange;)V",
        "nextSearchIndex",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextState",
        "getNextState",
        "setNextState",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ls1/d0/i;

.field public e:I

.field public final synthetic f:Ls1/f0/c;


# direct methods
.method public constructor <init>(Ls1/f0/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/f0/c$a;->f:Ls1/f0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ls1/f0/c$a;->a:I

    .line 3
    iget v0, p1, Ls1/f0/c;->b:I

    .line 4
    iget-object p1, p1, Ls1/f0/c;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ls1/d0/j;->d(III)I

    move-result p1

    iput p1, p0, Ls1/f0/c$a;->b:I

    .line 6
    iput p1, p0, Ls1/f0/c$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Ls1/f0/c$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Ls1/f0/c$a;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ls1/f0/c$a;->d:Ls1/d0/i;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Ls1/f0/c$a;->f:Ls1/f0/c;

    .line 5
    iget v3, v2, Ls1/f0/c;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    .line 6
    iget v6, p0, Ls1/f0/c$a;->e:I

    add-int/2addr v6, v5

    iput v6, p0, Ls1/f0/c$a;->e:I

    if-ge v6, v3, :cond_2

    .line 7
    :cond_1
    iget-object v2, v2, Ls1/f0/c;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 9
    :cond_2
    iget v0, p0, Ls1/f0/c$a;->b:I

    new-instance v1, Ls1/d0/i;

    iget-object v2, p0, Ls1/f0/c$a;->f:Ls1/f0/c;

    .line 10
    iget-object v2, v2, Ls1/f0/c;->a:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v2}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ls1/d0/i;-><init>(II)V

    iput-object v1, p0, Ls1/f0/c$a;->d:Ls1/d0/i;

    .line 12
    iput v4, p0, Ls1/f0/c$a;->c:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Ls1/f0/c$a;->f:Ls1/f0/c;

    .line 14
    iget-object v2, v0, Ls1/f0/c;->d:Ls1/z/b/p;

    .line 15
    iget-object v0, v0, Ls1/f0/c;->a:Ljava/lang/CharSequence;

    .line 16
    iget v3, p0, Ls1/f0/c$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    if-nez v0, :cond_4

    .line 17
    iget v0, p0, Ls1/f0/c$a;->b:I

    new-instance v1, Ls1/d0/i;

    iget-object v2, p0, Ls1/f0/c$a;->f:Ls1/f0/c;

    .line 18
    iget-object v2, v2, Ls1/f0/c;->a:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v2}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ls1/d0/i;-><init>(II)V

    iput-object v1, p0, Ls1/f0/c$a;->d:Ls1/d0/i;

    .line 20
    iput v4, p0, Ls1/f0/c$a;->c:I

    goto :goto_0

    .line 21
    :cond_4
    iget-object v2, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 22
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 25
    iget v3, p0, Ls1/f0/c$a;->b:I

    invoke-static {v3, v2}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v3

    iput-object v3, p0, Ls1/f0/c$a;->d:Ls1/d0/i;

    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Ls1/f0/c$a;->b:I

    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    add-int/2addr v2, v1

    .line 27
    iput v2, p0, Ls1/f0/c$a;->c:I

    .line 28
    :goto_0
    iput v5, p0, Ls1/f0/c$a;->a:I

    :goto_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ls1/f0/c$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ls1/f0/c$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Ls1/f0/c$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ls1/f0/c$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ls1/f0/c$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Ls1/f0/c$a;->a:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ls1/f0/c$a;->d:Ls1/d0/i;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Ls1/f0/c$a;->d:Ls1/d0/i;

    .line 6
    iput v1, p0, Ls1/f0/c$a;->a:I

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
