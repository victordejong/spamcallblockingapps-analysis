.class public final Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "Ln3/m0/x;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/y2/g;

.field public final synthetic b:Lcom/truecaller/util/background/qa/WorkActionStatusActivity;

.field public final synthetic c:Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;


# direct methods
.method public constructor <init>(Le/a/y2/g;Lcom/truecaller/util/background/qa/WorkActionStatusActivity;Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;->a:Le/a/y2/g;

    iput-object p2, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;->b:Lcom/truecaller/util/background/qa/WorkActionStatusActivity;

    iput-object p3, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;->c:Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;->b:Lcom/truecaller/util/background/qa/WorkActionStatusActivity;

    .line 3
    iget-object v0, v0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity;->d:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;->a:Le/a/y2/g;

    const-string v2, "infoList"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/truecaller/util/background/qa/WorkActionStatusActivity$d;->c:Lcom/truecaller/util/background/qa/WorkActionStatusActivity$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
