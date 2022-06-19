.class public interface abstract Ln3/e/b/j1/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/k1/f;
.implements Ln3/e/b/k1/i;
.implements Ln3/e/b/j1/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/j1/r1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ln3/e/b/g1;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/e/b/k1/f<",
        "TT;>;",
        "Ln3/e/b/k1/i;",
        "Ln3/e/b/j1/o0;"
    }
.end annotation


# static fields
.field public static final h:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/j1;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/g0;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/j1$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/g0$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/m0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ln3/e/b/j1/j1;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.useCase.defaultSessionConfig"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/j1/r1;->h:Ln3/e/b/j1/j0$a;

    .line 4
    const-class v0, Ln3/e/b/j1/g0;

    .line 5
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.useCase.defaultCaptureConfig"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Ln3/e/b/j1/r1;->i:Ln3/e/b/j1/j0$a;

    .line 7
    const-class v0, Ln3/e/b/j1/j1$d;

    .line 8
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.useCase.sessionConfigUnpacker"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Ln3/e/b/j1/r1;->j:Ln3/e/b/j1/j0$a;

    .line 10
    const-class v0, Ln3/e/b/j1/g0$b;

    .line 11
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.useCase.captureConfigUnpacker"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Ln3/e/b/j1/r1;->k:Ln3/e/b/j1/j0$a;

    .line 13
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.useCase.surfaceOccupancyPriority"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Ln3/e/b/j1/r1;->l:Ln3/e/b/j1/j0$a;

    .line 16
    const-class v0, Ln3/e/b/m0;

    .line 17
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.useCase.cameraSelector"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Ln3/e/b/j1/r1;->m:Ln3/e/b/j1/j0$a;

    return-void
.end method


# virtual methods
.method public abstract i(Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;
.end method

.method public abstract m(I)I
.end method

.method public abstract t(Ln3/e/b/m0;)Ln3/e/b/m0;
.end method

.method public abstract v(Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;
.end method
