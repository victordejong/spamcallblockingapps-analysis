.class public Ln3/v/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/v/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/v/c0;

.field public final b:Ln3/v/u$a;

.field public c:Z


# direct methods
.method public constructor <init>(Ln3/v/c0;Ln3/v/u$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/v/u0$a;->c:Z

    .line 3
    iput-object p1, p0, Ln3/v/u0$a;->a:Ln3/v/c0;

    .line 4
    iput-object p2, p0, Ln3/v/u0$a;->b:Ln3/v/u$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/v/u0$a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/v/u0$a;->a:Ln3/v/c0;

    iget-object v1, p0, Ln3/v/u0$a;->b:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/v/u0$a;->c:Z

    :cond_0
    return-void
.end method
