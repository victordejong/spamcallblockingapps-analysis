.class public final Le/a/y/c/r;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.core.KidFlashService$asyncGetImageUriForContact$1"
    f = "KidFlashService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/flashsdk/core/KidFlashService;

.field public final synthetic f:Lcom/truecaller/flashsdk/models/Flash;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    iput-object p2, p0, Le/a/y/c/r;->f:Lcom/truecaller/flashsdk/models/Flash;

    iput p3, p0, Le/a/y/c/r;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/y/c/r;

    iget-object v0, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v1, p0, Le/a/y/c/r;->f:Lcom/truecaller/flashsdk/models/Flash;

    iget v2, p0, Le/a/y/c/r;->g:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/c/r;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/c/r;

    iget-object v0, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    iget-object v1, p0, Le/a/y/c/r;->f:Lcom/truecaller/flashsdk/models/Flash;

    iget v2, p0, Le/a/y/c/r;->g:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/c/r;-><init>(Lcom/truecaller/flashsdk/core/KidFlashService;Lcom/truecaller/flashsdk/models/Flash;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/c/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 3
    iget-object p1, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->d:Le/a/y/b/f;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 4
    invoke-interface {p1}, Le/a/y/b/f;->a()Z

    move-result p1

    const-string v1, "flash.sender"

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/core/KidFlashService;->d()Le/a/y/b/c;

    move-result-object p1

    iget-object v2, p0, Le/a/y/c/r;->f:Lcom/truecaller/flashsdk/models/Flash;

    .line 6
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 7
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/a/y/c/r;->f:Lcom/truecaller/flashsdk/models/Flash;

    .line 9
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->a()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 12
    iget-object p1, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Le/a/y/c/r;->g:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_3

    .line 13
    :cond_3
    iget-object v1, p0, Le/a/y/c/r;->e:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 14
    iget-object v1, v1, Lcom/truecaller/flashsdk/core/KidFlashService;->e:Le/a/y/b/g0;

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v1, p1, v2}, Le/a/y/b/g0;->f(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_4
    const-string p1, "resourceProvider"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "deviceUtils"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
