.class public final Lb0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb0;->a:I

    iput-object p2, p0, Lb0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lb0;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lb0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/n/h;

    .line 2
    sget v0, Le/a/e/b/n/h;->Q:I

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "https://support.truecaller.com/hc/en-us/sections/115000753845-Messaging"

    invoke-static {p1, v1, v0}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Lb0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/n/h;

    invoke-virtual {p1}, Le/a/e/b/n/h;->OA()Le/a/e/b/n/j;

    move-result-object p1

    invoke-interface {p1}, Le/a/e/b/n/j;->O9()V

    return-void
.end method
