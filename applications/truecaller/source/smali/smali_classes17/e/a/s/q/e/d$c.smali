.class public final Le/a/s/q/e/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/q/e/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/q/e/d;


# direct methods
.method public constructor <init>(Le/a/s/q/e/d;)V
    .locals 0

    iput-object p1, p0, Le/a/s/q/e/d$c;->a:Le/a/s/q/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/s/q/e/d$c;->a:Le/a/s/q/e/d;

    .line 2
    iget-object p1, p1, Le/a/s/q/e/d;->a:Le/a/s/q/e/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/s/q/e/e;->Wb()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
