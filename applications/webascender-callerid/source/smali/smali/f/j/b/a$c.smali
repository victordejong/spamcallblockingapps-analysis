.class Lf/j/b/a$c;
.super Lf/h/l/c0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lf/j/b/a;


# direct methods
.method constructor <init>(Lf/j/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/j/b/a$c;->b:Lf/j/b/a;

    invoke-direct {p0}, Lf/h/l/c0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lf/h/l/c0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/j/b/a$c;->b:Lf/j/b/a;

    .line 2
    invoke-virtual {v0, p1}, Lf/j/b/a;->H(I)Lf/h/l/c0/c;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lf/h/l/c0/c;->M(Lf/h/l/c0/c;)Lf/h/l/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lf/h/l/c0/c;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lf/j/b/a$c;->b:Lf/j/b/a;

    iget p1, p1, Lf/j/b/a;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf/j/b/a$c;->b:Lf/j/b/a;

    iget p1, p1, Lf/j/b/a;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lf/j/b/a$c;->a(I)Lf/h/l/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public e(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/j/b/a$c;->b:Lf/j/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lf/j/b/a;->P(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
