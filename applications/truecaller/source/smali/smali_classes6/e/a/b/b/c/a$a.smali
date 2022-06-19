.class public final Le/a/b/b/c/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public final synthetic b:Le/a/b/b/c/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/b/b/c/a$a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileRowColorBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/b/b/c/a$a;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/b/b/c/a;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/b/c/a$a;->b:Le/a/b/b/c/a;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Le/a/p5/x0/b;

    new-instance p2, Le/a/b/b/c/a$a$a;

    invoke-direct {p2}, Le/a/b/b/c/a$a$a;-><init>()V

    invoke-direct {p1, p2}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/b/b/c/a$a;->a:Le/a/p5/x0/b;

    .line 4
    sget-object p2, Le/a/b/b/c/a$a;->c:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/b/m/a0;

    .line 5
    iget-object p1, p1, Le/a/b/m/a0;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/b/b/c/a$a;->b:Le/a/b/b/c/a;

    .line 2
    iget-object p1, p1, Le/a/b/b/c/a;->b:Le/a/b/b/c/g;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    .line 4
    sget-object v1, Le/a/b/b/c/b;->a:Ljava/util/List;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-interface {p1, v0}, Le/a/b/b/c/g;->f6(Ljava/lang/String;)V

    return-void
.end method
