.class public final Le/a/a/i/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/i/a;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/i/a$a;->a:I

    iput-object p2, p0, Le/a/a/i/a$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/a/i/a$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Le/a/a/i/a$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/i/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/o2/m;

    new-instance v6, Le/a/o2/h;

    iget-object v0, p0, Le/a/a/i/a$a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Le/a/a/i/a;

    .line 2
    iget-object v3, v2, Le/a/a/i/a;->c:Landroid/view/View;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v1, "ItemEvent.ACTION_DISMISS_OTP"

    move-object v0, v6

    .line 3
    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/a/i/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/o2/m;

    new-instance v6, Le/a/o2/h;

    iget-object v0, p0, Le/a/a/i/a$a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Le/a/a/i/a;

    .line 6
    iget-object v3, v2, Le/a/a/i/a;->c:Landroid/view/View;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v1, "ItemEvent.ACTION_COPY_OTP"

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
