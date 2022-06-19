.class public final Lp3/a/l$b;
.super Lp3/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lp3/a/b$b;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lp3/a/b$a;

.field public final d:Lp3/a/q;

.field public final synthetic e:Lp3/a/l;


# direct methods
.method public constructor <init>(Lp3/a/l;Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;Lp3/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/l$b;->e:Lp3/a/l;

    invoke-direct {p0}, Lp3/a/b$a;-><init>()V

    .line 2
    iput-object p2, p0, Lp3/a/l$b;->a:Lp3/a/b$b;

    .line 3
    iput-object p3, p0, Lp3/a/l$b;->b:Ljava/util/concurrent/Executor;

    const-string p1, "delegate"

    .line 4
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/l$b;->c:Lp3/a/b$a;

    const-string p1, "context"

    .line 5
    invoke-static {p5, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lp3/a/l$b;->d:Lp3/a/q;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/o0;)V
    .locals 6

    const-string v0, "headers"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp3/a/l$b;->d:Lp3/a/q;

    invoke-virtual {v0}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lp3/a/l$b;->e:Lp3/a/l;

    .line 4
    iget-object v1, v1, Lp3/a/l;->b:Lp3/a/b;

    .line 5
    iget-object v2, p0, Lp3/a/l$b;->a:Lp3/a/b$b;

    iget-object v3, p0, Lp3/a/l$b;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lp3/a/l$a;

    iget-object v5, p0, Lp3/a/l$b;->c:Lp3/a/b$a;

    invoke-direct {v4, v5, p1}, Lp3/a/l$a;-><init>(Lp3/a/b$a;Lp3/a/o0;)V

    invoke-virtual {v1, v2, v3, v4}, Lp3/a/b;->a(Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lp3/a/l$b;->d:Lp3/a/q;

    invoke-virtual {p1, v0}, Lp3/a/q;->q(Lp3/a/q;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lp3/a/l$b;->d:Lp3/a/q;

    invoke-virtual {v1, v0}, Lp3/a/q;->q(Lp3/a/q;)V

    throw p1
.end method
