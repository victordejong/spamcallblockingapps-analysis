.class public final Le/a/v/a/i0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/v/a/i0/a;

.field public final synthetic b:Lcom/truecaller/details_view/ui/numbers/SimData;


# direct methods
.method public constructor <init>(Le/a/v/a/i0/a;Lcom/truecaller/details_view/ui/numbers/SimData;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/i0/g;->a:Le/a/v/a/i0/a;

    iput-object p2, p0, Le/a/v/a/i0/g;->b:Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/v/a/i0/g;->a:Le/a/v/a/i0/a;

    .line 2
    iget-object p1, p1, Le/a/v/a/i0/a;->f:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/v/a/i0/g;->b:Lcom/truecaller/details_view/ui/numbers/SimData;

    invoke-virtual {v0}, Lcom/truecaller/details_view/ui/numbers/SimData;->getSlot()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
