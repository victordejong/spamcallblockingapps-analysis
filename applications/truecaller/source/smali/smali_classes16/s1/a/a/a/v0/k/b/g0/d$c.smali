.class public final Ls1/a/a/a/v0/k/b/g0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/e/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/e/c;->q:Ljava/util/List;

    const-string v1, "classProto.enumEntryList"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 5
    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    .line 6
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    move-object v3, v1

    check-cast v3, Ls1/a/a/a/v0/e/g;

    .line 9
    iget-object v4, p0, Ls1/a/a/a/v0/k/b/g0/d$c;->d:Ls1/a/a/a/v0/k/b/g0/d;

    .line 10
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 11
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    const-string v5, "it"

    .line 12
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v3, v3, Ls1/a/a/a/v0/e/g;->d:I

    .line 14
    invoke-static {v4, v3}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    iput-object v2, p0, Ls1/a/a/a/v0/k/b/g0/d$c;->a:Ljava/util/Map;

    .line 16
    iget-object v0, p1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 17
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 18
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 19
    new-instance v1, Ls1/a/a/a/v0/k/b/g0/d$c$a;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/k/b/g0/d$c$a;-><init>(Ls1/a/a/a/v0/k/b/g0/d$c;)V

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$c;->b:Ls1/a/a/a/v0/l/h;

    .line 20
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 21
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 22
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    .line 23
    new-instance v0, Ls1/a/a/a/v0/k/b/g0/d$c$b;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/k/b/g0/d$c$b;-><init>(Ls1/a/a/a/v0/k/b/g0/d$c;)V

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$c;->c:Ls1/a/a/a/v0/l/i;

    return-void
.end method
