.class public final Le/a/c/a/b/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/b;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/b$c;->a:Le/a/c/a/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/b/a/b$c;->a:Le/a/c/a/b/a/b;

    .line 2
    iget-object p1, p1, Le/a/c/a/b/a/b;->b:Le/a/c/e/c;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Le/a/c/a/b/c/d;->g:Le/a/c/a/b/c/d;

    .line 4
    sget-object v0, Le/a/c/a/b/c/d;->e:Le/a/c/r/d/b;

    .line 5
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 6
    iget-object p1, p0, Le/a/c/a/b/a/b$c;->a:Le/a/c/a/b/a/b;

    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    return-void

    :cond_0
    const-string p1, "analyticsManager"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
