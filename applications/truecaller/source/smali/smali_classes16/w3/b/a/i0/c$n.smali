.class public Lw3/b/a/i0/c$n;
.super Lw3/b/a/i0/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# direct methods
.method public constructor <init>(Lw3/b/a/d;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw3/b/a/i0/c$f;-><init>(Lw3/b/a/d;IZ)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lw3/b/a/i0/c$f;->a:Lw3/b/a/d;

    invoke-interface {p2, p3}, Lw3/b/a/b0;->G0(Lw3/b/a/d;)Z

    move-result p3

    const v0, 0xfffd

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    iget-object p3, p0, Lw3/b/a/i0/c$f;->a:Lw3/b/a/d;

    invoke-interface {p2, p3}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result p2

    invoke-static {p1, p2}, Lw3/b/a/i0/h;->b(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$f;->b:I

    return v0
.end method

.method public f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p5, p0, Lw3/b/a/i0/c$f;->a:Lw3/b/a/d;

    invoke-virtual {p5, p4}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p4

    .line 2
    invoke-virtual {p4, p2, p3}, Lw3/b/a/c;->c(J)I

    move-result p2

    invoke-static {p1, p2}, Lw3/b/a/i0/h;->b(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0xfffd

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method
