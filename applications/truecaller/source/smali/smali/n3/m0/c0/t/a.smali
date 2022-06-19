.class public Ln3/m0/c0/t/a;
.super Ln3/m0/c0/t/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ln3/m0/c0/l;

.field public final synthetic c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ln3/m0/c0/l;Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/a;->b:Ln3/m0/c0/l;

    iput-object p2, p0, Ln3/m0/c0/t/a;->c:Ljava/util/UUID;

    invoke-direct {p0}, Ln3/m0/c0/t/d;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/a;->b:Ln3/m0/c0/l;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/t/a;->b:Ln3/m0/c0/l;

    iget-object v2, p0, Ln3/m0/c0/t/a;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ln3/m0/c0/t/d;->a(Ln3/m0/c0/l;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v0, p0, Ln3/m0/c0/t/a;->b:Ln3/m0/c0/l;

    invoke-virtual {p0, v0}, Ln3/m0/c0/t/d;->b(Ln3/m0/c0/l;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 9
    throw v1
.end method
