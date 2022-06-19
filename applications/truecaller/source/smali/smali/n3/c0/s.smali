.class public final Ln3/c0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lq3/a/p1;


# direct methods
.method public constructor <init>(Lq3/a/n;Ljava/util/concurrent/Executor;Lq3/a/p1;)V
    .locals 0

    iput-object p1, p0, Ln3/c0/s;->a:Lq3/a/n;

    iput-object p2, p0, Ln3/c0/s;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ln3/c0/s;->c:Lq3/a/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ln3/c0/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln3/c0/s$a;-><init>(Ln3/c0/s;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
