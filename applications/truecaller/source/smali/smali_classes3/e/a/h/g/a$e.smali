.class public final Le/a/h/g/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/a;->q(Z)V
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
.field public final synthetic b:Le/a/h/g/a;


# direct methods
.method public constructor <init>(Le/a/h/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/a$e;->b:Le/a/h/g/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/h/g/a$e;->b:Le/a/h/g/a;

    .line 4
    iget-object p1, p1, Le/a/h/g/a;->h:Le/a/o2/m;

    .line 5
    new-instance v6, Le/a/o2/h;

    sget-object v0, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    invoke-virtual {v0}, Lcom/truecaller/calling/ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Le/a/h/g/a$e;->b:Le/a/h/g/a;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "this.itemView"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
