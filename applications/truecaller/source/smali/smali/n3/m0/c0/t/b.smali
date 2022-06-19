.class public Ln3/m0/c0/t/b;
.super Ln3/m0/c0/t/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ln3/m0/c0/l;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln3/m0/c0/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/b;->b:Ln3/m0/c0/l;

    iput-object p2, p0, Ln3/m0/c0/t/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ln3/m0/c0/t/d;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/b;->b:Ln3/m0/c0/l;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ln3/m0/c0/t/b;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v1, v2}, Ln3/m0/c0/s/t;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Ln3/m0/c0/t/b;->b:Ln3/m0/c0/l;

    invoke-virtual {p0, v3, v2}, Ln3/m0/c0/t/d;->a(Ln3/m0/c0/l;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 10
    iget-object v0, p0, Ln3/m0/c0/t/b;->b:Ln3/m0/c0/l;

    invoke-virtual {p0, v0}, Ln3/m0/c0/t/d;->b(Ln3/m0/c0/l;)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 12
    throw v1
.end method
