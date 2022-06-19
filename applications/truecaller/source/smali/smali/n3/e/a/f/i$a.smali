.class public final Ln3/e/a/f/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ln3/e/a/f/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln3/e/b/j1/a1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v0

    iput-object v0, p0, Ln3/e/a/f/i$a;->a:Ln3/e/b/j1/a1;

    return-void
.end method

.method public static b(Ln3/e/b/j1/j0;)Ln3/e/a/f/i$a;
    .locals 3

    .line 1
    new-instance v0, Ln3/e/a/f/i$a;

    invoke-direct {v0}, Ln3/e/a/f/i$a;-><init>()V

    .line 2
    new-instance v1, Ln3/e/a/f/g;

    invoke-direct {v1, v0, p0}, Ln3/e/a/f/g;-><init>(Ln3/e/a/f/i$a;Ln3/e/b/j1/j0;)V

    const-string v2, "camera2.captureRequest.option."

    invoke-interface {p0, v2, v1}, Ln3/e/b/j1/j0;->j(Ljava/lang/String;Ln3/e/b/j1/j0$b;)V

    return-object v0
.end method


# virtual methods
.method public a()Ln3/e/a/f/i;
    .locals 2

    .line 1
    new-instance v0, Ln3/e/a/f/i;

    iget-object v1, p0, Ln3/e/a/f/i$a;->a:Ln3/e/b/j1/a1;

    invoke-static {v1}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/a/f/i;-><init>(Ln3/e/b/j1/j0;)V

    return-object v0
.end method
