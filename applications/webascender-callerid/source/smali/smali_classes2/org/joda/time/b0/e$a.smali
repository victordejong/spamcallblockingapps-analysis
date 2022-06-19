.class Lorg/joda/time/b0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/b0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/b0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field f:Lorg/joda/time/c;

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/util/Locale;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lorg/joda/time/b0/e$a;)I
    .locals 2

    .line 1
    iget-object p1, p1, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    .line 2
    iget-object v0, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/b0/e;->j(Lorg/joda/time/h;Lorg/joda/time/h;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/joda/time/b0/e;->j(Lorg/joda/time/h;Lorg/joda/time/h;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/b0/e$a;

    invoke-virtual {p0, p1}, Lorg/joda/time/b0/e$a;->c(Lorg/joda/time/b0/e$a;)I

    move-result p1

    return p1
.end method

.method d(Lorg/joda/time/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    .line 2
    iput p2, p0, Lorg/joda/time/b0/e$a;->g:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/joda/time/b0/e$a;->h:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lorg/joda/time/b0/e$a;->i:Ljava/util/Locale;

    return-void
.end method

.method h(Lorg/joda/time/c;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lorg/joda/time/b0/e$a;->g:I

    .line 3
    iput-object p2, p0, Lorg/joda/time/b0/e$a;->h:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/joda/time/b0/e$a;->i:Ljava/util/Locale;

    return-void
.end method

.method j(JZ)J
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/e$a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    iget v1, p0, Lorg/joda/time/b0/e$a;->g:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/c;->I(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/b0/e$a;->i:Ljava/util/Locale;

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/joda/time/c;->H(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    :goto_0
    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lorg/joda/time/b0/e$a;->f:Lorg/joda/time/c;

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method
