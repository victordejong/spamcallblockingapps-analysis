.class public final Lkotlin/c0/i$a;
.super Lkotlin/s/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/c0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/c0/i;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/s/a<",
        "Lkotlin/c0/f;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic f:Lkotlin/c0/i;


# direct methods
.method constructor <init>(Lkotlin/c0/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/c0/i$a;->f:Lkotlin/c0/i;

    invoke-direct {p0}, Lkotlin/s/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/c0/i$a;->f:Lkotlin/c0/i;

    invoke-static {v0}, Lkotlin/c0/i;->c(Lkotlin/c0/i;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lkotlin/c0/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/c0/f;

    invoke-virtual {p0, p1}, Lkotlin/c0/i$a;->g(Lkotlin/c0/f;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge g(Lkotlin/c0/f;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkotlin/s/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Lkotlin/c0/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/c0/i$a;->f:Lkotlin/c0/i;

    invoke-static {v0}, Lkotlin/c0/i;->c(Lkotlin/c0/i;)Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/c0/k;->c(Ljava/util/regex/MatchResult;I)Lkotlin/z/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lkotlin/z/c;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 3
    new-instance v1, Lkotlin/c0/f;

    iget-object v2, p0, Lkotlin/c0/i$a;->f:Lkotlin/c0/i;

    invoke-static {v2}, Lkotlin/c0/i;->c(Lkotlin/c0/i;)Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "matchResult.group(index)"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lkotlin/c0/f;-><init>(Ljava/lang/String;Lkotlin/z/c;)V

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
            "Lkotlin/c0/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlin/s/k;->h(Ljava/util/Collection;)Lkotlin/z/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->G(Ljava/lang/Iterable;)Lkotlin/b0/d;

    move-result-object v0

    new-instance v1, Lkotlin/c0/i$a$a;

    invoke-direct {v1, p0}, Lkotlin/c0/i$a$a;-><init>(Lkotlin/c0/i$a;)V

    invoke-static {v0, v1}, Lkotlin/b0/e;->h(Lkotlin/b0/d;Lkotlin/w/b/l;)Lkotlin/b0/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/b0/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
