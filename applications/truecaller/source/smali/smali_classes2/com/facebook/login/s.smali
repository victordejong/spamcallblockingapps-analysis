.class public final Lcom/facebook/login/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB!\u0008\u0017\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006B+\u0008\u0016\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/login/LoginConfiguration;",
        "",
        "permissions",
        "",
        "",
        "nonce",
        "(Ljava/util/Collection;Ljava/lang/String;)V",
        "codeVerifier",
        "(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V",
        "getCodeVerifier",
        "()Ljava/lang/String;",
        "getNonce",
        "",
        "getPermissions",
        "()Ljava/util/Set;",
        "Companion",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 11

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const-string p2, "randomUUID().toString()"

    .line 1
    invoke-static {p2}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "nonce"

    .line 2
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ls1/d0/i;

    const/16 v1, 0x2b

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Ls1/d0/i;-><init>(II)V

    sget-object v1, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-static {v0, v1}, Ls1/d0/j;->h(Ls1/d0/i;Ls1/c0/c;)I

    move-result v0

    .line 4
    new-instance v1, Ls1/d0/c;

    const/16 v2, 0x61

    const/16 v3, 0x7a

    invoke-direct {v1, v2, v3}, Ls1/d0/c;-><init>(CC)V

    new-instance v2, Ls1/d0/c;

    const/16 v3, 0x41

    const/16 v4, 0x5a

    invoke-direct {v2, v3, v4}, Ls1/d0/c;-><init>(CC)V

    invoke-static {v1, v2}, Ls1/u/i;->j0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ls1/d0/c;

    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-direct {v2, v3, v4}, Ls1/d0/c;-><init>(CC)V

    invoke-static {v1, v2}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    move v3, v10

    :goto_1
    if-ge v3, v0, :cond_2

    sget-object v4, Ls1/c0/c;->b:Ls1/c0/c$a;

    const-string v5, "$this$random"

    .line 6
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "random"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    move-object v5, v1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ls1/c0/c$a;->c(I)I

    move-result v4

    invoke-static {v1, v4}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, ""

    .line 11
    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "codeVerifier"

    invoke-static {v0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_3

    move p3, v1

    goto :goto_2

    :cond_3
    move p3, v10

    :goto_2
    if-eqz p3, :cond_4

    move p3, v10

    goto :goto_4

    :cond_4
    const/16 p3, 0x20

    const/4 v2, 0x6

    .line 15
    invoke-static {p2, p3, v10, v10, v2}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result p3

    if-ltz p3, :cond_5

    move p3, v1

    goto :goto_3

    :cond_5
    move p3, v10

    :goto_3
    xor-int/2addr p3, v1

    :goto_4
    if-eqz p3, :cond_6

    .line 16
    invoke-static {v0}, Lcom/facebook/login/y;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    move v10, v1

    :cond_6
    if-eqz v10, :cond_8

    .line 17
    new-instance p3, Ljava/util/HashSet;

    if-eqz p1, :cond_7

    invoke-direct {p3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    :cond_7
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :goto_5
    const-string p1, "openid"

    .line 18
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    const-string p3, "unmodifiableSet(permissions)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/s;->a:Ljava/util/Set;

    .line 20
    iput-object p2, p0, Lcom/facebook/login/s;->b:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/facebook/login/s;->c:Ljava/lang/String;

    return-void

    .line 22
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
