.class public final Lp3/a/n1/v1$b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/n1/y2;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lp3/a/n1/y2;

.field public final synthetic c:Lp3/a/n1/v1;


# direct methods
.method public constructor <init>(Lp3/a/n1/v1;Lp3/a/n1/v1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/v1$b;->c:Lp3/a/n1/v1;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp3/a/n1/v1$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp3/a/n1/y2;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lp3/a/n1/y2;->b(B)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 3
    invoke-virtual {p0, v1, v2, v0}, Lp3/a/n1/v1$b;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 4
    iget-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lp3/a/n1/v1$b;->c:Lp3/a/n1/v1;

    .line 6
    iget-object v0, v0, Lp3/a/n1/v1;->g:Lp3/a/n1/z2;

    .line 7
    invoke-interface {v0, p3}, Lp3/a/n1/z2;->a(I)Lp3/a/n1/y2;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    .line 8
    iget-object v1, p0, Lp3/a/n1/v1$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 9
    iget-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    invoke-interface {v0}, Lp3/a/n1/y2;->a()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    invoke-interface {v0}, Lp3/a/n1/y2;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    iget-object v1, p0, Lp3/a/n1/v1$b;->c:Lp3/a/n1/v1;

    .line 12
    iget-object v1, v1, Lp3/a/n1/v1;->g:Lp3/a/n1/z2;

    .line 13
    invoke-interface {v1, v0}, Lp3/a/n1/z2;->a(I)Lp3/a/n1/y2;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    .line 14
    iget-object v1, p0, Lp3/a/n1/v1$b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lp3/a/n1/v1$b;->b:Lp3/a/n1/y2;

    invoke-interface {v1, p1, p2, v0}, Lp3/a/n1/y2;->write([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method
