.class public Le/m/d/r/k/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/h;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Le/m/d/r/d;

.field public final d:Le/m/d/r/k/g;


# direct methods
.method public constructor <init>(Le/m/d/r/k/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/m/d/r/k/i;->a:Z

    .line 3
    iput-boolean v0, p0, Le/m/d/r/k/i;->b:Z

    .line 4
    iput-object p1, p0, Le/m/d/r/k/i;->d:Le/m/d/r/k/g;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/d/r/k/i;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/d/r/k/i;->a:Z

    .line 3
    iget-object v0, p0, Le/m/d/r/k/i;->d:Le/m/d/r/k/g;

    iget-object v1, p0, Le/m/d/r/k/i;->c:Le/m/d/r/d;

    iget-boolean v2, p0, Le/m/d/r/k/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Le/m/d/r/k/g;->a(Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/f;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Le/m/d/r/c;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(Z)Le/m/d/r/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Le/m/d/r/k/i;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/m/d/r/k/i;->a:Z

    .line 7
    iget-object v0, p0, Le/m/d/r/k/i;->d:Le/m/d/r/k/g;

    iget-object v1, p0, Le/m/d/r/k/i;->c:Le/m/d/r/d;

    iget-boolean v2, p0, Le/m/d/r/k/i;->b:Z

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Le/m/d/r/k/g;->b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;

    return-object p0

    .line 9
    :cond_0
    new-instance p1, Le/m/d/r/c;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
