.class Lu/i/e$b;
.super Lu/i/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/i/e$f<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/i/e$f;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic e(Lu/i/h;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu/i/e$b;->j(Lu/i/h;I)[B

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lu/i/e$b;->k([B)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Lu/i/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lu/i/e$b;->l(Lu/i/t;[B)V

    return-void
.end method

.method j(Lu/i/h;I)[B
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lu/i/h;->f(I)[B

    move-result-object p1

    return-object p1
.end method

.method k([B)I
    .locals 0

    .line 1
    array-length p1, p1

    return p1
.end method

.method l(Lu/i/t;[B)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lu/i/t;->h([B)V

    return-void
.end method
