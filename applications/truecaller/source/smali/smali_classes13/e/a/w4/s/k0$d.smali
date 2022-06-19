.class public final Le/a/w4/s/k0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w4/s/k0;->U2(Ljava/lang/String;Ljava/lang/String;ZLs1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Ls1/z/b/l;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ls1/z/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/k0$d;->a:Landroid/widget/TextView;

    iput-object p2, p0, Le/a/w4/s/k0$d;->b:Ls1/z/b/l;

    iput-object p3, p0, Le/a/w4/s/k0$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/w4/s/k0$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/w4/s/k0$d;->b:Ls1/z/b/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    iget-object v3, p0, Le/a/w4/s/k0$d;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
