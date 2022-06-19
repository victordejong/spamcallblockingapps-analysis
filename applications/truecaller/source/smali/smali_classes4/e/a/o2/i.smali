.class public final Le/a/o2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/o2/m;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/recyclerview/widget/RecyclerView$c0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Le/a/o2/i;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/o2/i;->b:Le/a/o2/m;

    iput-object p3, p0, Le/a/o2/i;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/o2/i;->d:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p5, p0, Le/a/o2/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/o2/i;->b:Le/a/o2/m;

    new-instance v0, Le/a/o2/h;

    iget-object v1, p0, Le/a/o2/i;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/o2/i;->d:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v3, p0, Le/a/o2/i;->a:Landroid/view/View;

    iget-object v4, p0, Le/a/o2/i;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
