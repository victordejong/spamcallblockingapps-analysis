.class public final Le/a/d/c0/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/m0;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/d/c0/m0;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            "Ls1/w/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/m0;->a:Landroid/content/Context;

    sget v1, Lcom/truecaller/voip/R$style;->ThemeX_Dark:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    iget-object v1, p0, Le/a/d/c0/m0;->b:Ls1/w/f;

    new-instance v2, Le/a/b0/a/a0/a;

    .line 2
    sget v3, Lcom/truecaller/common/ui/R$dimen;->notification_tcx_call_avatar_size:I

    invoke-direct {v2, v0, v1, v3}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, p1, v0, v1, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 4
    iget p1, v2, Le/a/b0/a/a0/a;->W:I

    invoke-virtual {v2, p1, p2}, Le/a/b0/a/a0/a;->rk(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
