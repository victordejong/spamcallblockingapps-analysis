.class public final Le/a/k/a/m/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/m/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/m/b;


# direct methods
.method public constructor <init>(Le/a/k/a/m/b;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/m/b$c;->a:Le/a/k/a/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/k/a/m/b$c;->a:Le/a/k/a/m/b;

    .line 2
    iget-object p1, p1, Le/a/k/a/m/b;->e:Le/a/k/a/m/e;

    if-eqz p1, :cond_1

    .line 3
    sget-object v0, Lcom/truecaller/videocallerid/data/VideoVisibilityConfig;->ALL_CONTACTS:Lcom/truecaller/videocallerid/data/VideoVisibilityConfig;

    const-string v1, "visibilityConfig"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/m/d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Le/a/k/a/m/d;->Tr(Lcom/truecaller/videocallerid/data/VideoVisibilityConfig;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
