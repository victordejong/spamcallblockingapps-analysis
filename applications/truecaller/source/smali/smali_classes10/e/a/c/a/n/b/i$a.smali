.class public final Le/a/c/a/n/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/n/b/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/n/b/i;

.field public final synthetic b:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Le/a/c/a/n/b/i;Lq3/a/x2/g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/n/b/i$a;->a:Le/a/c/a/n/b/i;

    iput-object p2, p0, Le/a/c/a/n/b/i$a;->b:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v2, p2, Le/a/c/a/n/b/i$a$a;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Le/a/c/a/n/b/i$a$a;

    iget v3, v2, Le/a/c/a/n/b/i$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/n/b/i$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/n/b/i$a$a;

    invoke-direct {v2, p0, p2}, Le/a/c/a/n/b/i$a$a;-><init>(Le/a/c/a/n/b/i$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Le/a/c/a/n/b/i$a$a;->d:Ljava/lang/Object;

    .line 1
    iget v3, v2, Le/a/c/a/n/b/i$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v4

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Le/a/c/a/n/b/i$a;->a:Le/a/c/a/n/b/i;

    iget-object p2, p1, Le/a/c/a/n/b/i;->g:Lq3/a/x2/f;

    .line 9
    iget-object p1, p1, Le/a/c/a/n/b/i;->i:Le/a/c/a/n/b/e;

    .line 10
    new-instance v3, Le/a/c/a/n/b/i$a$b;

    invoke-direct {v3, p0}, Le/a/c/a/n/b/i$a$b;-><init>(Le/a/c/a/n/b/i$a;)V

    iput v4, v2, Le/a/c/a/n/b/i$a$a;->e:I

    .line 11
    new-instance v4, Le/a/c/a/n/b/j;

    invoke-direct {v4, v3, p1}, Le/a/c/a/n/b/j;-><init>(Lq3/a/x2/g;Le/a/c/a/n/b/e;)V

    invoke-interface {p2, v4, v2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object v0

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/c/a/n/b/i$a;->a:Le/a/c/a/n/b/i;

    iget-object p1, p1, Le/a/c/a/n/b/i;->h:Ljava/lang/Throwable;

    throw p1
.end method
