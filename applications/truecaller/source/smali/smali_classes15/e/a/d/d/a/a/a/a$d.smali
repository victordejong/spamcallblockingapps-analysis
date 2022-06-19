.class public final Le/a/d/d/a/a/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/a/a/a;-><init>(Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/d/a/a/a/a;


# direct methods
.method public constructor <init>(Le/a/d/d/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/a/a/a$d;->a:Le/a/d/d/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/d/d/a/a/a/a$d;->a:Le/a/d/d/a/a/a/a;

    .line 2
    iget-object p1, p1, Le/a/d/d/a/a/a/a;->k:Le/a/o2/m;

    .line 3
    new-instance v0, Le/a/o2/h;

    .line 4
    sget-object v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_ITEM_CLICK:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/d/d/a/a/a/a$d;->a:Le/a/d/d/a/a/a/a;

    .line 6
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v4, "this@VoipContactsItemView.itemView"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1, v0}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
