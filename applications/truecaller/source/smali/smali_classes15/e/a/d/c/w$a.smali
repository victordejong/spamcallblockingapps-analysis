.class public final Le/a/d/c/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/w;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/v/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/w;


# direct methods
.method public constructor <init>(Le/a/d/c/w;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/w$a;->a:Le/a/d/c/w;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/util/Set;

    .line 2
    iget-object p2, p0, Le/a/d/c/w$a;->a:Le/a/d/c/w;

    iget-object v6, p2, Le/a/d/c/w;->f:Le/a/d/c/t;

    iget-object p2, p2, Le/a/d/c/w;->g:Le/a/d/v/b;

    .line 3
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v6, Le/a/d/c/t;->h:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v0, v6, Le/a/d/c/t;->g:Lq3/a/p1;

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 7
    new-instance v4, Le/a/d/c/y;

    invoke-direct {v4, v6, p1, p2, v2}, Le/a/d/c/y;-><init>(Le/a/d/c/t;Ljava/util/Set;Le/a/d/v/b;Ls1/w/d;)V

    const/4 p1, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, v6, Le/a/d/c/t;->g:Lq3/a/p1;

    .line 8
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
