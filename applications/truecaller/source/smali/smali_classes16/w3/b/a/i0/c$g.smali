.class public Lw3/b/a/i0/c$g;
.super Lw3/b/a/i0/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final d:I


# direct methods
.method public constructor <init>(Lw3/b/a/d;IZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lw3/b/a/i0/c$f;-><init>(Lw3/b/a/d;IZ)V

    .line 2
    iput p4, p0, Lw3/b/a/i0/c$g;->d:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lw3/b/a/i0/c$f;->a:Lw3/b/a/d;

    invoke-interface {p2, p3}, Lw3/b/a/b0;->G0(Lw3/b/a/d;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    iget-object p3, p0, Lw3/b/a/i0/c$f;->a:Lw3/b/a/d;

    invoke-interface {p2, p3}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result p2

    iget p3, p0, Lw3/b/a/i0/c$g;->d:I

    invoke-static {p1, p2, p3}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget p2, p0, Lw3/b/a/i0/c$g;->d:I

    invoke-static {p1, p2}, Lw3/b/a/i0/c;->q(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget p2, p0, Lw3/b/a/i0/c$g;->d:I

    invoke-static {p1, p2}, Lw3/b/a/i0/c;->q(Ljava/lang/Appendable;I)V

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

    iget p3, p0, Lw3/b/a/i0/c$g;->d:I

    invoke-static {p1, p2, p3}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget p2, p0, Lw3/b/a/i0/c$g;->d:I

    invoke-static {p1, p2}, Lw3/b/a/i0/c;->q(Ljava/lang/Appendable;I)V

    :goto_0
    return-void
.end method
