.class public final Le/a/c/w/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Le/a/c/w/u;

.field public final synthetic c:Le/a/c/w/o0/k/b;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Le/a/c/w/u;Le/a/c/w/o0/k/b;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/t;->a:Lq3/a/x2/f;

    iput-object p2, p0, Le/a/c/w/t;->b:Le/a/c/w/u;

    iput-object p3, p0, Le/a/c/w/t;->c:Le/a/c/w/o0/k/b;

    iput-object p4, p0, Le/a/c/w/t;->d:Ljava/util/Set;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/w/t;->a:Lq3/a/x2/f;

    .line 2
    new-instance v1, Le/a/c/w/t$a;

    iget-object v2, p0, Le/a/c/w/t;->b:Le/a/c/w/u;

    iget-object v3, p0, Le/a/c/w/t;->c:Le/a/c/w/o0/k/b;

    iget-object v4, p0, Le/a/c/w/t;->d:Ljava/util/Set;

    invoke-direct {v1, p1, v2, v3, v4}, Le/a/c/w/t$a;-><init>(Lq3/a/x2/g;Le/a/c/w/u;Le/a/c/w/o0/k/b;Ljava/util/Set;)V

    invoke-interface {v0, v1, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
