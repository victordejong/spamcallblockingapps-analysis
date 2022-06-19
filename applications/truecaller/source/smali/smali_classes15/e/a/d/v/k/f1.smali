.class public final Le/a/d/v/k/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Le/a/d/v/k/c1;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Le/a/d/v/k/c1;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/f1;->a:Lq3/a/x2/f;

    iput-object p2, p0, Le/a/d/v/k/f1;->b:Le/a/d/v/k/c1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/v/k/f1;->a:Lq3/a/x2/f;

    .line 2
    new-instance v1, Le/a/d/v/k/f1$a;

    invoke-direct {v1, p1, p0}, Le/a/d/v/k/f1$a;-><init>(Lq3/a/x2/g;Le/a/d/v/k/f1;)V

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
