.class public final Ln3/m0/c0/t/w/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/t/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Ln3/m0/c0/t/w/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/t/w/a<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/w/a;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/c0/t/w/a<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/w/a$g;->a:Ln3/m0/c0/t/w/a;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/t/w/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/w/a$g;->a:Ln3/m0/c0/t/w/a;

    iget-object v0, v0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/m0/c0/t/w/a$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Ln3/m0/c0/t/w/a;->e(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Ln3/m0/c0/t/w/a;->f:Ln3/m0/c0/t/w/a$b;

    iget-object v2, p0, Ln3/m0/c0/t/w/a$g;->a:Ln3/m0/c0/t/w/a;

    invoke-virtual {v1, v2, p0, v0}, Ln3/m0/c0/t/w/a$b;->b(Ln3/m0/c0/t/w/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/m0/c0/t/w/a$g;->a:Ln3/m0/c0/t/w/a;

    invoke-static {v0}, Ln3/m0/c0/t/w/a;->b(Ln3/m0/c0/t/w/a;)V

    :cond_1
    return-void
.end method
