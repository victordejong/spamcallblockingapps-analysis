.class public final synthetic Le/m/h/a/d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/ref/ReferenceQueue;

.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/o;->a:Ljava/lang/ref/ReferenceQueue;

    iput-object p2, p0, Le/m/h/a/d/o;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/h/a/d/o;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v1, p0, Le/m/h/a/d/o;->b:Ljava/util/Set;

    .line 2
    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Le/m/h/a/d/a$b;

    .line 4
    iget-object v3, v2, Le/m/h/a/d/a$b;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/PhantomReference;->clear()V

    .line 6
    iget-object v2, v2, Le/m/h/a/d/a$b;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
