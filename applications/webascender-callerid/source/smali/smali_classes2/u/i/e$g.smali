.class Lu/i/e$g;
.super Lu/i/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/i/e$f<",
        "Ljava/lang/String;",
        ">;"
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
    invoke-virtual {p0, p1, p2}, Lu/i/e$g;->j(Lu/i/h;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/i/e$g;->k(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Lu/i/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lu/i/e$g;->l(Lu/i/t;Ljava/lang/String;)V

    return-void
.end method

.method j(Lu/i/h;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lu/i/h;->l(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method k(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method l(Lu/i/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    return-void
.end method
