.class public final synthetic Le/m/a/c/p1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q1/l$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/m/a/c/p1/b;->a:I

    iput-wide p2, p0, Le/m/a/c/p1/b;->b:J

    iput-wide p4, p0, Le/m/a/c/p1/b;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Le/m/a/c/p1/f$a;

    .line 1
    check-cast p1, Le/m/a/c/b1/a;

    .line 2
    iget-object v0, p1, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 3
    iget-object v1, v0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Le/m/a/c/b1/a$b;->a:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/a$a;

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Le/m/a/c/b1/a;->t(Le/m/a/c/b1/a$a;)Le/m/a/c/b1/b$a;

    .line 6
    iget-object p1, p1, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/b1/b;

    .line 7
    invoke-interface {v0}, Le/m/a/c/b1/b;->i()V

    goto :goto_1

    :cond_1
    return-void
.end method
