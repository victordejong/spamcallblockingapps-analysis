.class public final Ln3/e/b/j1/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/j1/g0$a;,
        Ln3/e/b/j1/g0$b;
    }
.end annotation


# static fields
.field public static final g:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/e/b/j1/j0;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/q;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Ln3/e/b/j1/o1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.captureConfig.rotation"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/j1/g0;->g:Ln3/e/b/j1/j0$a;

    .line 4
    const-class v0, Ljava/lang/Integer;

    .line 5
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.captureConfig.jpegQuality"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Ln3/e/b/j1/g0;->h:Ln3/e/b/j1/j0$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ln3/e/b/j1/j0;ILjava/util/List;ZLn3/e/b/j1/o1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;",
            "Ln3/e/b/j1/j0;",
            "I",
            "Ljava/util/List<",
            "Ln3/e/b/j1/q;",
            ">;Z",
            "Ln3/e/b/j1/o1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/j1/g0;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Ln3/e/b/j1/g0;->b:Ln3/e/b/j1/j0;

    .line 4
    iput p3, p0, Ln3/e/b/j1/g0;->c:I

    .line 5
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 6
    iput-boolean p5, p0, Ln3/e/b/j1/g0;->e:Z

    .line 7
    iput-object p6, p0, Ln3/e/b/j1/g0;->f:Ln3/e/b/j1/o1;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/e/b/j1/k0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/g0;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
