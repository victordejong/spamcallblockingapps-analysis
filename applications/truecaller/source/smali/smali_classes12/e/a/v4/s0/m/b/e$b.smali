.class public final Le/a/v4/s0/m/b/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v4/s0/m/b/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v4/s0/m/b/e;


# direct methods
.method public constructor <init>(Le/a/v4/s0/m/b/e;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/m/b/e$b;->a:Le/a/v4/s0/m/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/v4/s0/m/b/e$b;->a:Le/a/v4/s0/m/b/e;

    .line 2
    iget-object p1, p1, Le/a/v4/s0/m/b/e;->e:Le/a/v4/s0/m/b/b;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Le/a/v4/s0/m/b/c;

    .line 4
    iget-object p1, p1, Le/a/v4/e;->a:Ljava/lang/Object;

    .line 5
    check-cast p1, Le/a/v4/s0/m/b/d;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/v4/s0/m/b/d;->Cf()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "dialogPresenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
