.class public final Ln3/c/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Ln3/c/a/a/a;->d()Ln3/c/a/a/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/c/a/a/a;->a:Ln3/c/a/a/c;

    invoke-virtual {v0, p1}, Ln3/c/a/a/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method
