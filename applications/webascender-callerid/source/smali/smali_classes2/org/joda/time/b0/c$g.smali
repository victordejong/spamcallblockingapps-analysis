.class Lorg/joda/time/b0/c$g;
.super Lorg/joda/time/b0/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field protected final i:I


# direct methods
.method protected constructor <init>(Lorg/joda/time/d;IZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/b0/c$f;-><init>(Lorg/joda/time/d;IZ)V

    .line 2
    iput p4, p0, Lorg/joda/time/b0/c$g;->i:I

    return-void
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/b0/c$f;->g:I

    return v0
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/a;ILorg/joda/time/f;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p5, p0, Lorg/joda/time/b0/c$f;->f:Lorg/joda/time/d;

    invoke-virtual {p5, p4}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object p4

    .line 2
    invoke-virtual {p4, p2, p3}, Lorg/joda/time/c;->c(J)I

    move-result p2

    iget p3, p0, Lorg/joda/time/b0/c$g;->i:I

    invoke-static {p1, p2, p3}, Lorg/joda/time/b0/i;->a(Ljava/lang/Appendable;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget p2, p0, Lorg/joda/time/b0/c$g;->i:I

    invoke-static {p1, p2}, Lorg/joda/time/b0/c;->P(Ljava/lang/Appendable;I)V

    :goto_0
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/t;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object p3, p0, Lorg/joda/time/b0/c$f;->f:Lorg/joda/time/d;

    invoke-interface {p2, p3}, Lorg/joda/time/t;->N(Lorg/joda/time/d;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    :try_start_0
    iget-object p3, p0, Lorg/joda/time/b0/c$f;->f:Lorg/joda/time/d;

    invoke-interface {p2, p3}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result p2

    iget p3, p0, Lorg/joda/time/b0/c$g;->i:I

    invoke-static {p1, p2, p3}, Lorg/joda/time/b0/i;->a(Ljava/lang/Appendable;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget p2, p0, Lorg/joda/time/b0/c$g;->i:I

    invoke-static {p1, p2}, Lorg/joda/time/b0/c;->P(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lorg/joda/time/b0/c$g;->i:I

    invoke-static {p1, p2}, Lorg/joda/time/b0/c;->P(Ljava/lang/Appendable;I)V

    :goto_0
    return-void
.end method
