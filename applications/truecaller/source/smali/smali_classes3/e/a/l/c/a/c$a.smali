.class public final Le/a/l/c/a/c$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/c;-><init>(Landroid/view/View;Le/a/o2/m;)V
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

    iput p1, p0, Le/a/l/c/a/c$a;->a:I

    iput-object p2, p0, Le/a/l/c/a/c$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/l/c/a/c$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Le/a/l/c/a/c$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/l/c/a/c$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/o2/m;

    .line 2
    new-instance v0, Le/a/o2/h;

    .line 3
    iget-object v1, p0, Le/a/l/c/a/c$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/a/c;

    .line 4
    invoke-virtual {v1}, Le/a/l/c/a/c;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v2

    const-string v3, "announceCallerIdSwitch"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Le/a/l/c/a/c$a;->b:Ljava/lang/Object;

    check-cast v3, Le/a/l/c/a/c;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ItemEvent.ANNOUNCE_CALLER_ID_SWITCH_ACTION"

    .line 7
    invoke-direct {v0, v4, v1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1, v0}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    .line 10
    :cond_1
    iget-object p1, p0, Le/a/l/c/a/c$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/o2/m;

    .line 11
    new-instance v0, Le/a/o2/h;

    .line 12
    iget-object v1, p0, Le/a/l/c/a/c$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/c/a/c;

    .line 13
    iget-object v2, v1, Le/a/l/c/a/c;->e:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "openMoreSettings"

    .line 14
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Le/a/l/c/a/c$a;->b:Ljava/lang/Object;

    check-cast v3, Le/a/l/c/a/c;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ItemEvent.ANNOUNCE_CALLER_ID_OPEN_MORE_SETTINGS_ACTION"

    .line 16
    invoke-direct {v0, v4, v1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    .line 17
    invoke-interface {p1, v0}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
