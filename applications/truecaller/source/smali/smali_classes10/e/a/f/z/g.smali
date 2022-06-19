.class public final Le/a/f/z/g;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    const/high16 p1, -0x80000000

    .line 2
    invoke-direct {p0, p1, p1}, Le/f/a/r/k/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/f/z/g;->d:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method
