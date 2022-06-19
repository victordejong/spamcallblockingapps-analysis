.class public final Le/a/r3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/r3/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ProgressBar;

.field public final synthetic b:Ln3/b/a/g;

.field public final synthetic c:Ls1/z/c/y;

.field public final synthetic d:Le/a/r3/g;

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Ln3/b/a/g;Ls1/z/c/y;Le/a/r3/g;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Le/a/r3/c;->a:Landroid/widget/ProgressBar;

    iput-object p2, p0, Le/a/r3/c;->b:Ln3/b/a/g;

    iput-object p3, p0, Le/a/r3/c;->c:Ls1/z/c/y;

    iput-object p4, p0, Le/a/r3/c;->d:Le/a/r3/g;

    iput-object p5, p0, Le/a/r3/c;->e:Landroid/app/Activity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/r3/b;

    .line 2
    instance-of p2, p1, Le/a/r3/b$c;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Le/a/r3/c;->a:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 5
    check-cast p1, Le/a/r3/b$c;

    .line 6
    iget p1, p1, Le/a/r3/b$c;->a:I

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of p2, p1, Le/a/r3/b$d;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p0, Le/a/r3/c;->b:Ln3/b/a/g;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    .line 10
    iget-object p1, p0, Le/a/r3/c;->c:Ls1/z/c/y;

    iput-boolean v0, p1, Ls1/z/c/y;->a:Z

    goto :goto_0

    .line 11
    :cond_1
    instance-of p2, p1, Le/a/r3/b$b;

    if-eqz p2, :cond_2

    .line 12
    iget-object p1, p0, Le/a/r3/c;->b:Ln3/b/a/g;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    goto :goto_0

    .line 13
    :cond_2
    instance-of p2, p1, Le/a/r3/b$a;

    if-eqz p2, :cond_3

    .line 14
    iget-object p1, p0, Le/a/r3/c;->b:Ln3/b/a/g;

    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    goto :goto_0

    .line 15
    :cond_3
    instance-of p2, p1, Le/a/r3/b$f;

    if-eqz p2, :cond_4

    .line 16
    iget-object p2, p0, Le/a/r3/c;->b:Ln3/b/a/g;

    invoke-virtual {p2}, Ln3/b/a/p;->dismiss()V

    .line 17
    iget-object p2, p0, Le/a/r3/c;->d:Le/a/r3/g;

    check-cast p1, Le/a/r3/b$f;

    iget-object v0, p0, Le/a/r3/c;->e:Landroid/app/Activity;

    const/16 v1, 0x29a

    invoke-interface {p2, p1, v0, v1}, Le/a/r3/g;->a(Le/a/r3/b$f;Landroid/app/Activity;I)Z

    goto :goto_0

    .line 18
    :cond_4
    instance-of p1, p1, Le/a/r3/b$e;

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Le/a/r3/c;->a:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 20
    :cond_5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
