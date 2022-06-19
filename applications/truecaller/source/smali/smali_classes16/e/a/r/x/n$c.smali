.class public Le/a/r/x/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/x/n;->VA(Lcom/truecaller/social/SocialNetworkType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b5/c<",
        "Le/a/b5/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/social/SocialNetworkType;

.field public final synthetic b:Le/a/r/x/n;


# direct methods
.method public constructor <init>(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    iput-object p2, p0, Le/a/r/x/n$c;->a:Lcom/truecaller/social/SocialNetworkType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b5/b;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "Error fetching profile from "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/a/b5/a;

    .line 2
    iget-object v2, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    iget-object v0, v0, Le/a/r/x/n;->n:Le/a/r/x/y/a;

    iget-object v2, p0, Le/a/r/x/n$c;->a:Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GetProfile"

    invoke-virtual {v0, v2, v3}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    .line 6
    iget-object v1, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 7
    invoke-static {v0, v1, p2}, Le/a/r/x/n;->RA(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;Ljava/lang/Throwable;)V

    .line 8
    iget-object p2, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    .line 9
    invoke-virtual {p2, p1}, Le/a/r/x/n;->SA(Le/a/b5/b;)V

    return-void
.end method

.method public b(Le/a/b5/b;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Le/a/b5/f;

    if-eqz p2, :cond_8

    const-string v0, "Social profile loaded from "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/a/b5/a;

    .line 3
    iget-object v1, v1, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    iget-object v0, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    iget-object v0, v0, Le/a/r/x/n;->n:Le/a/r/x/y/a;

    iget-object v1, p0, Le/a/r/x/n$c;->a:Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, v0, Le/a/r/x/y/a;->a:Le/a/q2/a;

    new-instance v2, Le/a/r/x/y/b;

    invoke-direct {v2, v1}, Le/a/r/x/y/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 8
    iget-object v0, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    iget-object v1, p0, Le/a/r/x/n$c;->a:Lcom/truecaller/social/SocialNetworkType;

    .line 9
    iput-object v1, v0, Le/a/r/x/n;->O:Lcom/truecaller/social/SocialNetworkType;

    .line 10
    iget-object p2, p2, Le/a/b5/f;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "profileEmail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "profileLastName"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "profileAvatar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "profileFirstName"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 13
    :pswitch_0
    iget-object v2, v0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :pswitch_1
    iget-object v2, v0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :pswitch_2
    iput-boolean v3, v0, Le/a/r/x/n;->L:Z

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Ln3/w/a/a;

    move-result-object v2

    sget v3, Lcom/truecaller/wizard/R$id;->wizard_loader_downloader:I

    invoke-virtual {v0}, Le/a/r/x/l;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 18
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "url"

    .line 19
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "destination"

    .line 20
    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 21
    invoke-virtual {v2, v3, v5, v0}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    goto/16 :goto_0

    .line 22
    :pswitch_3
    iget-object v2, v0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 23
    :cond_4
    iget-object p2, v0, Le/a/r/x/n;->x:Landroid/view/View;

    .line 24
    iget-object v1, v0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v1}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {v1}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    .line 25
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    iget-object p2, v0, Le/a/r/x/n;->u:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v0, Le/a/r/x/n;->v:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v0, Le/a/r/x/n;->w:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-virtual {p2}, Lcom/truecaller/wizard/internal/components/EditText;->d()Z

    move-result p2

    if-eqz p2, :cond_6

    move v2, v3

    :cond_6
    if-nez v2, :cond_7

    .line 27
    invoke-virtual {v0}, Le/a/r/x/n;->XA()V

    goto :goto_3

    .line 28
    :cond_7
    iget-boolean p2, v0, Le/a/r/x/n;->L:Z

    if-nez p2, :cond_9

    .line 29
    invoke-virtual {v0}, Le/a/r/x/n;->UA()V

    goto :goto_3

    :cond_8
    const-string p2, "No profile received from "

    .line 30
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Le/a/b5/a;

    .line 31
    iget-object v1, v0, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    iget-object p2, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    iget-object p2, p2, Le/a/r/x/n;->n:Le/a/r/x/y/a;

    iget-object v1, p0, Le/a/r/x/n$c;->a:Lcom/truecaller/social/SocialNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoProfile"

    invoke-virtual {p2, v1, v2}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    .line 35
    iget-object v0, v0, Le/a/b5/a;->b:Lcom/truecaller/social/SocialNetworkType;

    const/4 v1, 0x0

    .line 36
    invoke-static {p2, v0, v1}, Le/a/r/x/n;->RA(Le/a/r/x/n;Lcom/truecaller/social/SocialNetworkType;Ljava/lang/Throwable;)V

    .line 37
    :cond_9
    :goto_3
    iget-object p2, p0, Le/a/r/x/n$c;->b:Le/a/r/x/n;

    .line 38
    sget-object v0, Le/a/r/x/n;->P:[I

    .line 39
    invoke-virtual {p2, p1}, Le/a/r/x/n;->SA(Le/a/b5/b;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c6bb24e -> :sswitch_3
        -0x5da76b9e -> :sswitch_2
        -0x530284f6 -> :sswitch_1
        0x47817373 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
