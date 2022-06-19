.class public final Le/a/h/f/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/g;->O1(Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/f/g;

.field public final synthetic c:Lcom/truecaller/common/ui/listitem/ListItemX$Action;


# direct methods
.method public constructor <init>(Le/a/h/f/g;Lcom/truecaller/common/ui/listitem/ListItemX$Action;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/g$b;->b:Le/a/h/f/g;

    iput-object p2, p0, Le/a/h/f/g$b;->c:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/h/f/g$b;->b:Le/a/h/f/g;

    iget-object v0, p0, Le/a/h/f/g$b;->c:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    invoke-static {p1, v0}, Le/a/h/f/g;->N4(Le/a/h/f/g;Lcom/truecaller/common/ui/listitem/ListItemX$Action;)Lcom/truecaller/calling/ActionType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/h/f/g$b;->b:Le/a/h/f/g;

    .line 5
    iget-object v0, v0, Le/a/h/f/g;->e:Le/a/o2/m;

    .line 6
    new-instance v7, Le/a/o2/h;

    invoke-virtual {p1}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/h/f/g$b;->b:Le/a/h/f/g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {v0, v7}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 7
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
