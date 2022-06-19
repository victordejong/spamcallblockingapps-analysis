.class public final synthetic Le/a/e/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/l1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/i;->a:Le/a/e/c/l1;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3

    iget-object v0, p0, Le/a/e/c/i;->a:Le/a/e/c/l1;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    check-cast v1, Ln3/b/a/h;

    .line 2
    iget-object v2, v0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ln3/b/a/h;->startSupportActionMode(Ln3/b/e/a$a;)Ln3/b/e/a;

    move-result-object v1

    iput-object v1, v0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    const/4 p1, 0x1

    return p1
.end method
