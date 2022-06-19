.class public final Le/a/e/a/a4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/a4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/a4;


# direct methods
.method public constructor <init>(Le/a/e/a/a4;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/a4$b;->a:Le/a/e/a/a4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object p1, p0, Le/a/e/a/a4$b;->a:Le/a/e/a/a4;

    .line 2
    iget-object v1, p1, Le/a/e/a/a4;->f:Ls1/w/f;

    const/4 p1, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    new-instance v3, Le/a/e/a/a4$b$a;

    invoke-direct {v3, p0, p1}, Le/a/e/a/a4$b$a;-><init>(Le/a/e/a/a4$b;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string v0, "uiContext"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1
.end method
