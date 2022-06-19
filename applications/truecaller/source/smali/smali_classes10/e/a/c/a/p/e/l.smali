.class public final Le/a/c/a/p/e/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ln3/z/q;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/l;->b:Le/a/c/a/p/e/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ln3/z/q;

    const-string v0, "loadState"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/p/e/l;->b:Le/a/c/a/p/e/f;

    .line 4
    sget-object v1, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p1, Ln3/z/q;->b:Ln3/z/r0;

    .line 7
    instance-of v1, v0, Ln3/z/r0$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-boolean v0, v0, Ln3/z/r0;->a:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 9
    :goto_0
    iget-object v1, p0, Le/a/c/a/p/e/l;->b:Le/a/c/a/p/e/f;

    xor-int/lit8 v4, v0, 0x1

    .line 10
    invoke-virtual {v1, v4}, Le/a/c/a/p/e/f;->UA(Z)V

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Le/a/c/a/p/e/l;->b:Le/a/c/a/p/e/f;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p1, Ln3/z/q;->c:Ln3/z/r0;

    .line 14
    instance-of v4, p1, Ln3/z/r0$c;

    if-eqz v4, :cond_2

    .line 15
    iget-boolean p1, p1, Ln3/z/r0;->a:Z

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, v1, Le/a/c/a/p/e/f;->e:Le/a/c/a/p/d/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ln3/z/f2;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string p1, "insightsSmartFeedAdapter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    move p1, v2

    :goto_1
    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    move p1, v2

    .line 17
    :goto_2
    iget-object v1, p0, Le/a/c/a/p/e/l;->b:Le/a/c/a/p/e/f;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    move v2, v3

    .line 18
    :cond_4
    invoke-virtual {v1, v2}, Le/a/c/a/p/e/f;->TA(Z)V

    .line 19
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
