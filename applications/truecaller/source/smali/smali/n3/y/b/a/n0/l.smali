.class public final synthetic Ln3/y/b/a/n0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/n0/n$a;

.field public final b:Ln3/y/b/a/o0/b;


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/n$a;Ln3/y/b/a/o0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/n0/l;->a:Ln3/y/b/a/n0/n$a;

    iput-object p2, p0, Ln3/y/b/a/n0/l;->b:Ln3/y/b/a/o0/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/n0/l;->a:Ln3/y/b/a/n0/n$a;

    iget-object v1, p0, Ln3/y/b/a/n0/l;->b:Ln3/y/b/a/o0/b;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    monitor-enter v1

    .line 3
    monitor-exit v1

    .line 4
    iget-object v0, v0, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    invoke-interface {v0, v1}, Ln3/y/b/a/n0/n;->y(Ln3/y/b/a/o0/b;)V

    return-void
.end method
