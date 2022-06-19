.class Lf/v/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lf/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/a<",
            "Landroid/view/View;",
            "Lf/v/s;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lf/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/d<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lf/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/e/a;

    invoke-direct {v0}, Lf/e/a;-><init>()V

    iput-object v0, p0, Lf/v/t;->a:Lf/e/a;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lf/v/t;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lf/e/d;

    invoke-direct {v0}, Lf/e/d;-><init>()V

    iput-object v0, p0, Lf/v/t;->c:Lf/e/d;

    .line 5
    new-instance v0, Lf/e/a;

    invoke-direct {v0}, Lf/e/a;-><init>()V

    iput-object v0, p0, Lf/v/t;->d:Lf/e/a;

    return-void
.end method
