.class public final synthetic Le/a/e/c/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j3/f$b;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/w;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Le/a/e/c/w;->a:Le/a/e/c/s1;

    .line 1
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Le/a/e/c/s1;->P0:Le/a/e/a/c3;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ln3/b/a/p;->dismiss()V

    .line 5
    iput-object v2, v0, Le/a/e/c/s1;->P0:Le/a/e/a/c3;

    :cond_1
    const v1, 0x7f120726

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    const p1, 0x7f120153

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    const-string p2, ""

    aput-object p2, v3, v4

    .line 6
    invoke-virtual {v0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ln3/b/a/g$a;

    iget-object v0, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-direct {p2, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120152

    .line 8
    invoke-virtual {p2, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 9
    iget-object v0, p2, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p2, v1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 11
    invoke-virtual {p2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    const p1, 0x7f12014e

    .line 12
    invoke-virtual {v0, p1}, Le/a/e/x0;->TA(I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 13
    new-instance p1, Ln3/b/a/g$a;

    iget-object p2, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-direct {p1, p2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const p2, 0x7f120151

    .line 14
    invoke-virtual {p1, p2}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    new-instance p2, Le/a/e/c/y0;

    invoke-direct {p2, v0}, Le/a/e/c/y0;-><init>(Le/a/e/c/s1;)V

    .line 15
    invoke-virtual {p1, v1, p2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 16
    iget-object p2, p1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v4, p2, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 17
    invoke-virtual {p1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    goto :goto_0

    :cond_4
    const p1, 0x7f120150

    .line 18
    invoke-virtual {v0, p1}, Le/a/e/x0;->TA(I)V

    :goto_0
    return-void
.end method
