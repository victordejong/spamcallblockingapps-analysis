.class Lorg/joda/time/b0/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/b0/n;
.implements Lorg/joda/time/b0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/f;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/joda/time/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/joda/time/b0/c$k;->g:I

    .line 3
    iput-object p2, p0, Lorg/joda/time/b0/c$k;->f:Ljava/util/Map;

    return-void
.end method

.method private a(JLorg/joda/time/f;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p3, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Lorg/joda/time/b0/c$k;->g:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/f;->v(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/f;->p(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/joda/time/b0/c$k;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public estimatePrintedLength()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/joda/time/b0/c$k;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public parseInto(Lorg/joda/time/b0/e;Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/c$k;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lorg/joda/time/e;->e()Ljava/util/Map;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {p2, p3, v3}, Lorg/joda/time/b0/c;->W(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    :cond_2
    move-object v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/joda/time/f;

    invoke-virtual {p1, p2}, Lorg/joda/time/b0/e;->z(Lorg/joda/time/f;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    :cond_4
    not-int p1, p3

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/a;ILorg/joda/time/f;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long p4, p5

    sub-long/2addr p2, p4

    .line 1
    invoke-direct {p0, p2, p3, p6, p7}, Lorg/joda/time/b0/c$k;->a(JLorg/joda/time/f;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/t;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
