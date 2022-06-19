.class public final Le/a/a/d/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/views/Switch;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/d/l;


# direct methods
.method public constructor <init>(Le/a/a/d/l;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/k;->b:Le/a/a/d/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/truecaller/messaging/views/Switch;

    const-string v0, "selectedTransport"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/d/k;->b:Le/a/a/d/l;

    .line 4
    iget-object v1, v0, Le/a/a/d/l;->e:Le/a/o2/m;

    .line 5
    new-instance v2, Le/a/o2/h;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ItemEvent.CHANGE_TRANSPORT"

    invoke-direct {v2, v4, v0, v3, p1}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
