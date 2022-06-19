.class public Ln3/m0/c0/t/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ln3/m0/c0/l;

.field public b:Ljava/lang/String;

.field public c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Ln3/m0/c0/l;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/t/l;->a:Ln3/m0/c0/l;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/t/l;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ln3/m0/c0/t/l;->c:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/l;->a:Ln3/m0/c0/l;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 3
    iget-object v1, p0, Ln3/m0/c0/t/l;->b:Ljava/lang/String;

    iget-object v2, p0, Ln3/m0/c0/t/l;->c:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Ln3/m0/c0/d;->g(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
