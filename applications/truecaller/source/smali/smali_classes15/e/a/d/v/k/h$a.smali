.class public final Le/a/d/v/k/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/c0<",
        "Le/a/d/v/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/k/h;


# direct methods
.method public constructor <init>(Le/a/d/v/k/h;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/h$a;->a:Le/a/d/v/k/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/d/c0/c0;

    .line 2
    instance-of p2, p1, Le/a/d/c0/c0$a;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Le/a/d/v/k/h$a;->a:Le/a/d/v/k/h;

    iget-object p2, p2, Le/a/d/v/k/h;->f:Le/a/d/v/k/i;

    check-cast p1, Le/a/d/c0/c0$a;

    .line 4
    iget-object p1, p1, Le/a/d/c0/c0$a;->a:Ljava/util/Set;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/l/a;

    .line 7
    iget-object v1, p2, Le/a/d/v/k/i;->a:Ljava/util/LinkedHashMap;

    .line 8
    invoke-interface {v0}, Le/a/d/v/l/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0}, Le/a/d/v/l/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p2, Le/a/d/v/k/i;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 10
    new-instance v4, Ls1/k;

    invoke-direct {v4, v3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v0, p2, Le/a/d/v/k/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Le/a/d/v/k/i;->b:I

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
