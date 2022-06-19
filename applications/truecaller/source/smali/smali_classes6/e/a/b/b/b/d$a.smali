.class public final Le/a/b/b/b/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public final synthetic b:Le/a/b/b/b/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/b/b/b/d$a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileRowOpenHourBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/b/b/b/d$a;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/b/b/b/d;Landroid/view/View;)V
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
    iput-object p1, p0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Le/a/p5/x0/b;

    new-instance p2, Le/a/b/b/b/d$a$a;

    invoke-direct {p2}, Le/a/b/b/b/d$a$a;-><init>()V

    invoke-direct {p1, p2}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/b/b/b/d$a;->a:Le/a/p5/x0/b;

    .line 4
    invoke-virtual {p0}, Le/a/b/b/b/d$a;->N4()Le/a/b/m/b0;

    move-result-object p1

    .line 5
    iget-object p2, p1, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object p2, p1, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object p2, p1, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    iget-object p1, p1, Le/a/b/m/b0;->d:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/b/m/b0;
    .locals 3

    iget-object v0, p0, Le/a/b/b/b/d$a;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/b/b/b/d$a;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/b/m/b0;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b/b/b/d$a;->N4()Le/a/b/m/b0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/b0;->d:Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 2
    iget-object p1, p1, Le/a/b/b/b/d;->f:Le/a/b/b/b/c;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/b/b/b/c;->Vp(I)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b/b/b/d$a;->N4()Le/a/b/m/b0;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 3
    iget-object p2, v0, Le/a/b/m/b0;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 4
    iget-object p1, p1, Le/a/b/b/b/d;->f:Le/a/b/b/b/c;

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/b/b/b/c;->Qa(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, v0, Le/a/b/m/b0;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 7
    iget-object p1, p1, Le/a/b/b/b/d;->f:Le/a/b/b/b/c;

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/b/b/b/c;->Xd(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, v0, Le/a/b/m/b0;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/b/b/b/d$a;->b:Le/a/b/b/b/d;

    .line 10
    iget-object p1, p1, Le/a/b/b/b/d;->f:Le/a/b/b/b/c;

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/b/b/b/c;->Ps(I)V

    :cond_2
    :goto_0
    return v1
.end method
