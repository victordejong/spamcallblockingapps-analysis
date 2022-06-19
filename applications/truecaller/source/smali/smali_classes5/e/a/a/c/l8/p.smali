.class public final Le/a/a/c/l8/p;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public final b:Landroid/content/Context;

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/c/l8/p;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/GalleryItemBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/c/l8/p;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/p5/x0/b;

    new-instance v1, Le/a/a/c/l8/p$a;

    invoke-direct {v1}, Le/a/a/c/l8/p$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/a/c/l8/p;->a:Le/a/p5/x0/b;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/c/l8/p;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070081

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Le/a/a/c/l8/p;->c:I

    return-void
.end method


# virtual methods
.method public final N4()Le/a/m3/n0;
    .locals 3

    iget-object v0, p0, Le/a/a/c/l8/p;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/a/c/l8/p;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/n0;

    return-object v0
.end method
