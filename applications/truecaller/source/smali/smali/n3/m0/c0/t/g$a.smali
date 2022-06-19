.class public Ln3/m0/c0/t/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/m0/c0/t/g;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ln3/m0/c0/t/g;


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/g;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/g$a;->b:Ln3/m0/c0/t/g;

    iput-object p2, p0, Ln3/m0/c0/t/g$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/g$a;->b:Ln3/m0/c0/t/g;

    iget-object v0, v0, Ln3/m0/c0/t/g;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/t/g$a;->b:Ln3/m0/c0/t/g;

    iget-object v1, v1, Ln3/m0/c0/t/g;->d:Ln3/c/a/c/a;

    iget-object v2, p0, Ln3/m0/c0/t/g$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ln3/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ln3/m0/c0/t/g$a;->b:Ln3/m0/c0/t/g;

    iget-object v3, v2, Ln3/m0/c0/t/g;->a:Ljava/lang/Object;

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v2, Ln3/m0/c0/t/g;->a:Ljava/lang/Object;

    .line 5
    iget-object v2, v2, Ln3/m0/c0/t/g;->e:Ln3/v/i0;

    invoke-virtual {v2, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Ln3/m0/c0/t/g$a;->b:Ln3/m0/c0/t/g;

    iput-object v1, v2, Ln3/m0/c0/t/g;->a:Ljava/lang/Object;

    .line 8
    iget-object v2, v2, Ln3/m0/c0/t/g;->e:Ln3/v/i0;

    invoke-virtual {v2, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
