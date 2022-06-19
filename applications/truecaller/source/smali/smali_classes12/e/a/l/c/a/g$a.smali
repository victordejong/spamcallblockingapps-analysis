.class public final Le/a/l/c/a/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/c/a/g;


# direct methods
.method public constructor <init>(Le/a/l/c/a/g;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/g$a;->b:Le/a/l/c/a/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/l/c/a/g$a;->b:Le/a/l/c/a/g;

    .line 2
    iget-object v0, v0, Le/a/l/c/a/g;->b:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    .line 3
    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 4
    iget-object v3, p0, Le/a/l/c/a/g$a;->b:Le/a/l/c/a/g;

    .line 5
    iget-object v0, v3, Le/a/l/c/a/g;->c:Le/a/o2/m;

    if-eqz v0, :cond_0

    .line 6
    new-instance v7, Le/a/o2/h;

    .line 7
    iget-object v4, v3, Le/a/l/c/a/g;->b:Lcom/truecaller/premium/ui/subscription/cardlabel/CardNewFeatureLabelView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v2, "ItemEvent.NEW_FEATURE_LABEL_DISMISSED"

    move-object v1, v7

    .line 8
    invoke-direct/range {v1 .. v6}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {v0, v7}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 9
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
