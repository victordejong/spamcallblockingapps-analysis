.class public final Le/a/d/c/a/p/a/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/w;->o(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/w;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/w;Z)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/w$a;->a:Le/a/d/c/a/p/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/d/c/a/p/a/w$a;->a:Le/a/d/c/a/p/a/w;

    invoke-virtual {p1}, Le/a/d/c/a/p/a/w;->getPresenter$voip_release()Le/a/d/c/a/p/a/o;

    move-result-object p1

    check-cast p1, Le/a/d/c/a/p/a/u;

    .line 2
    iget-object p1, p1, Le/a/d/c/a/p/a/u;->e:Le/a/d/v/l/a;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Le/a/d/v/l/a;->getState()Lq3/a/x2/i1;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/l/c;

    sget-object v1, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    invoke-virtual {v0, v1}, Le/a/d/a0/a;->a(Le/a/d/a0/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Le/a/d/v/l/e/b;->g()Lq3/a/p1;

    :cond_1
    :goto_0
    return-void
.end method
