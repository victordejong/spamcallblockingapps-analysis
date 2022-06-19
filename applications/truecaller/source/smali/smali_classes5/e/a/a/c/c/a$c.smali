.class public final Le/a/a/c/c/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/c/a;->sb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/c/a;


# direct methods
.method public constructor <init>(Le/a/a/c/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/a$c;->a:Le/a/a/c/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 13

    .line 1
    iget-object p1, p0, Le/a/a/c/c/a$c;->a:Le/a/a/c/c/a;

    .line 2
    iget-object p1, p1, Le/a/a/c/c/a;->l:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const/4 v1, 0x1

    new-array v2, v1, [Le/a/b0/a/w/d;

    const/4 v3, 0x0

    .line 4
    new-instance v12, Le/a/b0/a/w/d;

    const/4 v5, 0x0

    const v6, 0x7f080634

    const v7, 0x7f120ef2

    .line 5
    iget-object v4, p0, Le/a/a/c/c/a$c;->a:Le/a/a/c/c/a;

    .line 6
    iget-object v4, v4, Le/a/a/c/c/a;->f:Le/a/p5/h0;

    const-string v8, "resourceProvider"

    if-eqz v4, :cond_1

    const v9, 0x7f060615

    .line 7
    invoke-interface {v4, v9}, Le/a/p5/c0;->a(I)I

    move-result v9

    const/4 v10, 0x0

    .line 8
    iget-object v4, p0, Le/a/a/c/c/a$c;->a:Le/a/a/c/c/a;

    .line 9
    iget-object v4, v4, Le/a/a/c/c/a;->f:Le/a/p5/h0;

    if-eqz v4, :cond_0

    const v0, 0x7f040673

    .line 10
    invoke-interface {v4, v0}, Le/a/p5/h0;->l(I)I

    move-result v0

    const/16 v11, 0x10

    move-object v4, v12

    move v8, v9

    move-object v9, v10

    move v10, v0

    .line 11
    invoke-direct/range {v4 .. v11}, Le/a/b0/a/w/d;-><init>(IIIILandroid/graphics/drawable/Drawable;II)V

    aput-object v12, v2, v3

    .line 12
    invoke-virtual {p1, v2}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->setMenuItems([Le/a/b0/a/w/d;)V

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->d()V

    .line 14
    new-instance v0, Le/a/a/c/c/a$c$a;

    invoke-direct {v0, p0}, Le/a/a/c/c/a$c$a;-><init>(Le/a/a/c/c/a$c;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/fab/FloatingActionButton;->setFabActionListener(Le/a/b0/a/w/a;)V

    return v1

    .line 15
    :cond_0
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    invoke-static {v8}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "fabOptions"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
