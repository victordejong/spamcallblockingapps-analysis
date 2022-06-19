.class public interface abstract Ln3/e/b/j1/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/i1;


# static fields
.field public static final b:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ln3/e/b/d0;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.imageOutput.targetAspectRatio"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/j1/q0;->b:Ln3/e/b/j1/j0$a;

    .line 4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.imageOutput.targetRotation"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Ln3/e/b/j1/q0;->c:Ln3/e/b/j1/j0$a;

    .line 7
    const-class v0, Landroid/util/Size;

    .line 8
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.imageOutput.targetResolution"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Ln3/e/b/j1/q0;->d:Ln3/e/b/j1/j0$a;

    .line 10
    const-class v0, Landroid/util/Size;

    .line 11
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.imageOutput.defaultResolution"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Ln3/e/b/j1/q0;->e:Ln3/e/b/j1/j0$a;

    .line 13
    const-class v0, Landroid/util/Size;

    .line 14
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.imageOutput.maxResolution"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Ln3/e/b/j1/q0;->f:Ln3/e/b/j1/j0$a;

    .line 16
    const-class v0, Ljava/util/List;

    .line 17
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.imageOutput.supportedResolutions"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Ln3/e/b/j1/q0;->g:Ln3/e/b/j1/j0$a;

    return-void
.end method


# virtual methods
.method public abstract f(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract g(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract n(I)I
.end method

.method public abstract o(Landroid/util/Size;)Landroid/util/Size;
.end method

.method public abstract q()Z
.end method

.method public abstract r()I
.end method

.method public abstract s(Landroid/util/Size;)Landroid/util/Size;
.end method
