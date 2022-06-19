.class public final Le/a/r/b0/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b0/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/b0/d;


# direct methods
.method public constructor <init>(Le/a/r/b0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b0/d$e;->a:Le/a/r/b0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/r/b0/d$e;->a:Le/a/r/b0/d;

    .line 2
    iget-object p1, p1, Le/a/r/b0/d;->i:Le/a/r/b0/i;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Le/a/r/b0/i;->e:Le/a/b0/l/a;

    invoke-interface {v0}, Le/a/b0/l/a;->c()V

    .line 4
    iget-object v0, p1, Le/a/r/b0/i;->b:Le/a/b0/o/a;

    const/4 v1, 0x1

    const-string v2, "ppolicy_accepted"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p1, Le/a/r/b0/i;->b:Le/a/b0/o/a;

    const-string v2, "ppolicy_analytics"

    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/b0/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/r/b0/h;->K0()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
