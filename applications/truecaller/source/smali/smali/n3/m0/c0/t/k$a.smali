.class public Ln3/m0/c0/t/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/t/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/m0/c0/t/k;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ln3/m0/c0/t/k;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/k$a;->a:Ln3/m0/c0/t/k;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/t/k$a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/t/k$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Ln3/m0/c0/t/k$a;->a:Ln3/m0/c0/t/k;

    invoke-virtual {v0}, Ln3/m0/c0/t/k;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln3/m0/c0/t/k$a;->a:Ln3/m0/c0/t/k;

    invoke-virtual {v1}, Ln3/m0/c0/t/k;->a()V

    .line 3
    throw v0
.end method
