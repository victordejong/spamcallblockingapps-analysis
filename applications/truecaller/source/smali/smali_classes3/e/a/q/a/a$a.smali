.class public final Le/a/q/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/q/a/a$a;->a:I

    iput-object p2, p0, Le/a/q/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Le/a/q/a/a$a;->a:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 1
    iget-object v1, v0, Le/a/q/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/a;

    .line 2
    iget-object v4, v1, Le/a/q/a/a;->e:Le/a/q/a/e;

    if-eqz v4, :cond_3

    .line 3
    iget-object v1, v1, Le/a/q/a/a;->j:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 4
    iget-object v1, v0, Le/a/q/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/a;

    .line 5
    iget-object v1, v1, Le/a/q/a/a;->h:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v5, "nameText"

    .line 6
    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_0

    move-object v3, v1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    move-object v10, v1

    .line 8
    iget-object v1, v0, Le/a/q/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/a;

    .line 9
    iget-object v1, v1, Le/a/q/a/a;->f:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const-string v3, "businessButton"

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    move v11, v2

    .line 11
    iget-object v1, v0, Le/a/q/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/a;

    .line 12
    iget-object v1, v1, Le/a/q/a/a;->k:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 13
    move-object v1, v4

    check-cast v1, Le/a/q/a/h;

    const-string v2, "suggestedName"

    .line 14
    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "analyticsContext"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v13, v1, Le/a/q/a/h;->e:Ls1/w/f;

    new-instance v15, Le/a/q/a/g;

    const/4 v12, 0x0

    move-object v5, v15

    move-object v6, v1

    invoke-direct/range {v5 .. v12}, Le/a/q/a/g;-><init>(Le/a/q/a/h;JLjava/lang/String;Ljava/lang/String;ILs1/w/d;)V

    const/4 v14, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v12, v1

    invoke-static/range {v12 .. v17}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_3
    const-string v1, "presenter"

    .line 16
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 17
    :cond_4
    throw v3

    .line 18
    :cond_5
    iget-object v1, v0, Le/a/q/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/a;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
