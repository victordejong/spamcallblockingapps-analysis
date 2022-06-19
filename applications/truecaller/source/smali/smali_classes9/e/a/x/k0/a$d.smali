.class public final Le/a/x/k0/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x/k0/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/x/k0/a;


# direct methods
.method public constructor <init>(Le/a/x/k0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/x/k0/a$d;->a:Le/a/x/k0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/x/k0/a$d;->a:Le/a/x/k0/a;

    .line 2
    iget-object p1, p1, Le/a/x/k0/a;->f:Le/a/x/k0/d;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Le/a/x/k0/f;

    .line 4
    iget-object p1, p1, Le/a/x/k0/f;->g:Le/a/x/l;

    invoke-interface {p1}, Le/a/x/l;->v()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
