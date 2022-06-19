.class public Le/a/a/c/r8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/a/a/c/r8/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Le/a/a/c/r8/c;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/r8/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/r8/d;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Le/a/a/c/r8/d;->c()Le/a/a/c/r8/c;

    move-result-object v0

    .line 4
    iget-object v1, v0, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const v2, 0x7f0a1148

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method
