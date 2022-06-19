.class public final Le/a/o2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<View:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/a/o2/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/p<",
            "TView;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Landroid/view/ViewGroup;",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/o2/p;ILs1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o2/p<",
            "-TView;>;I",
            "Ls1/z/b/l<",
            "-",
            "Landroid/view/ViewGroup;",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewConstructor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o2/n;->a:Le/a/o2/p;

    iput p2, p0, Le/a/o2/n;->b:I

    iput-object p3, p0, Le/a/o2/n;->c:Ls1/z/b/l;

    return-void
.end method
