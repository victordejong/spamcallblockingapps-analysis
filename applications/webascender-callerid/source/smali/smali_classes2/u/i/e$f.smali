.class abstract Lu/i/e$f;
.super Lu/i/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu/i/e$c;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/i/e$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method final d(Lu/i/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v0}, Lu/i/e$f;->e(Lu/i/h;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract e(Lu/i/h;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/h;",
            "I)TT;"
        }
    .end annotation
.end method

.method final f(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lu/i/e$f;->g(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-static {p1}, Lu/i/e;->a(I)I

    move-result p1

    return p1
.end method

.method abstract g(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method final h(Lu/i/t;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/t;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lu/i/e$f;->g(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lu/i/e$c;->b:I

    invoke-virtual {p1, v1}, Lu/i/t;->l(I)V

    .line 3
    invoke-virtual {p1, v0}, Lu/i/t;->q(I)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lu/i/e$f;->i(Lu/i/t;Ljava/lang/Object;)V

    return-void
.end method

.method abstract i(Lu/i/t;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/i/t;",
            "TT;)V"
        }
    .end annotation
.end method
