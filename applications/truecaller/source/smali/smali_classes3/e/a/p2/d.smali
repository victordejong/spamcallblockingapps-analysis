.class public final synthetic Le/a/p2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p2/d;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iput-object p2, p0, Le/a/p2/d;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/p2/d;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/p2/d;->d:Landroid/content/Intent;

    iput-object p5, p0, Le/a/p2/d;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/p2/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Le/a/p2/d;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    iget-object v1, p0, Le/a/p2/d;->b:Ljava/lang/String;

    iget-object v2, p0, Le/a/p2/d;->c:Ljava/lang/String;

    iget-object v3, p0, Le/a/p2/d;->d:Landroid/content/Intent;

    iget-object v4, p0, Le/a/p2/d;->e:Ljava/lang/String;

    iget-object v5, p0, Le/a/p2/d;->f:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Le/a/w1;

    invoke-interface {v6}, Le/a/w1;->s()Le/a/j2;

    move-result-object v6

    invoke-interface {v6}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v7

    .line 2
    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3
    new-instance v8, Ln3/k/a/q;

    invoke-interface {v7}, Le/a/i4/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v8, v1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 5
    iget-object v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->l:Landroid/app/PendingIntent;

    .line 6
    iget-object v9, v8, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v1, v9, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 7
    invoke-virtual {v8, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 8
    new-instance v1, Ln3/k/a/o;

    invoke-direct {v1}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v1, v2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v8, v1}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const v1, 0x7f0816fb

    .line 9
    iget-object v2, v8, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    const v1, 0x7f06068b

    .line 10
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 12
    iput v1, v8, Ln3/k/a/q;->D:I

    const v1, 0x7f0f0001

    .line 13
    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v8, v1}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const/4 v1, 0x1

    const/16 v2, 0x10

    .line 14
    invoke-virtual {v8, v2, v1}, Ln3/k/a/q;->p(IZ)V

    .line 15
    iget-object v1, v0, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->k:Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    .line 18
    invoke-static {v1, v2, v6}, Le/a/f4/i/a;->a(Ljava/lang/String;II)Le/a/z3/i/a;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1, v6}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 20
    invoke-virtual {v8, v1}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    :cond_0
    const v1, 0x7f0a0e2a

    const/high16 v6, 0x14000000

    .line 21
    invoke-static {v0, v1, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 22
    iput-object v0, v8, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v8, v2, v4, v0}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 24
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v0, "Subtype"

    .line 25
    invoke-virtual {v12, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v9, 0x7f0a0605

    .line 26
    invoke-virtual {v8}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v10

    const-string v11, "notificationAfterCallPromo"

    move-object v8, v0

    invoke-interface/range {v7 .. v12}, Le/a/i4/e;->c(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
