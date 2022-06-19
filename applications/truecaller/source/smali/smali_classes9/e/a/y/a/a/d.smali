.class public final Le/a/y/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/a/c;


# instance fields
.field public a:Le/a/y/a/a/b;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/truecaller/flashsdk/models/QueuedFlash;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/y/a/a/d;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/a/y/a/a/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/y/a/a/d;->e:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload.attachment"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ls1/f0/h;

    const-string v4, ","

    invoke-direct {v3, v4}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ls1/f0/h;->f(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 6
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-nez v6, :cond_0

    .line 9
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v1, v3}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    new-array v3, v4, [Ljava/lang/String;

    .line 11
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    check-cast v1, [Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v3

    .line 14
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 15
    aget-object v0, v1, v4

    iput-object v0, p0, Le/a/y/a/a/d;->d:Ljava/lang/String;

    .line 16
    aget-object v0, v1, v5

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/y/a/a/d;->d:Ljava/lang/String;

    const-string v0, ""

    .line 18
    :goto_2
    iget-object v1, p0, Le/a/y/a/a/d;->a:Le/a/y/a/a/b;

    if-eqz v1, :cond_4

    iget-object v2, p0, Le/a/y/a/a/d;->d:Ljava/lang/String;

    const-string v4, "imageDescription"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v0}, Le/a/y/a/a/b;->lg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "presenterView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_5
    return-void
.end method

.method public b(Le/a/y/a/a/b;)V
    .locals 2

    const-string v0, "shareImageFragmentView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/a/a/d;->a:Le/a/y/a/a/b;

    .line 2
    check-cast p1, Le/a/y/a/a/a;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "share_image"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(bundle.getString(SHARE_IMAGE) ?: return)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/y/a/a/d;->b:Landroid/net/Uri;

    const-string v0, "share_text"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Le/a/y/a/a/d;->c:Ljava/lang/String;

    const-string v0, "flash"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/QueuedFlash;

    iput-object p1, p0, Le/a/y/a/a/d;->e:Lcom/truecaller/flashsdk/models/QueuedFlash;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/a/a/d;->a:Le/a/y/a/a/b;

    const-string v1, "presenterView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Le/a/y/a/a/d;->b:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v4, p0, Le/a/y/a/a/d;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Le/a/y/a/a/b;->eq(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/y/a/a/d;->a:Le/a/y/a/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/a/b;->V0()V

    return-void

    :cond_0
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "imageUri"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
