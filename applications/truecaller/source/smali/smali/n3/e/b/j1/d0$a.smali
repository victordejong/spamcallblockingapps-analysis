.class public Ln3/e/b/j1/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ln3/e/b/j1/b0$a;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ln3/e/b/j1/d0$b;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/b0$a;Ljava/util/concurrent/Executor;Ln3/e/b/j1/d0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    .line 3
    iput-object p2, p0, Ln3/e/b/j1/d0$a;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Ln3/e/b/j1/d0$a;->c:Ln3/e/b/j1/d0$b;

    return-void
.end method
