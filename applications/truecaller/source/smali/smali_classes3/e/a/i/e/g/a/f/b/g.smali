.class public abstract Le/a/i/e/g/a/f/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/i/e/g/a/f/b/g$a;

    invoke-direct {v0, p0, p1}, Le/a/i/e/g/a/f/b/g$a;-><init>(Le/a/i/e/g/a/f/b/g;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e/g/a/f/b/g;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/i/e/g/a/f/b/g;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract b()I
.end method

.method public abstract c(Landroid/view/View;)V
.end method
