.class public final Le/a/a0/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Le/a/a0/a/j;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a0/a/j;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a0/a/g;->a:Le/a/a0/a/j;

    iput-object p2, p0, Le/a/a0/a/g;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a0/a/g;->a:Le/a/a0/a/j;

    iget-object v1, p0, Le/a/a0/a/g;->b:Ljava/util/List;

    const-string v2, "item"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a0/a/m;

    invoke-interface {v0, p1}, Le/a/a0/a/j;->vn(Le/a/a0/a/m;)V

    const/4 p1, 0x1

    return p1
.end method
