.class public final Lcom/truecaller/details_view/DetailsViewActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/DetailsViewActivity;->p2(Ljava/lang/String;)V
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

    iput p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$a;->a:I

    iput-object p2, p0, Lcom/truecaller/details_view/DetailsViewActivity$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$a;->a:I

    const-string p2, "presenter"

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1
    iget-object p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/details_view/DetailsViewActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/details_view/DetailsViewActivity;->d:Le/a/v/g;

    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Le/a/v/b;

    .line 4
    iget-object p2, p1, Le/a/v/b;->l:Le/a/l/t2/d;

    invoke-virtual {p2}, Le/a/l/t2/d;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/v/h;->y7()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p1, Le/a/v/b;->m:Le/a/e0/c;

    check-cast p2, Le/a/g/j/m0;

    invoke-virtual {p2}, Le/a/g/j/m0;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Le/a/v/b;->Kj()V

    :cond_1
    :goto_0
    return-void

    .line 6
    :cond_2
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_3
    throw v0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/truecaller/details_view/DetailsViewActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/details_view/DetailsViewActivity;

    .line 9
    iget-object p1, p1, Lcom/truecaller/details_view/DetailsViewActivity;->d:Le/a/v/g;

    if-eqz p1, :cond_6

    .line 10
    check-cast p1, Le/a/v/b;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/h;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/v/h;->K1()V

    :cond_5
    return-void

    .line 12
    :cond_6
    invoke-static {p2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
