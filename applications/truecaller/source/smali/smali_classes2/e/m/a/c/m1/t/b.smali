.class public final Le/m/a/c/m1/t/b;
.super Le/m/a/c/m1/c;
.source "SourceFile"


# instance fields
.field public final n:Le/m/a/c/q1/t;

.field public final o:Le/m/a/c/m1/t/e$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/m1/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/m/a/c/q1/t;

    invoke-direct {v0}, Le/m/a/c/q1/t;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    .line 3
    new-instance v0, Le/m/a/c/m1/t/e$b;

    invoke-direct {v0}, Le/m/a/c/m1/t/e$b;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/t/b;->o:Le/m/a/c/m1/t/e$b;

    return-void
.end method


# virtual methods
.method public j([BIZ)Le/m/a/c/m1/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m1/g;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    .line 2
    iput-object p1, p3, Le/m/a/c/q1/t;->a:[B

    .line 3
    iput p2, p3, Le/m/a/c/q1/t;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p3, Le/m/a/c/q1/t;->b:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    iget-object p2, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->a()I

    move-result p2

    if-lez p2, :cond_6

    .line 7
    iget-object p2, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->a()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_5

    .line 8
    iget-object p2, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->e()I

    move-result p2

    .line 9
    iget-object v0, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v0

    const v1, 0x76747463

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    iget-object v1, p0, Le/m/a/c/m1/t/b;->o:Le/m/a/c/m1/t/e$b;

    add-int/lit8 p2, p2, -0x8

    .line 11
    invoke-virtual {v1}, Le/m/a/c/m1/t/e$b;->b()V

    :cond_0
    :goto_1
    if-lez p2, :cond_3

    if-lt p2, p3, :cond_2

    .line 12
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v2

    .line 13
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v3

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v2, p3

    .line 14
    iget-object v4, v0, Le/m/a/c/q1/t;->a:[B

    .line 15
    iget v5, v0, Le/m/a/c/q1/t;->b:I

    .line 16
    invoke-static {v4, v5, v2}, Le/m/a/c/q1/d0;->i([BII)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v2}, Le/m/a/c/q1/t;->D(I)V

    sub-int/2addr p2, v2

    const v2, 0x73747467

    if-ne v3, v2, :cond_1

    .line 18
    invoke-static {v4, v1}, Le/m/a/c/m1/t/f;->c(Ljava/lang/String;Le/m/a/c/m1/t/e$b;)V

    goto :goto_1

    :cond_1
    const v2, 0x7061796c

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Le/m/a/c/m1/t/f;->d(Ljava/lang/String;Ljava/lang/String;Le/m/a/c/m1/t/e$b;Ljava/util/List;)V

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Le/m/a/c/m1/g;

    const-string p2, "Incomplete vtt cue box header found."

    invoke-direct {p1, p2}, Le/m/a/c/m1/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    invoke-virtual {v1}, Le/m/a/c/m1/t/e$b;->a()Le/m/a/c/m1/t/e;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_4
    iget-object p3, p0, Le/m/a/c/m1/t/b;->n:Le/m/a/c/q1/t;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Le/m/a/c/q1/t;->D(I)V

    goto :goto_0

    .line 24
    :cond_5
    new-instance p1, Le/m/a/c/m1/g;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Le/m/a/c/m1/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p2, Le/m/a/c/m1/t/c;

    invoke-direct {p2, p1}, Le/m/a/c/m1/t/c;-><init>(Ljava/util/List;)V

    return-object p2
.end method
