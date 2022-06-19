.class public final Le/a/e/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/truecaller/ui/WizardActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public static A(JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 4

    .line 1
    invoke-static {p2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    const-string v0, "truecaller.com"

    invoke-static {p3, v0}, Lw3/c/a/a/a/h;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "3"

    invoke-virtual {p3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "/"

    invoke-static {p3, v0}, Lw3/c/a/a/a/h;->p(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p3, p0, v2

    if-lez p3, :cond_4

    .line 7
    sget-object p3, Le/a/m0/a1;->a:Landroid/net/Uri;

    if-nez p3, :cond_2

    return-object v1

    .line 8
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v0, "photo"

    .line 9
    invoke-virtual {p3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    const-string v0, "tcphoto"

    invoke-virtual {p3, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 11
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pbid"

    invoke-virtual {p2, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p2
.end method

.method public static final B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;
    .locals 2

    const-string v0, "$this$getPhotoUri"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    const-string v1, "phonebookId ?: 0"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Le/a/e/a2;->A(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final C(Le/a/l4/c;Lcom/truecaller/data/entity/Contact;)Le/a/l4/e;
    .locals 1

    const-string v0, "$this$getPresenceForContact"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/m0/a1$k;->X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 3
    invoke-interface {p0, p1}, Le/a/l4/c;->b([Ljava/lang/String;)Le/a/l4/e;

    move-result-object p0

    return-object p0
.end method

.method public static final D(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    const-string v0, "$this$getSafeConfig"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object p0
.end method

.method public static final E(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const-string p0, "returnedBitmap"

    .line 5
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static F(Landroid/content/Context;)Le/a/o5/z0;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Le/a/j4/b/a/f;

    invoke-direct {v0, p0}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0}, Le/a/j4/b/a/f;->k()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    check-cast v1, Ljava/util/HashMap;

    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/network/notification/NotificationScope;

    .line 6
    iget v4, v3, Lcom/truecaller/network/notification/NotificationScope;->value:I

    if-lez v4, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const-string v2, "language"

    .line 8
    invoke-static {v2}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v4, v5, v3, v2}, Le/a/f4/f/b;->a(JLcom/truecaller/network/notification/NotificationScope;Ljava/lang/String;)Lx3/b;

    move-result-object v2

    invoke-interface {v2}, Lx3/b;->execute()Lx3/a0;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lx3/a0;->b:Ljava/lang/Object;

    .line 11
    check-cast v2, Le/a/f4/f/c;

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, v2, Le/a/f4/f/c;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v0, p0}, Le/a/j4/b/a/f;->r(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Le/a/j4/b/a/f;->j(Ljava/util/Collection;Ljava/lang/Boolean;)I

    .line 16
    invoke-virtual {v0}, Le/a/j4/b/a/f;->n()Ljava/util/Collection;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v1, Ljava/util/TreeSet;

    :try_start_2
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    .line 17
    invoke-virtual {v0, p0}, Le/a/j4/b/a/f;->o(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    check-cast p0, Ljava/util/TreeSet;

    :try_start_3
    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result p0

    .line 18
    new-instance v2, Le/a/o5/z0;

    invoke-virtual {v0}, Le/a/j4/b/a/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v2, v0, p0}, Le/a/o5/z0;-><init>(Ljava/util/List;I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 19
    :goto_2
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static G(Ljava/lang/String;Le/m/e/t;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of p1, p0, Le/m/e/s;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static H(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Landroid/content/Context;J)V
    .locals 8

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const-string v5, "notification"

    if-eq v2, v3, :cond_f

    const/16 v3, 0xf

    if-eq v2, v3, :cond_e

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_d

    const/16 v3, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    const-string v3, "context"

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-interface {v1}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3}, Le/a/d/c0/s1;->j(Ljava/lang/Object;J)V

    goto/16 :goto_4

    .line 4
    :pswitch_1
    invoke-interface {v1}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, v7}, Le/a/d/c0/s1;->c(Ljava/lang/Object;JZ)V

    goto/16 :goto_4

    .line 5
    :pswitch_2
    invoke-interface {v1}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, v6}, Le/a/d/c0/s1;->c(Ljava/lang/Object;JZ)V

    goto/16 :goto_4

    .line 6
    :pswitch_3
    sget p2, Lcom/truecaller/premium/PremiumNotificationService;->l:I

    .line 7
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/truecaller/premium/PremiumNotificationService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->s()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PAGE_URL"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "rs"

    .line 10
    invoke-virtual {p0, p3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "REASON"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object p3

    iget p3, p3, Lcom/truecaller/network/notification/NotificationType;->value:I

    const-string v0, "TYPE"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "ft"

    .line 12
    invoke-virtual {p0, p3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_0
    const-string p0, "IS_FREE_TRIAL"

    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 13
    const-class p0, Lcom/truecaller/premium/PremiumNotificationService;

    const p3, 0x7f0a0d67

    invoke-static {p1, p0, p3, p2}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    goto/16 :goto_4

    .line 14
    :pswitch_4
    invoke-interface {v1}, Le/a/j2;->G4()Le/a/h/o0/g;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/h/o0/g;->b(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto/16 :goto_4

    .line 15
    :pswitch_5
    sget p2, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;->j:I

    .line 16
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->o()Ljava/lang/String;

    move-result-object p3

    const-string v0, "EXTRA_TC_ID"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "ac"

    .line 19
    invoke-virtual {p0, p3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "EXTRA_PROFILE_VIEW_EVENT_SOURCE"

    .line 20
    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-class p0, Lcom/truecaller/whoviewedme/ReceiveProfileViewService;

    const p3, 0x7f0a142c

    .line 22
    invoke-static {p1, p0, p3, p2}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    goto/16 :goto_4

    .line 23
    :pswitch_6
    invoke-interface {v1}, Le/a/j2;->J()Le/a/o/c;

    move-result-object p1

    new-instance p2, Le/a/o/b/h0;

    const-string p3, "ci"

    .line 24
    invoke-virtual {p0, p3}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "cc"

    .line 25
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    .line 26
    invoke-virtual {p0, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-direct {p2, p3, v0, p0}, Le/a/o/b/h0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1, p2}, Le/a/o/c;->F(Le/a/o/b/h0;)V

    goto/16 :goto_4

    .line 29
    :pswitch_7
    invoke-interface {v1}, Le/a/j2;->y()Le/a/k/h;

    move-result-object p1

    const-string p2, "no"

    .line 30
    invoke-virtual {p0, p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-interface {p1, p0}, Le/a/k/h;->V(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 32
    :pswitch_8
    invoke-interface {v1}, Le/a/j2;->m2()Le/a/l/g/s;

    move-result-object p1

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p2, p1, Le/a/l/g/s;->d:Le/a/l/g/t;

    invoke-virtual {p2}, Le/a/l/g/t;->c()Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_4

    .line 35
    :cond_1
    iget-object v1, p1, Le/a/l/g/s;->f:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/l/g/r;

    invoke-direct {v3, p1, p0, v4}, Le/a/l/g/r;-><init>(Le/a/l/g/s;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto/16 :goto_4

    .line 36
    :pswitch_9
    invoke-interface {v1}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object p1

    const-string p2, "t"

    invoke-virtual {p0, p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Le/a/b0/e/l;->p(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 37
    :cond_2
    invoke-interface {v1}, Le/a/j2;->R1()Le/a/i4/g;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/i4/g;->a(Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    goto/16 :goto_4

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Le/a/o5/y0;

    invoke-static {p0, p1}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/o5/y0;

    .line 39
    invoke-interface {p0}, Le/a/o5/y0;->N6()Le/a/g0/d;

    move-result-object p0

    invoke-interface {p0}, Le/a/g0/d;->i()V

    goto/16 :goto_4

    .line 40
    :cond_4
    sget p2, Lcom/truecaller/referral/ReferralNotificationService;->a:I

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNotificationReceived() called with: context = ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "], notification = ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/truecaller/referral/ReferralNotificationService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "r"

    .line 43
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 45
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "promo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "referrer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "clearCache"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "joiner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_a
    const-string v4, "com.truecaller.intent.action.REFERRAL_REFERRER_PROMO_NOTIFICATION_RECEIVED"

    goto :goto_1

    :pswitch_b
    const-string v4, "com.truecaller.intent.action.REFERRAL_REFERRER_NOTIFICATION_RECEIVED"

    goto :goto_1

    :pswitch_c
    const-string v4, "com.truecaller.intent.action.ACTION_CLEAR_CACHE_NOTIFICATION_RECEIVED"

    goto :goto_1

    :pswitch_d
    const-string v4, "com.truecaller.intent.action.REFERRAL_JOINER_NOTIFICATION_RECEIVED"

    .line 46
    :goto_1
    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Role is not present in referral notification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 48
    :cond_a
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "d"

    .line 51
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "days"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "f"

    .line 52
    invoke-virtual {p0, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "name"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_2

    .line 54
    :cond_b
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    :goto_2
    if-eqz p0, :cond_c

    .line 55
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "["

    const-string v3, "="

    .line 59
    invoke-static {v2, v1, v3}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 60
    :cond_c
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_4

    .line 61
    :cond_d
    iget-object p2, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object p2, p2, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    if-eqz p2, :cond_10

    .line 62
    invoke-interface {v1}, Le/a/j2;->X5()Le/a/v4/t0/a;

    move-result-object p2

    iget-object p0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j:Le/a/f4/f/c$a;

    iget-object p0, p0, Le/a/f4/f/c$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Le/a/v4/t0/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_4

    .line 63
    :cond_e
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p0

    invoke-interface {p0}, Le/a/j2;->L3()Le/a/r2/f;

    move-result-object p0

    invoke-interface {p0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/i3/b;

    invoke-interface {p0}, Le/a/i3/b;->b()Le/a/r2/x;

    move-result-object p0

    invoke-virtual {p0}, Le/a/r2/x;->g()V

    goto :goto_4

    .line 64
    :cond_f
    invoke-interface {v1}, Le/a/j2;->e3()Le/a/l/v1;

    move-result-object p1

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v1, p1, Le/a/l/v1;->h:Ls1/w/f;

    new-instance v3, Le/a/l/u1;

    invoke-direct {v3, p1, p0, v4}, Le/a/l/u1;-><init>(Le/a/l/v1;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_10
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x44d0b8a9 -> :sswitch_3
        -0x2d410ecb -> :sswitch_2
        -0x2b1183e1 -> :sswitch_1
        0x65fc90f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static final I([BLjava/lang/String;)[B
    .locals 1

    const-string v0, "$this$hash"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final J([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$hashString"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/a/e/a2;->I([BLjava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(this, *args)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "str.append(\"%02x\".format(it))"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Le/a/p5/g;Le/a/u3/g;)Z
    .locals 5

    const-string v0, "$this$isDarkTheme"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Le/a/u3/g;->E1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x86

    aget-object v2, v2, v3

    invoke-virtual {v0, p1, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 3
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_6

    const-string v0, ","

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    invoke-static {p1, v0, v1, v1, v4}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p0}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_6

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v0

    :cond_4
    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method public static L(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/q2/i0;->l(Ljava/lang/String;)V

    return-void
.end method

.method public static final M(Landroid/database/Cursor;Ls1/z/b/l;Ls1/z/b/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/database/Cursor;",
            "+TT;>;",
            "Ls1/z/b/p<",
            "-",
            "Lcom/truecaller/data/entity/Contact;",
            "-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_9

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Le/a/k3/j/d;

    invoke-direct {v1, p0}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "tc_id"

    .line 4
    invoke-static {p0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    invoke-static {v5, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->b1()V

    :cond_2
    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 8
    :goto_2
    invoke-virtual {v1, p0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "it"

    .line 9
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v4, v3}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    invoke-virtual {v1, p0, v4}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    goto :goto_3

    :cond_5
    move-object v4, v2

    :goto_3
    move-object v3, v4

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {v1, p0, v3}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_8
    invoke-static {p0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_9
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_4
    return-object v0
.end method

.method public static final N(Landroid/database/Cursor;Ls1/z/b/l;Ls1/z/b/l;Ls1/z/b/q;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/database/Cursor;",
            "+TT;>;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/database/Cursor;",
            "+TS;>;",
            "Ls1/z/b/q<",
            "-",
            "Lcom/truecaller/data/entity/Contact;",
            "-TT;-TS;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Le/a/k3/j/d;

    invoke-direct {v1, p0}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    const/4 v2, 0x0

    :cond_0
    move-object v3, v2

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "tc_id"

    .line 4
    invoke-static {p0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    invoke-static {v5, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->b1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_3
    move-object v3, p1

    check-cast v3, Le/a/h/f/n0/a$d;

    :try_start_1
    invoke-virtual {v3, p0}, Le/a/h/f/n0/a$d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    move-object v4, p2

    check-cast v4, Le/a/h/f/n0/a$e;

    :try_start_2
    invoke-virtual {v4, p0}, Le/a/h/f/n0/a$e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-virtual {v1, p0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "it"

    .line 10
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, p3

    check-cast v6, Le/a/h/f/n0/a$c;

    :try_start_3
    invoke-virtual {v6, v5, v3, v4}, Le/a/h/f/n0/a$c;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    invoke-virtual {v1, p0, v5}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    move-object v3, v5

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v1, p0, v3}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 13
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->b1()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_7
    invoke-static {p0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final O(Lcom/airbnb/lottie/LottieAnimationView;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/animation/Animator;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$onAnimationEnd"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/p5/s0/b;

    invoke-direct {v0, p1}, Le/a/p5/s0/b;-><init>(Ls1/z/b/l;)V

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 3
    iget-object p0, p0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 4
    iget-object p0, p0, Le/b/a/b0/a;->b:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-interface {p0, p1, p2}, Le/a/e/b/m/c;->Gc(Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;)V

    return-void
.end method

.method public static Q(Landroid/content/Context;Landroid/net/Uri;IZ)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 2
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p3, -0x1000000

    or-int/2addr p2, p3

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x7f040728

    .line 4
    invoke-static {p0, p3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p3

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v3, "android.support.customtabs.extra.SESSION"

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v3, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    new-instance v2, Ln3/d/a/a;

    invoke-direct {v2, p2, p3, v5, v5}, Ln3/d/a/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 12
    invoke-virtual {v2}, Ln3/d/a/a;->a()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 13
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.extra.REFERRER"

    .line 16
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 18
    sget-object p1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 19
    invoke-static {p0, v0, v5}, Ln3/k/b/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static R(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/truecaller/data/entity/Contact;ZI)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Le/a/o5/q;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p3, :cond_1

    .line 4
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Le/a/b0/q/t;->f(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_1
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p0, 0x1

    const-string v0, "finishActivityOnSaveCompleted"

    .line 7
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object p0, p2

    :goto_1
    if-nez p3, :cond_2

    .line 8
    invoke-static {p1, p0}, Le/a/b0/q/t;->o(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)Z

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p1, p0, p4}, Le/a/b0/q/t;->l(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    :goto_2
    return-void
.end method

.method public static S(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-static {p0, p1}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tel"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 6
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.CALL"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    invoke-static {p0, p2}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    return v3

    :cond_2
    const-string v2, "truecaller"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-static {p0, p1}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    return v3

    :cond_3
    const-string v2, "market"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "appmarket"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_7

    .line 11
    invoke-static {p1}, Le/a/b0/q/t;->g(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    if-eqz v2, :cond_7

    .line 13
    invoke-static {p0, p1}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    return v3

    :cond_7
    const-string v2, "file"

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15
    invoke-static {p0, p1, v3}, Lcom/truecaller/old/ui/activities/DialogBrowserActivity;->pa(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_8
    const p1, 0x7f0406f4

    .line 16
    invoke-static {p0, p1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p2, p1, v1}, Le/a/e/a2;->Q(Landroid/content/Context;Landroid/net/Uri;IZ)V

    :goto_3
    return v3
.end method

.method public static final T(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://twitter.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static U(Le/a/p5/q0/b;)Ls1/w/f;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lq3/a/t0;->d:Lq3/a/g0;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static V(Le/a/p5/q0/b;)Ls1/w/f;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lq3/a/t0;->b:Lq3/a/g0;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static W(Le/a/p5/q0/b;)Ls1/w/f;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lq3/a/t0;->d:Lq3/a/g0;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static X(Le/a/p5/q0/b;)Ls1/w/f;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object p0, Lq3/a/y2/q;->c:Lq3/a/y1;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final Y(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "$this$requestPortraitOrientationCompat"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static final Z(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "$this$rotate"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "Bitmap.createBitmap(this\u2026his.height, matrix, true)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final a(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040729

    invoke-static {v0, p1, v1}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$this$safeApplyBatch"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authority"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    const-string p1, "applyBatch(authority, operations)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move v0, p1

    :cond_0
    xor-int/lit8 p0, v0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public static final b(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040729

    invoke-static {v0, p1, v1}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final b0(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "$this$scaleCenterCrop"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, p2

    int-to-float v0, v0

    div-float v3, v2, v0

    int-to-float v4, p1

    int-to-float v1, v1

    div-float v5, v4, v1

    .line 3
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v0, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v2, v1

    sub-float/2addr v4, v3

    div-float/2addr v4, v1

    .line 4
    new-instance v1, Landroid/graphics/RectF;

    add-float/2addr v0, v2

    add-float/2addr v3, v4

    invoke-direct {v1, v2, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    invoke-static {p0}, Le/a/e/a2;->D(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, p0, v0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const-string p0, "dest"

    .line 8
    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const-string p0, "scaled"

    .line 3
    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static c0(Landroid/content/Context;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lr3/a/a/c;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    invoke-static {p0, p1}, Lr3/a/a/c;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Lr3/a/a/b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_2
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const/4 p1, 0x3

    const-string v0, "ShortcutBadger"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Package name: "

    const-string v2, ". Launch intent: "

    .line 6
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const-string p1, "com.truecaller.action.UPDATE_CALL_BADGE"

    const-string v0, "$this$sendBroadcast"

    .line 9
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x20

    const/16 v1, 0x5f

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-static {p0, v0, v1, v2, v3}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^A-Za-z0-9_]"

    const-string v1, ""

    invoke-static {v0, p0, v1}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static final e(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "Enabled"

    goto :goto_0

    :cond_0
    const-string p0, "Disabled"

    :goto_0
    return-object p0
.end method

.method public static e0(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Le/a/k3/j/j;

    invoke-direct {v0, p0}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 5
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "contact_phonebook_id=? AND contact_source=2 AND contact_phonebook_lookup=?"

    .line 6
    invoke-virtual {v0, v1, v5, v2}, Le/a/k3/j/j;->i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p1, v2, v4

    const-string v4, "contact_phonebook_lookup=? AND contact_source=2"

    invoke-virtual {v0, v1, v4, v2}, Le/a/k3/j/j;->i(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    iget-object v2, v1, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-boolean p4, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->isFavorite:Z

    .line 9
    invoke-virtual {v0, v1}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z

    .line 10
    :cond_2
    invoke-static {p2, p3, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 11
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 12
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "starred"

    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static final f(Landroid/animation/Animator;ZLs1/z/b/a;)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/animation/Animator;",
            ">(TT;Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "$this$addOnEndListener"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/p5/s0/a;

    invoke-direct {v0, p1, p2}, Le/a/p5/s0/a;-><init>(ZLs1/z/b/a;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public static final f0(Landroid/view/View;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/b0/a/b/a;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 3
    sget v5, Lcom/truecaller/insights/ui/R$layout;->share_smart_card_header:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 4
    sget v5, Lcom/truecaller/insights/ui/R$id;->iconIv:I

    .line 5
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v7, :cond_1

    .line 6
    sget v5, Lcom/truecaller/insights/ui/R$id;->senderNameTv:I

    .line 7
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 8
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v5, "senderNameTv"

    .line 9
    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v7, p3}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 11
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/16 p3, 0x28

    invoke-static {p3, v0}, Le/a/c/p/a;->W(ILandroid/content/Context;)I

    move-result v5

    invoke-direct {p2, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 12
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 13
    invoke-static {p3, v0}, Le/a/c/p/a;->W(ILandroid/content/Context;)I

    move-result p3

    invoke-static {p3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 14
    invoke-virtual {v4, v2, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 15
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {v4, v6, v6, p2, p3}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Missing required view with ID: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    move-object v4, v3

    :goto_1
    const p2, 0x7f040324

    .line 18
    invoke-static {p0, p2}, Le/a/e/a2;->E(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f040325

    .line 20
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    const-string v1, "newBitmap"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v6, v5

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v0, v6, v5}, Le/a/e/a2;->b0(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 25
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v7, v6

    .line 26
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 27
    invoke-static {v5, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 28
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {v6, p3, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v6, v0, v2, p3, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 31
    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, v5

    :cond_4
    if-eqz v4, :cond_5

    .line 32
    invoke-static {v4, p2}, Le/a/e/a2;->E(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_6

    .line 33
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v4, v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p2, v4, v0}, Le/a/e/a2;->b0(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 34
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 35
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 36
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    invoke-static {v0, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    invoke-virtual {v4, p2, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v4, p3, v2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 41
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, v0

    .line 42
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Le/a/b0/q/g0;->P(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 43
    iget-object p3, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    if-eqz p3, :cond_7

    const-string v0, "SMS from "

    invoke-static {v0, p3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_7
    move-object p3, v3

    :goto_4
    if-eqz p1, :cond_8

    .line 44
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const-string p1, ""

    :goto_5
    const-string v0, "message?.buildMessageText() ?: \"\""

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    invoke-static {p0, v3, p3, p1, p2}, Le/a/b0/q/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;)Z

    return-void
.end method

.method public static final g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/r2/x<",
            "TT;>;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/w/i;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 2
    new-instance v1, Le/a/o5/k1;

    invoke-direct {v1, v0}, Le/a/o5/k1;-><init>(Ls1/w/d;)V

    invoke-virtual {p0, v1}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 3
    invoke-virtual {v0}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p0, v0, :cond_0

    const-string v0, "frame"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 1
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Le/a/p5/j0;->a(ILjava/lang/CharSequence;I)V

    return-void
.end method

.method public static h(Lcom/google/android/gms/tasks/Task;Ls1/z/b/l;I)Ljava/lang/Object;
    .locals 1

    and-int/lit8 p1, p2, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/p5/q0/f;->b:Le/a/p5/q0/f;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, "$this$await"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptionCallback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p1, p0}, Le/a/p5/q0/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p2
.end method

.method public static synthetic h0(Le/a/e/b/m/d;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    and-int/lit8 p2, p4, 0x4

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    move-object p3, p4

    .line 1
    :cond_0
    invoke-interface {p0, p1, p4, p3}, Le/a/e/b/m/d;->ga(Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final i0(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "$this$turnAndKeepScreenOn"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const v0, 0x280080

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v7, Le/a/j4/b/a/f;

    invoke-direct {v7, p0}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 3
    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p0}, Le/a/e/a2;->F(Landroid/content/Context;)Le/a/o5/z0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget v2, v0, Le/a/o5/z0;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "notificationLast"

    .line 6
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, v1

    .line 7
    :goto_0
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 8
    :goto_1
    invoke-virtual {v7}, Le/a/j4/b/a/f;->m()Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    move-result-object v0

    const-wide/32 v3, 0x240c8400

    const-string v5, "swUpdateNotificationLast"

    .line 9
    invoke-static {v5, v3, v4}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v3

    if-lez v2, :cond_7

    .line 10
    invoke-static {v5}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p0, v0}, Le/a/o5/g1;->c(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_6

    .line 12
    invoke-virtual {v7}, Le/a/j4/b/a/i;->e()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 13
    invoke-virtual {v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "a"

    if-eq v3, v0, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x6

    if-eq v3, v5, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    sget-object v3, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->SETTINGS_GENERAL_LANGUAGE:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    const-string v5, "v"

    .line 15
    invoke-virtual {v1, v5}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->getUiType(Ljava/lang/String;)Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v1, p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_LANGUAGE:Lcom/truecaller/ui/settings/SettingsCategory;

    const-string v4, "show_lang_selector"

    .line 19
    invoke-static {p0, v1, v0, v4}, Lcom/truecaller/ui/settings/SettingsActivity;->va(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "showView"

    move-object v1, p0

    .line 20
    invoke-static/range {v1 .. v6}, Le/a/o5/g1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v1, "other"

    .line 21
    invoke-static {p0, v2, v0, v1}, Le/a/o5/g1;->a(Landroid/content/Context;IZLjava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {v1, p0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {p0}, Le/a/i4/y/d;->cB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "general"

    move-object v1, p0

    .line 25
    invoke-static/range {v1 .. v6}, Le/a/o5/g1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_5
    invoke-virtual {v1, v4}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "search"

    const-string v3, "notification"

    move-object v1, p0

    .line 27
    invoke-static/range {v1 .. v6}, Lcom/truecaller/ui/TruecallerInit;->Aa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/InboxTab;Z)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    const v1, 0x7f120425

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "announcement"

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Le/a/o5/g1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v1, "multiple"

    .line 29
    invoke-static {p0, v2, v0, v1}, Le/a/o5/g1;->a(Landroid/content/Context;IZLjava/lang/String;)V

    .line 30
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.notification.action.NOTIFICATIONS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v7}, Le/a/j4/b/a/f;->l()I

    move-result v1

    const-string v2, "notifications_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_9

    if-nez v3, :cond_8

    if-lez v2, :cond_9

    .line 33
    :cond_8
    invoke-static {v5}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 34
    invoke-static {p0, v0}, Le/a/o5/g1;->c(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public static final j0(Landroid/graphics/Bitmap;Ls1/z/b/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/Bitmap;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ls1/z/b/l<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw p1
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v2, "msg/msg_conversations"

    .line 7
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.truecaller"

    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final l(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 1

    const-string v0, "$this$copyBitmapToFile"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressFormat"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0

    :catch_0
    const/4 p0, 0x0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return p0
.end method

.method public static final m(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "$this$createScaledBitmapWithAspectRatio"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    int-to-float p2, v0

    int-to-float v0, p1

    div-float/2addr p2, v0

    int-to-float v0, v1

    div-float/2addr v0, p2

    float-to-int p2, v0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    int-to-float p1, v1

    int-to-float v1, p2

    div-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_1
    int-to-float p1, v1

    int-to-float p2, p2

    div-float p2, p1, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int p2, v0

    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static n(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 4
    invoke-static {v5}, Le/a/e/a2;->n(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    return v2
.end method

.method public static o(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static final p(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2

    const-string v0, "$this$displayMetrics"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    const-string v1, "windowManager"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static q(Ljava/lang/Runnable;Lq3/a/g0;I)Lq3/a/p1;
    .locals 6

    and-int/lit8 p1, p2, 0x1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lq3/a/t0;->d:Lq3/a/g0;

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const-string p1, "$this$executeAsync"

    .line 2
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dispatcher"

    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v3, Le/a/p5/q0/a;

    invoke-direct {v3, p0, p2}, Le/a/p5/q0/a;-><init>(Ljava/lang/Runnable;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(Ljava/lang/String;Le/m/e/t;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of p1, p0, Le/m/e/s;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/e/q;->a()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "$this$getBuildConfigField"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".BuildConfig"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static final u(Lcom/truecaller/data/entity/HistoryEvent;)Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;
    .locals 3

    const-string v0, "$this$getCallIconType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->MUTED_CALL_ICON:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->HUNG_UP_CALL_ICON:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget p0, p0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq p0, v2, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    if-ne p0, v1, :cond_3

    .line 5
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->MISSED_CALL_ICON:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_1

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We expect history event always has call type(incoming/outgoing/missed)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_4
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->OUTGOING_CALL_ICON:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_1

    .line 8
    :cond_5
    sget-object v0, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->INCOMING_CALL_ICON:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    :goto_1
    return-object v0
.end method

.method public static final v(I)I
    .locals 24

    const/4 v0, 0x3

    new-array v1, v0, [D

    move/from16 v2, p0

    .line 1
    invoke-static {v2, v1}, Ln3/k/c/a;->f(I[D)V

    const/4 v2, 0x0

    .line 2
    aget-wide v3, v1, v2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 3
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    .line 4
    sget-object v1, Ln3/k/c/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    if-nez v11, :cond_0

    new-array v11, v0, [D

    .line 5
    invoke-virtual {v1, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v12, v3, v0

    const-wide/high16 v14, 0x405d000000000000L    # 116.0

    div-double/2addr v12, v14

    const-wide v16, 0x407f400000000000L    # 500.0

    div-double v6, v6, v16

    add-double/2addr v6, v12

    const-wide/high16 v16, 0x4069000000000000L    # 200.0

    div-double v9, v9, v16

    sub-double v9, v12, v9

    move-wide/from16 v16, v9

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 6
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    const-wide v20, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v10, v18, v20

    const-wide v22, 0x408c3a6666666666L    # 903.3

    if-lez v10, :cond_1

    goto :goto_0

    :cond_1
    mul-double/2addr v6, v14

    sub-double/2addr v6, v0

    div-double v18, v6, v22

    :goto_0
    const-wide v6, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v6, v3, v6

    if-lez v6, :cond_2

    .line 7
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_1

    :cond_2
    div-double v3, v3, v22

    :goto_1
    move-wide/from16 v12, v16

    .line 8
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v8, v6, v20

    if-lez v8, :cond_3

    goto :goto_2

    :cond_3
    mul-double v9, v12, v14

    sub-double/2addr v9, v0

    div-double v6, v9, v22

    :goto_2
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    mul-double v18, v18, v0

    .line 9
    aput-wide v18, v11, v2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v0

    .line 10
    aput-wide v3, v11, v5

    const-wide v3, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v6, v3

    const/4 v3, 0x2

    .line 11
    aput-wide v6, v11, v3

    .line 12
    aget-wide v6, v11, v2

    aget-wide v4, v11, v5

    aget-wide v8, v11, v3

    const-wide v10, 0x4009ecbfb15b573fL    # 3.2406

    mul-double/2addr v10, v6

    const-wide v12, -0x400767a0f9096bbaL    # -1.5372

    mul-double/2addr v12, v4

    add-double/2addr v12, v10

    const-wide v10, -0x402016f0068db8bbL    # -0.4986

    mul-double/2addr v10, v8

    add-double/2addr v10, v12

    div-double/2addr v10, v0

    const-wide v12, -0x4010fec56d5cfaadL    # -0.9689

    mul-double/2addr v12, v6

    const-wide v14, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double/2addr v14, v4

    add-double/2addr v14, v12

    const-wide v12, 0x3fa53f7ced916873L    # 0.0415

    mul-double/2addr v12, v8

    add-double/2addr v12, v14

    div-double/2addr v12, v0

    const-wide v14, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double/2addr v6, v14

    const-wide v14, -0x4035e353f7ced917L    # -0.204

    mul-double/2addr v4, v14

    add-double/2addr v4, v6

    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double/2addr v8, v6

    add-double/2addr v8, v4

    div-double/2addr v8, v0

    const-wide v0, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v3, v10, v0

    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v6, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v14, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v16, 0x4029d70a3d70a3d7L    # 12.92

    if-lez v3, :cond_4

    .line 13
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v14

    sub-double/2addr v10, v4

    goto :goto_3

    :cond_4
    mul-double v10, v10, v16

    :goto_3
    cmpl-double v3, v12, v0

    if-lez v3, :cond_5

    .line 14
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v14

    sub-double/2addr v12, v4

    goto :goto_4

    :cond_5
    mul-double v12, v12, v16

    :goto_4
    cmpl-double v0, v8, v0

    if-lez v0, :cond_6

    .line 15
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v14

    sub-double/2addr v0, v4

    goto :goto_5

    :cond_6
    mul-double v0, v8, v16

    :goto_5
    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v3

    .line 16
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    const/16 v6, 0xff

    invoke-static {v5, v2, v6}, Ln3/k/c/a;->j(III)I

    move-result v5

    mul-double/2addr v12, v3

    .line 17
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7, v2, v6}, Ln3/k/c/a;->j(III)I

    move-result v7

    mul-double/2addr v0, v3

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0, v2, v6}, Ln3/k/c/a;->j(III)I

    move-result v0

    .line 19
    invoke-static {v5, v7, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Le/m/e/t;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of p1, p0, Le/m/e/s;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/e/q;->b()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final x(I)D
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1
    invoke-static {p0, v0}, Ln3/k/c/a;->f(I[D)V

    const/4 p0, 0x0

    .line 2
    aget-wide v1, v0, p0

    return-wide v1
.end method

.method public static y(Landroid/content/Context;)Landroid/location/Location;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "location"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "network"

    .line 4
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Le/a/c4/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdsUtil"

    const-string v1, "tag"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :catch_1
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static z(Ljava/lang/String;Le/m/e/t;)J
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    instance-of p1, p0, Le/m/e/s;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/e/q;->f()J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    :goto_1
    return-wide p0
.end method
