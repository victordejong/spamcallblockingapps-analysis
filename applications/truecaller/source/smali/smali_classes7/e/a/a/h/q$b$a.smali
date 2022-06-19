.class public final Le/a/a/h/q$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/q$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/q$b;


# direct methods
.method public constructor <init>(Le/a/a/h/q$b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/q$b$a;->a:Le/a/a/h/q$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "item"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const-string p1, "ItemEvent.ImGroupParticipantItemMvp.VIEW_PROFILE"

    goto :goto_0

    :sswitch_1
    const-string p1, "ItemEvent.ImGroupParticipantItemMvp.REMOVE"

    goto :goto_0

    :sswitch_2
    const-string p1, "ItemEvent.ImGroupParticipantItemMvp.MAKE_ADMIN"

    goto :goto_0

    :sswitch_3
    const-string p1, "ItemEvent.ImGroupParticipantItemMvp.DISMISS_ADMIN"

    :goto_0
    move-object v1, p1

    .line 2
    iget-object p1, p0, Le/a/a/h/q$b$a;->a:Le/a/a/h/q$b;

    iget-object v2, p1, Le/a/a/h/q$b;->a:Le/a/a/h/q;

    .line 3
    iget-object p1, v2, Le/a/a/h/q;->g:Le/a/o2/m;

    .line 4
    new-instance v6, Le/a/o2/h;

    .line 5
    iget-object v3, v2, Le/a/a/h/q;->e:Landroid/view/View;

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    .line 6
    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ae -> :sswitch_3
        0x7f0a00bf -> :sswitch_2
        0x7f0a00da -> :sswitch_1
        0x7f0a00f4 -> :sswitch_0
    .end sparse-switch
.end method
