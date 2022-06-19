.class public final Le/k/a/c/d0/z/h$a;
.super Le/k/a/c/d0/y/c0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Le/k/a/c/d0/z/h$b;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/h$b;Le/k/a/c/d0/v;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/h$b;",
            "Le/k/a/c/d0/v;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Le/k/a/c/d0/y/c0$a;-><init>(Le/k/a/c/d0/v;Ljava/lang/Class;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Le/k/a/c/d0/z/h$a;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/h$a;->b:Le/k/a/c/d0/z/h$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/h$a;->b:Le/k/a/c/d0/z/h$b;

    .line 2
    iget-object v1, v0, Le/k/a/c/d0/z/h$b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    iget-object v0, v0, Le/k/a/c/d0/z/h$b;->b:Ljava/util/Collection;

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/d0/z/h$a;

    .line 6
    iget-object v3, v2, Le/k/a/c/d0/y/c0$a;->a:Le/k/a/c/d0/v;

    .line 7
    iget-object v3, v3, Le/k/a/c/d0/v;->d:Le/k/a/c/d0/y/c0;

    .line 8
    iget-object v3, v3, Le/k/a/c/d0/y/c0;->b:Le/k/a/a/k0$a;

    .line 9
    iget-object v3, v3, Le/k/a/a/k0$a;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 12
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, v2, Le/k/a/c/d0/z/h$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 14
    :cond_0
    iget-object v0, v2, Le/k/a/c/d0/z/h$a;->c:Ljava/util/List;

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to resolve a forward reference with id ["

    const-string v1, "] that wasn\'t previously seen as unresolved."

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
