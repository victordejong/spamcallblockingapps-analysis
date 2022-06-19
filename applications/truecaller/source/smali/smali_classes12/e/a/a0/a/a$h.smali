.class public final Le/a/a0/a/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->c8(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a0/a/a;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Le/a/a0/a/a;Z)V
    .locals 0

    iput-object p1, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    iput-boolean p2, p0, Le/a/a0/a/a$h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    .line 3
    sget v1, Le/a/a0/a/a;->D:I

    .line 4
    invoke-virtual {v0}, Le/a/a0/a/a;->VA()Landroid/view/View;

    move-result-object v0

    const-string v1, "includeLayoutChooseSpamType"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    invoke-static {v0}, Le/a/a0/a/a;->RA(Le/a/a0/a/a;)Landroid/view/View;

    move-result-object v0

    const-string v1, "includeLayoutProvideMoreInfo"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    invoke-static {v0}, Le/a/a0/a/a;->RA(Le/a/a0/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 8
    iget-object v0, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    invoke-static {v0}, Le/a/a0/a/a;->RA(Le/a/a0/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Le/a/a0/a/a$h;->a:Le/a/a0/a/a;

    .line 10
    iget-object v0, v0, Le/a/a0/a/a;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "suggestNameVisibility"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/a0/a/a$h;->b:Z

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
