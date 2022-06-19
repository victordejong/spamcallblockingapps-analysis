.class public Ls1/a/a/a/v0/h/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ls1/a/a/a/v0/h/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/h/c;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v0

    .line 3
    sget-object v1, Ls1/a/a/a/v0/h/s;->h:[I

    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 5
    aget v2, v1, v2

    .line 6
    iget-object v3, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/h/c;

    invoke-virtual {v3}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    aget v0, v1, v0

    .line 8
    iget-object v1, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/c;

    .line 9
    :goto_0
    iget-object v2, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/h/c;

    invoke-virtual {v2}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 10
    iget-object v2, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/h/c;

    .line 11
    new-instance v3, Ls1/a/a/a/v0/h/s;

    .line 12
    invoke-direct {v3, v2, v1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    move-object v1, v3

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Ls1/a/a/a/v0/h/s;

    .line 14
    invoke-direct {v0, v1, p1}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    .line 15
    :goto_1
    iget-object p1, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    iget p1, v0, Ls1/a/a/a/v0/h/s;->b:I

    .line 17
    sget-object v1, Ls1/a/a/a/v0/h/s;->h:[I

    .line 18
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 19
    aget p1, v1, p1

    .line 20
    iget-object v1, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/h/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/h/c;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    .line 21
    iget-object p1, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/h/c;

    .line 22
    new-instance v1, Ls1/a/a/a/v0/h/s;

    .line 23
    invoke-direct {v1, p1, v0}, Ls1/a/a/a/v0/h/s;-><init>(Ls1/a/a/a/v0/h/c;Ls1/a/a/a/v0/h/c;)V

    move-object v0, v1

    goto :goto_1

    .line 24
    :cond_4
    iget-object p1, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_5
    :goto_2
    iget-object v0, p0, Ls1/a/a/a/v0/h/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 26
    :cond_6
    instance-of v0, p1, Ls1/a/a/a/v0/h/s;

    if-eqz v0, :cond_7

    .line 27
    check-cast p1, Ls1/a/a/a/v0/h/s;

    .line 28
    iget-object v0, p1, Ls1/a/a/a/v0/h/s;->c:Ls1/a/a/a/v0/h/c;

    .line 29
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/h/s$b;->a(Ls1/a/a/a/v0/h/c;)V

    .line 30
    iget-object p1, p1, Ls1/a/a/a/v0/h/s;->d:Ls1/a/a/a/v0/h/c;

    .line 31
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/h/s$b;->a(Ls1/a/a/a/v0/h/c;)V

    :goto_3
    return-void

    .line 32
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-static {v1, v2, p1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
