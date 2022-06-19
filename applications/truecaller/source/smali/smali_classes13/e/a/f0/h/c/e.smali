.class public final synthetic Le/a/f0/h/c/e;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/f0/h/a/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/f0/h/c/d;)V
    .locals 7

    const-class v3, Le/a/f0/h/c/d;

    const/4 v1, 0x1

    const-string v4, "onSocialMediaItemClick"

    const-string v5, "onSocialMediaItemClick(Lcom/truecaller/social_media/presentation/entities/SocialMediaItem;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/a/f0/h/a/a;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/f0/h/c/d;

    .line 3
    iget-object v0, v0, Le/a/f0/h/c/d;->a:Le/a/f0/h/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const-string v2, "item"

    .line 4
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    .line 6
    iget-object v4, p1, Le/a/f0/h/a/a;->f:Ljava/lang/String;

    .line 7
    check-cast v3, Le/a/f0/a;

    .line 8
    iget-object v3, v3, Le/a/f0/a;->h:Le/a/q2/a;

    .line 9
    new-instance v5, Le/a/f0/d/a;

    const-string v6, "Truecaller_News_Social_Opened"

    invoke-direct {v5, v6, v4}, Le/a/f0/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-interface {v3, v5}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 11
    iget-object v3, v0, Le/a/f0/h/b/b;->b:Le/a/f0/c;

    check-cast v3, Le/a/f0/a;

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v2, p1, Le/a/f0/h/a/a;->a:Lcom/truecaller/social_media/presentation/entities/SocialMediaItemId;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 16
    iget-object v2, p1, Le/a/f0/h/a/a;->e:Ljava/lang/String;

    const-string v3, "com.zhiliaoapp.musically"

    .line 17
    invoke-static {v3, v2}, Le/a/l4/k;->w(Ljava/lang/String;Ljava/lang/String;)Le/a/f0/i/a;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_1
    iget-object v2, p1, Le/a/f0/h/a/a;->e:Ljava/lang/String;

    const-string v3, "com.google.android.youtube"

    .line 19
    invoke-static {v3, v2}, Le/a/l4/k;->w(Ljava/lang/String;Ljava/lang/String;)Le/a/f0/i/a;

    move-result-object v2

    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, p1, Le/a/f0/h/a/a;->e:Ljava/lang/String;

    const-string v3, "com.instagram.android"

    .line 21
    invoke-static {v3, v2}, Le/a/l4/k;->w(Ljava/lang/String;Ljava/lang/String;)Le/a/f0/i/a;

    move-result-object v2

    goto :goto_0

    .line 22
    :cond_3
    iget-object v2, p1, Le/a/f0/h/a/a;->e:Ljava/lang/String;

    const-string v3, "com.facebook.katana"

    .line 23
    invoke-static {v3, v2}, Le/a/l4/k;->w(Ljava/lang/String;Ljava/lang/String;)Le/a/f0/i/a;

    move-result-object v2

    goto :goto_0

    .line 24
    :cond_4
    iget-object v2, p1, Le/a/f0/h/a/a;->e:Ljava/lang/String;

    const-string v3, "com.twitter.android"

    .line 25
    invoke-static {v3, v2}, Le/a/l4/k;->w(Ljava/lang/String;Ljava/lang/String;)Le/a/f0/i/a;

    move-result-object v2

    :goto_0
    const-string v3, "android.intent.action.VIEW"

    .line 26
    iget-object v4, v2, Le/a/f0/i/a;->b:Ljava/lang/String;

    .line 27
    iget-object v2, v2, Le/a/f0/i/a;->c:Ljava/lang/String;

    const-string v5, "action"

    .line 28
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v4, :cond_5

    .line 31
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/high16 v2, 0x10000000

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    if-eqz v1, :cond_7

    .line 33
    iget-object p1, p1, Le/a/f0/h/a/a;->d:Ljava/lang/String;

    .line 34
    iget-object v2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f0/h/b/a;

    if-eqz v2, :cond_8

    invoke-virtual {v0, p1}, Le/a/f0/h/b/b;->Hj(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Le/a/f0/h/b/a;->Og(Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_2

    .line 35
    :cond_7
    iget-object p1, p1, Le/a/f0/h/a/a;->d:Ljava/lang/String;

    .line 36
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f0/h/b/a;

    if-eqz v1, :cond_8

    invoke-virtual {v0, p1}, Le/a/f0/h/b/b;->Hj(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/f0/h/b/a;->Rz(Landroid/content/Intent;)V

    .line 37
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_9
    const-string p1, "presenter"

    .line 38
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
