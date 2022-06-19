.class public Ln3/m0/c0/t/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/j;


# instance fields
.field public final a:Ln3/m0/c0/t/x/a;

.field public final b:Ln3/m0/c0/r/a;

.field public final c:Ln3/m0/c0/s/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Ln3/m0/c0/r/a;Ln3/m0/c0/t/x/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/m0/c0/t/s;->b:Ln3/m0/c0/r/a;

    .line 3
    iput-object p3, p0, Ln3/m0/c0/t/s;->a:Ln3/m0/c0/t/x/a;

    .line 4
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object p1

    iput-object p1, p0, Ln3/m0/c0/t/s;->c:Ln3/m0/c0/s/q;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/UUID;Ln3/m0/i;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ln3/m0/i;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Ln3/m0/c0/t/w/c;

    invoke-direct {v6}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 2
    iget-object v7, p0, Ln3/m0/c0/t/s;->a:Ln3/m0/c0/t/x/a;

    new-instance v8, Ln3/m0/c0/t/s$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ln3/m0/c0/t/s$a;-><init>(Ln3/m0/c0/t/s;Ln3/m0/c0/t/w/c;Ljava/util/UUID;Ln3/m0/i;Landroid/content/Context;)V

    check-cast v7, Ln3/m0/c0/t/x/b;

    .line 3
    iget-object p1, v7, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {p1, v8}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    return-object v6
.end method
