.class public final Le/a/h/b/w0/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/ArrayList<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.suggested_contacts.SuggestionsChooserTargetService$getChooserTargetsAsync$1"
    f = "SuggestionsChooserTargetService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/w0/e;->e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/w0/e;

    iget-object v0, p0, Le/a/h/b/w0/e;->e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    invoke-direct {p1, v0, p2}, Le/a/h/b/w0/e;-><init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/b/w0/e;

    iget-object v0, p0, Le/a/h/b/w0/e;->e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    invoke-direct {p1, v0, p2}, Le/a/h/b/w0/e;-><init>(Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/b/w0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/b/w0/e;->e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    .line 3
    iget-object p1, p1, Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;->d:Le/a/h/b/w0/d;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x4

    .line 4
    invoke-interface {p1, v1}, Le/a/h/b/w0/d;->d(I)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Le/a/h/b/w0/e;->e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h/b/w0/c;

    .line 8
    iget-object v5, v4, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->y()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 10
    invoke-static {v5, v7}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 11
    :try_start_0
    invoke-static {v3}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v8

    .line 13
    iput-object v5, v8, Le/f/a/h;->J:Ljava/lang/Object;

    .line 14
    iput-boolean v7, v8, Le/f/a/h;->N:Z

    .line 15
    iget-object v5, p0, Le/a/h/b/w0/e;->e:Lcom/truecaller/calling/dialer/suggested_contacts/SuggestionsChooserTargetService;

    invoke-virtual {v5}, Landroid/service/chooser/ChooserTargetService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0704ef

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v8, v5}, Le/a/z3/d;->m0(I)Le/a/z3/d;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    check-cast v5, Le/f/a/r/f;

    :try_start_1
    invoke-virtual {v5}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object v5

    .line 19
    check-cast v5, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 20
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v0

    move-object v6, v5

    .line 21
    :goto_1
    invoke-static {v6}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 22
    iget-object v6, v4, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    :cond_2
    move-object v8, v6

    if-nez v5, :cond_3

    const v5, 0x7f080385

    .line 23
    invoke-static {v3, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :cond_3
    move-object v9, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    iget-boolean v6, v4, Le/a/h/b/w0/c;->c:Z

    if-nez v6, :cond_4

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    :cond_4
    move v10, v5

    .line 26
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 27
    iget-object v4, v4, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    const-string v5, "smsto"

    .line 28
    invoke-static {v5, v4, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "com.truecaller.suggestions.extra.PHONE_NUMBER"

    invoke-virtual {v12, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    new-instance v4, Landroid/service/chooser/ChooserTarget;

    new-instance v11, Landroid/content/ComponentName;

    const-class v5, Lcom/truecaller/messaging/sharing/SharingActivity;

    invoke-direct {v11, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Landroid/service/chooser/ChooserTarget;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v2

    :cond_6
    const-string p1, "suggestedContactsManager"

    .line 30
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
