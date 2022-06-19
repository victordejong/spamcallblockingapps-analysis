.class public final Le/a/a/h/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/q;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/q;


# direct methods
.method public constructor <init>(Le/a/a/h/q;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/q$a;->a:Le/a/a/h/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v2, p0, Le/a/a/h/q$a;->a:Le/a/a/h/q;

    .line 2
    iget-object p1, v2, Le/a/a/h/q;->g:Le/a/o2/m;

    .line 3
    new-instance v6, Le/a/o2/h;

    .line 4
    iget-object v3, v2, Le/a/a/h/q;->d:Landroid/view/View;

    const-string v1, "ItemEvent.ImGroupParticipantItemMvp.MESSAGE"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    .line 5
    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
