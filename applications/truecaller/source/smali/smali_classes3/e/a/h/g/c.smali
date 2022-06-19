.class public final Le/a/h/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Le/a/h/g/x;)V
    .locals 3

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/b/f/g0;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, p2, v2}, Ln3/b/f/g0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 3
    new-instance p2, Le/a/h/g/c$a;

    invoke-direct {p2, p3, p1}, Le/a/h/g/c$a;-><init>(Le/a/h/g/x;I)V

    .line 4
    iput-object p2, v0, Ln3/b/f/g0;->e:Ln3/b/f/g0$b;

    const p1, 0x7f0e0006

    .line 5
    invoke-virtual {v0, p1}, Ln3/b/f/g0;->a(I)V

    .line 6
    iget-object p1, v0, Ln3/b/f/g0;->d:Ln3/b/e/i/l;

    invoke-virtual {p1}, Ln3/b/e/i/l;->f()V

    return-void
.end method
