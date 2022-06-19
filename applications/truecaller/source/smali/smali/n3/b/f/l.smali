.class public Ln3/b/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/g0/d;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/l;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/k/i/g0/e;ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_1

    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object p2, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {p2}, Ln3/k/i/g0/e$c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p2, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {p2}, Ln3/k/i/g0/e$c;->a()Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    :goto_0
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 6
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    return v1

    .line 7
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 8
    iget-object v0, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {v0}, Ln3/k/i/g0/e$c;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 9
    new-instance v3, Landroid/content/ClipData$Item;

    .line 10
    iget-object v4, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {v4}, Ln3/k/i/g0/e$c;->b()Landroid/net/Uri;

    move-result-object v4

    .line 11
    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v0, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 12
    new-instance v0, Ln3/k/i/c$a;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v3}, Ln3/k/i/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 13
    iget-object p1, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {p1}, Ln3/k/i/g0/e$c;->d()Landroid/net/Uri;

    move-result-object p1

    .line 14
    iput-object p1, v0, Ln3/k/i/c$a;->d:Landroid/net/Uri;

    .line 15
    iput-object p3, v0, Ln3/k/i/c$a;->e:Landroid/os/Bundle;

    .line 16
    new-instance p1, Ln3/k/i/c;

    invoke-direct {p1, v0}, Ln3/k/i/c;-><init>(Ln3/k/i/c$a;)V

    .line 17
    iget-object p2, p0, Ln3/b/f/l;->a:Landroid/view/View;

    invoke-static {p2, p1}, Ln3/k/i/s;->l(Landroid/view/View;Ln3/k/i/c;)Ln3/k/i/c;

    move-result-object p1

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
