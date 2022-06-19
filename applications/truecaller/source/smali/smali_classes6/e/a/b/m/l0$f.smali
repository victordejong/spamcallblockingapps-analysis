.class public Le/a/b/m/l0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/n/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/m/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/m/l0;


# direct methods
.method public constructor <init>(Le/a/b/m/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b/m/l0$f;->a:Le/a/b/m/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/b/m/l0$f;->a:Le/a/b/m/l0;

    iget-object v0, v0, Le/a/b/m/k0;->p:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->z0(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/b/m/l0$f;->a:Le/a/b/m/l0;

    iget-object v1, v1, Le/a/b/m/k0;->s:Le/a/b/a/h/c/l;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 3
    iget-object v1, v1, Le/a/b/a/h/c/l;->c:Ln3/n/j;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Ln3/n/j;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
