.class public Le/a/b/m/l0$c;
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
    iput-object p1, p0, Le/a/b/m/l0$c;->a:Le/a/b/m/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/m/l0$c;->a:Le/a/b/m/l0;

    iget-object v0, v0, Le/a/b/m/k0;->h:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->z0(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/b/m/l0$c;->a:Le/a/b/m/l0;

    iget-object v1, v1, Le/a/b/m/k0;->s:Le/a/b/a/h/c/l;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Le/a/b/a/h/c/l;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
