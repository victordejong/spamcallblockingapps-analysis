.class public final Le/a/v/a/m0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/m0/e;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/m0/e;


# direct methods
.method public constructor <init>(Le/a/v/a/m0/e;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/m0/e$a;->a:Le/a/v/a/m0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/v/a/m0/e$a;->a:Le/a/v/a/m0/e;

    invoke-virtual {p1}, Le/a/v/a/m0/e;->getPresenter()Le/a/v/a/m0/a;

    move-result-object p1

    check-cast p1, Le/a/v/a/m0/d;

    .line 2
    iget-object v0, p1, Le/a/v/a/m0/d;->b:Le/a/v/a/s;

    const-string v1, "detailsViewModel"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "detailsViewModel.contact.tcId ?: return"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p1, Le/a/v/a/m0/d;->b:Le/a/v/a/s;

    if-eqz v3, :cond_1

    .line 6
    iget-object v1, v3, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "detailsViewModel.contact.displayName ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/m0/b;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Le/a/v/a/m0/b;->a0()V

    .line 9
    :cond_0
    iget-object v2, p1, Le/a/v/a/m0/d;->c:Le/a/j3/f;

    .line 10
    new-instance v3, Le/a/v/a/m0/c;

    invoke-direct {v3, p1}, Le/a/v/a/m0/c;-><init>(Le/a/v/a/m0/d;)V

    .line 11
    invoke-interface {v2, v0, v1, v3}, Le/a/j3/f;->c(Ljava/lang/String;Ljava/lang/String;Le/a/j3/f$b;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
