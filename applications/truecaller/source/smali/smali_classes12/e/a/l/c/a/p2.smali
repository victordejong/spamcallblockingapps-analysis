.class public final Le/a/l/c/a/p2;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/c/a/p2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/l/c/a/p2$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:[Ls1/a/l;


# instance fields
.field public final a:Ls1/b0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/l/c/a/p2;

    const-string v2, "items"

    const-string v3, "getItems()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/l/c/a/p2;->b:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 3
    new-instance v1, Le/a/l/c/a/p2$a;

    invoke-direct {v1, v0, v0, p0}, Le/a/l/c/a/p2$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/l/c/a/p2;)V

    .line 4
    iput-object v1, p0, Le/a/l/c/a/p2;->a:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/a/p2;->a:Ls1/b0/c;

    sget-object v1, Le/a/l/c/a/p2;->b:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/l/c/a/p2$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/c/a/p2;->a:Ls1/b0/c;

    sget-object v1, Le/a/l/c/a/p2;->b:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/c/a/o2;

    .line 5
    iget-object v0, p1, Le/a/l/c/a/p2$b;->a:Le/a/b0/a/b/a;

    .line 6
    iget-object v1, p2, Le/a/l/c/a/o2;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 8
    iget-object v0, p1, Le/a/l/c/a/p2$b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 9
    iget-object v1, p2, Le/a/l/c/a/o2;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p1, Le/a/l/c/a/p2$b;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 12
    iget-object p2, p2, Le/a/l/c/a/o2;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d035b

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Le/a/l/c/a/p2$b;

    .line 5
    invoke-direct {p2, p1}, Le/a/l/c/a/p2$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
