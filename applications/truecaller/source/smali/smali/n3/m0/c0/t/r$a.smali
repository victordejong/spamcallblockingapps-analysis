.class public Ln3/m0/c0/t/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/m0/c0/t/r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/m0/c0/t/w/c;

.field public final synthetic b:Ln3/m0/c0/t/r;


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/r;Ln3/m0/c0/t/w/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/r$a;->b:Ln3/m0/c0/t/r;

    iput-object p2, p0, Ln3/m0/c0/t/r$a;->a:Ln3/m0/c0/t/w/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/r$a;->a:Ln3/m0/c0/t/w/c;

    iget-object v1, p0, Ln3/m0/c0/t/r$a;->b:Ln3/m0/c0/t/r;

    iget-object v1, v1, Ln3/m0/c0/t/r;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/m0/c0/t/w/c;->k(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
