.class public final Ls1/f0/g$b;
.super Ls1/u/a;
.source "SourceFile"

# interfaces
.implements Ls1/f0/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/f0/g;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/u/a<",
        "Ls1/f0/d;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "kotlin/text/MatcherMatchResult$groups$1",
        "Lkotlin/text/MatchNamedGroupCollection;",
        "Lkotlin/collections/AbstractCollection;",
        "Lkotlin/text/MatchGroup;",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
        "name",
        "",
        "isEmpty",
        "",
        "iterator",
        "",
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
.field public final synthetic a:Ls1/f0/g;


# direct methods
.method public constructor <init>(Ls1/f0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/f0/g$b;->a:Ls1/f0/g;

    invoke-direct {p0}, Ls1/u/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/f0/g$b;->a:Ls1/f0/g;

    .line 2
    iget-object v0, v0, Ls1/f0/g;->c:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Ls1/f0/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ls1/f0/d;

    .line 2
    invoke-super {p0, p1}, Ls1/u/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ls1/f0/d;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/f0/g$b;->a:Ls1/f0/g;

    .line 2
    iget-object v0, v0, Ls1/f0/g;->c:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-static {v1, v0}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ls1/d0/i;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 5
    new-instance v1, Ls1/f0/d;

    iget-object v2, p0, Ls1/f0/g$b;->a:Ls1/f0/g;

    .line 6
    iget-object v2, v2, Ls1/f0/g;->c:Ljava/util/regex/Matcher;

    .line 7
    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "matchResult.group(index)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Ls1/f0/d;-><init>(Ljava/lang/String;Ls1/d0/i;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ls1/f0/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ls1/u/i;->E(Ljava/util/Collection;)Ls1/d0/i;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    new-instance v1, Ls1/f0/g$b$a;

    invoke-direct {v1, p0}, Ls1/f0/g$b$a;-><init>(Ls1/f0/g$b;)V

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    check-cast v0, Ls1/e0/c0;

    .line 2
    new-instance v1, Ls1/e0/c0$a;

    invoke-direct {v1, v0}, Ls1/e0/c0$a;-><init>(Ls1/e0/c0;)V

    return-object v1
.end method
