.class public final synthetic Le/m/a/c/l1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/l1/q$a;

.field public final synthetic b:Le/m/a/c/l1/q;

.field public final synthetic c:Le/m/a/c/l1/q$b;

.field public final synthetic d:Le/m/a/c/l1/q$c;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/l1/q$a;Le/m/a/c/l1/q;Le/m/a/c/l1/q$b;Le/m/a/c/l1/q$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/l1/d;->a:Le/m/a/c/l1/q$a;

    iput-object p2, p0, Le/m/a/c/l1/d;->b:Le/m/a/c/l1/q;

    iput-object p3, p0, Le/m/a/c/l1/d;->c:Le/m/a/c/l1/q$b;

    iput-object p4, p0, Le/m/a/c/l1/d;->d:Le/m/a/c/l1/q$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/a/c/l1/d;->a:Le/m/a/c/l1/q$a;

    iget-object v1, p0, Le/m/a/c/l1/d;->b:Le/m/a/c/l1/q;

    .line 1
    iget v2, v0, Le/m/a/c/l1/q$a;->a:I

    iget-object v0, v0, Le/m/a/c/l1/q$a;->b:Le/m/a/c/l1/p$a;

    check-cast v1, Le/m/a/c/b1/a;

    .line 2
    invoke-virtual {v1, v2, v0}, Le/m/a/c/b1/a;->v(ILe/m/a/c/l1/p$a;)Le/m/a/c/b1/b$a;

    .line 3
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

    .line 4
    invoke-interface {v1}, Le/m/a/c/b1/b;->l()V

    goto :goto_0

    :cond_0
    return-void
.end method
