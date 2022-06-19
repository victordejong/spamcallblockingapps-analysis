.class public final synthetic Le/m/a/c/l1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/l1/q$a;

.field public final synthetic b:Le/m/a/c/l1/q;

.field public final synthetic c:Le/m/a/c/l1/p$a;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/p$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/g;->a:Le/m/a/c/l1/q$a;

    iput-object p2, p0, Le/m/a/c/l1/g;->b:Le/m/a/c/l1/q;

    iput-object p3, p0, Le/m/a/c/l1/g;->c:Le/m/a/c/l1/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/a/c/l1/g;->a:Le/m/a/c/l1/q$a;

    iget-object v1, p0, Le/m/a/c/l1/g;->b:Le/m/a/c/l1/q;

    iget-object v2, p0, Le/m/a/c/l1/g;->c:Le/m/a/c/l1/p$a;

    .line 1
    iget v0, v0, Le/m/a/c/l1/q$a;->a:I

    check-cast v1, Le/m/a/c/b1/a;

    .line 2
    iget-object v3, v1, Le/m/a/c/b1/a;->d:Le/m/a/c/b1/a$b;

    .line 3
    iget-object v4, v3, Le/m/a/c/b1/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/b1/a$a;

    iput-object v4, v3, Le/m/a/c/b1/a$b;->f:Le/m/a/c/b1/a$a;

    .line 4
    invoke-virtual {v1, v0, v2}, Le/m/a/c/b1/a;->v(ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    .line 5
    iget-object v0, v1, Le/m/a/c/b1/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/b1/b;

    .line 6
    invoke-interface {v1}, Le/m/a/c/b1/b;->s()V

    goto :goto_0

    :cond_0
    return-void
.end method
