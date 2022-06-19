.class public Lcom/truecaller/common/tag/TagService;
.super Ln3/k/a/a0;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object v0

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "action"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/b0/c;->H()Le/a/b0/p/d;

    move-result-object p1

    invoke-interface {p1}, Le/a/b0/p/d;->b()V

    :cond_1
    return-void
.end method
