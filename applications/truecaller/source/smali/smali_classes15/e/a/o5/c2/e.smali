.class public Le/a/o5/c2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ln3/b/a/g;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Le/a/o5/c2/k$b;


# direct methods
.method public constructor <init>(Ln3/b/a/g;Landroid/app/Activity;Le/a/o5/c2/k$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/o5/c2/e;->a:Ln3/b/a/g;

    iput-object p2, p0, Le/a/o5/c2/e;->b:Landroid/app/Activity;

    iput-object p3, p0, Le/a/o5/c2/e;->c:Le/a/o5/c2/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/o5/c2/e;->a:Ln3/b/a/g;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    .line 2
    iget-object p1, p0, Le/a/o5/c2/e;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object p4, p0, Le/a/o5/c2/e;->c:Le/a/o5/c2/k$b;

    iget p4, p4, Le/a/o5/c2/k$b;->f:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    const/4 p5, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "smsto"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "https"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "http"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "sms"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    const/4 p5, 0x0

    :goto_0
    packed-switch p5, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Le/a/b0/q/t;->f(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 7
    :pswitch_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 8
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.SENDTO"

    invoke-direct {p4, p5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    invoke-static {p1, p4}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 10
    :goto_1
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object p1

    new-instance p2, Le/a/q2/g$b;

    const-string p4, "CARRIER_Menu_Item_Selected"

    invoke-direct {p2, p4}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string p4, "Position"

    .line 11
    invoke-virtual {p2, p4, p3}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    iget-object p3, p0, Le/a/o5/c2/e;->c:Le/a/o5/c2/k$b;

    iget-object p3, p3, Le/a/o5/c2/k$b;->a:Ljava/lang/String;

    const-string p4, "Partner"

    .line 12
    invoke-virtual {p2, p4, p3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 13
    invoke-virtual {p2}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p2

    .line 14
    invoke-interface {p1, p2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1bd59 -> :sswitch_3
        0x310888 -> :sswitch_2
        0x5f008eb -> :sswitch_1
        0x687d994 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
