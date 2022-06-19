.class public final Le/a/c/a/b/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/r;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/r;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/s;->a:Le/a/c/a/b/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "binding.changeSettings"

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/c/a/b/a/s;->a:Le/a/c/a/b/a/r;

    .line 2
    sget-object v0, Le/a/c/a/b/a/r;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {p2}, Le/a/c/a/b/a/r;->OA()Le/a/c/a/g/s;

    move-result-object p2

    .line 4
    iget-object p2, p2, Le/a/c/a/g/s;->d:Landroid/widget/TextView;

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Le/a/c/a/b/a/s;->a:Le/a/c/a/b/a/r;

    .line 6
    sget-object v0, Le/a/c/a/b/a/r;->i:[Ls1/a/l;

    .line 7
    invoke-virtual {p2}, Le/a/c/a/b/a/r;->OA()Le/a/c/a/g/s;

    move-result-object p2

    .line 8
    iget-object p2, p2, Le/a/c/a/g/s;->d:Landroid/widget/TextView;

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    :goto_0
    return-void
.end method
