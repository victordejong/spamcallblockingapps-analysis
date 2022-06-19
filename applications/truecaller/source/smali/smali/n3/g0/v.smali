.class public Ln3/g0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Landroid/view/View;",
            "Ln3/g0/u;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    iput-object v0, p0, Ln3/g0/v;->a:Ln3/g/a;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln3/g0/v;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ln3/g/e;

    const/16 v1, 0xa

    .line 5
    invoke-direct {v0, v1}, Ln3/g/e;-><init>(I)V

    .line 6
    iput-object v0, p0, Ln3/g0/v;->c:Ln3/g/e;

    .line 7
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    iput-object v0, p0, Ln3/g0/v;->d:Ln3/g/a;

    return-void
.end method
