.class public Ls1/a/a/a/v0/h/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/h/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/h/s$c;

.field public b:Ls1/a/a/a/v0/h/c$a;

.field public c:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/s;Ls1/a/a/a/v0/h/s$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ls1/a/a/a/v0/h/s$c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ls1/a/a/a/v0/h/s$c;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/s$a;)V

    iput-object p2, p0, Ls1/a/a/a/v0/h/s$d;->a:Ls1/a/a/a/v0/h/s$c;

    .line 3
    invoke-virtual {p2}, Ls1/a/a/a/v0/h/s$c;->a()Ls1/a/a/a/v0/h/o;

    move-result-object p2

    invoke-virtual {p2}, Ls1/a/a/a/v0/h/o;->i()Ls1/a/a/a/v0/h/c$a;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/h/s$d;->b:Ls1/a/a/a/v0/h/c$a;

    .line 4
    iget p1, p1, Ls1/a/a/a/v0/h/s;->b:I

    .line 5
    iput p1, p0, Ls1/a/a/a/v0/h/s$d;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/h/s$d;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/h/s$d;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/s$d;->b:Ls1/a/a/a/v0/h/c$a;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/h/s$d;->a:Ls1/a/a/a/v0/h/s$c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/s$c;->a()Ls1/a/a/a/v0/h/o;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/h/o;->i()Ls1/a/a/a/v0/h/c$a;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/h/s$d;->b:Ls1/a/a/a/v0/h/c$a;

    .line 3
    :cond_0
    iget v0, p0, Ls1/a/a/a/v0/h/s$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls1/a/a/a/v0/h/s$d;->c:I

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/h/s$d;->b:Ls1/a/a/a/v0/h/c$a;

    invoke-interface {v0}, Ls1/a/a/a/v0/h/c$a;->nextByte()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
