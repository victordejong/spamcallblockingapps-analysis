.class public final Le/a/g5/e0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Le/a/g5/e0/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/e0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/o;->a:Le/a/g5/e0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/a/g5/e0/d;

    .line 2
    iget-object v0, p1, Le/a/g5/e0/d;->b:Le/a/b0/p/c;

    if-eqz v0, :cond_0

    .line 3
    iget-wide v1, v0, Le/a/b0/p/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Le/a/g5/e0/o;->a:Le/a/g5/e0/i;

    .line 5
    sget-object v2, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 6
    invoke-virtual {v1}, Le/a/g5/e0/i;->TA()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    move-result-object v1

    .line 7
    iget-wide v2, v0, Le/a/b0/p/c;->c:J

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->d(J)Le/a/b0/p/c;

    move-result-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Le/a/g5/e0/o;->a:Le/a/g5/e0/i;

    .line 10
    sget-object v2, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 11
    invoke-virtual {v1}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    .line 12
    iget-object v3, v1, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    const-string v4, "tagContainerLevel1"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object v3, v1, Le/a/g5/d0/b;->f:Landroid/widget/LinearLayout;

    const-string v4, "llHeaderTwo"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v3, v1, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    const-string v5, "tagContainerLevel2"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object v3, p0, Le/a/g5/e0/o;->a:Le/a/g5/e0/i;

    .line 16
    iget-wide v5, v0, Le/a/b0/p/c;->a:J

    const/4 v8, 0x1

    .line 17
    invoke-virtual {v3}, Le/a/g5/e0/i;->TA()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    invoke-static/range {v4 .. v9}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c(Lcom/truecaller/tagger/tagPicker/TaggerViewModel;JLjava/lang/String;ZI)V

    .line 18
    iget-object v0, v1, Le/a/g5/d0/b;->l:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/tagger/R$string;->TagsChooserEditTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, v1, Le/a/g5/d0/b;->l:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/tagger/R$string;->TagsChooserChildTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    :goto_0
    iget p1, p1, Le/a/g5/e0/d;->a:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    iget-object p1, p0, Le/a/g5/e0/o;->a:Le/a/g5/e0/i;

    .line 22
    invoke-virtual {p1}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object p1

    .line 23
    iget-object v0, p1, Le/a/g5/d0/b;->n:Landroid/widget/TextView;

    const-string v1, "titleFirstLine"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p1, Le/a/g5/d0/b;->o:Landroid/widget/TextView;

    const-string v0, "titleSecondLine"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
