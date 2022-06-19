.class public final Lm/f0$a$c;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/f0$a;->h([BLm/a0;II)Lm/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lm/a0;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>([BLm/a0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/f0$a$c;->a:[B

    iput-object p2, p0, Lm/f0$a$c;->b:Lm/a0;

    iput p3, p0, Lm/f0$a$c;->c:I

    iput p4, p0, Lm/f0$a$c;->d:I

    invoke-direct {p0}, Lm/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget v0, p0, Lm/f0$a$c;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/f0$a$c;->b:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/f0$a$c;->a:[B

    iget v1, p0, Lm/f0$a$c;->d:I

    iget v2, p0, Lm/f0$a$c;->c:I

    invoke-interface {p1, v0, v1, v2}, Ln/g;->n([BII)Ln/g;

    return-void
.end method
