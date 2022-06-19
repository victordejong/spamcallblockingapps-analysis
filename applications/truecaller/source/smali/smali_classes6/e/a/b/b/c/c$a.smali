.class public final Le/a/b/b/c/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public final synthetic b:Le/a/b/b/c/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/b/b/c/c$a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileRowPictureBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/b/b/c/c$a;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/b/b/c/c;Landroid/view/View;)V
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
    iput-object p1, p0, Le/a/b/b/c/c$a;->b:Le/a/b/b/c/c;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Le/a/p5/x0/b;

    new-instance p2, Le/a/b/b/c/c$a$a;

    invoke-direct {p2}, Le/a/b/b/c/c$a$a;-><init>()V

    invoke-direct {p1, p2}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/b/b/c/c$a;->a:Le/a/p5/x0/b;

    .line 4
    invoke-virtual {p0}, Le/a/b/b/c/c$a;->N4()Le/a/b/m/c0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/c0;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/b/m/c0;
    .locals 3

    iget-object v0, p0, Le/a/b/b/c/c$a;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/b/b/c/c$a;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/b/m/c0;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/b/b/c/c$a;->b:Le/a/b/b/c/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    .line 2
    iget-object p1, p1, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/b/b/c/c$a;->b:Le/a/b/b/c/c;

    .line 5
    iget-object p1, p1, Le/a/b/b/c/c;->b:Le/a/b/b/c/t;

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/b/b/c/t;->h9(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/b/b/c/c$a;->b:Le/a/b/b/c/c;

    .line 8
    iget-object v0, p1, Le/a/b/b/c/c;->b:Le/a/b/b/c/t;

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    .line 10
    iget-object p1, p1, Le/a/b/b/c/c;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    invoke-interface {v0, p1}, Le/a/b/b/c/t;->S(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
