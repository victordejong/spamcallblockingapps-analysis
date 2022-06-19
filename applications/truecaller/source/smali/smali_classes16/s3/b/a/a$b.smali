.class public Ls3/b/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3/b/a/a;->b(Ljava/io/FileDescriptor;Ljava/lang/String;Ls3/b/a/g/a;Ls3/b/a/a$c;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ls3/b/a/a$c;

.field public final synthetic c:Ljava/io/FileDescriptor;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ls3/b/a/g/a;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ls3/b/a/a;Landroid/os/Handler;Ls3/b/a/a$c;Ljava/io/FileDescriptor;Ljava/lang/String;Ls3/b/a/g/a;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls3/b/a/a$b;->a:Landroid/os/Handler;

    iput-object p3, p0, Ls3/b/a/a$b;->b:Ls3/b/a/a$c;

    iput-object p4, p0, Ls3/b/a/a$b;->c:Ljava/io/FileDescriptor;

    iput-object p5, p0, Ls3/b/a/a$b;->d:Ljava/lang/String;

    iput-object p6, p0, Ls3/b/a/a$b;->e:Ls3/b/a/g/a;

    iput-object p7, p0, Ls3/b/a/a$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ls3/b/a/f/f;

    invoke-direct {v1}, Ls3/b/a/f/f;-><init>()V

    .line 2
    new-instance v2, Ls3/b/a/c;

    invoke-direct {v2, p0}, Ls3/b/a/c;-><init>(Ls3/b/a/a$b;)V

    .line 3
    iput-object v2, v1, Ls3/b/a/f/f;->f:Ls3/b/a/f/f$b;

    .line 4
    iget-object v2, p0, Ls3/b/a/a$b;->c:Ljava/io/FileDescriptor;

    .line 5
    iput-object v2, v1, Ls3/b/a/f/f;->a:Ljava/io/FileDescriptor;

    .line 6
    iget-object v2, p0, Ls3/b/a/a$b;->d:Ljava/lang/String;

    iget-object v3, p0, Ls3/b/a/a$b;->e:Ls3/b/a/g/a;

    invoke-virtual {v1, v2, v3}, Ls3/b/a/f/f;->d(Ljava/lang/String;Ls3/b/a/g/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 7
    iget-object v2, p0, Ls3/b/a/a$b;->c:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    :goto_0
    iget-object v2, p0, Ls3/b/a/a$b;->a:Landroid/os/Handler;

    new-instance v3, Ls3/b/a/d;

    invoke-direct {v3, p0, v1}, Ls3/b/a/d;-><init>(Ls3/b/a/a$b;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    throw v1
.end method
