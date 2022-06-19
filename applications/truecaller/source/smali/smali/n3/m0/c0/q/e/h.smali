.class public Ln3/m0/c0/q/e/h;
.super Ln3/m0/c0/q/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/m0/c0/q/e/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ln3/m0/c0/q/f/g;->a(Landroid/content/Context;Ln3/m0/c0/t/x/a;)Ln3/m0/c0/q/f/g;

    move-result-object p1

    .line 2
    iget-object p1, p1, Ln3/m0/c0/q/f/g;->d:Ln3/m0/c0/q/f/f;

    .line 3
    invoke-direct {p0, p1}, Ln3/m0/c0/q/e/c;-><init>(Ln3/m0/c0/q/f/d;)V

    return-void
.end method


# virtual methods
.method public b(Ln3/m0/c0/s/p;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 2
    iget-boolean p1, p1, Ln3/m0/d;->e:Z

    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
