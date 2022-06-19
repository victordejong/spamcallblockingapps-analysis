.class public final Le/g/a/o$a;
.super Le/g/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/g/a/a<",
        "Le/g/a/r/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/g/a/r/d;

.field public final d:I

.field public e:I

.field public final synthetic f:Le/g/a/o;


# direct methods
.method public constructor <init>(Le/g/a/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/g/a/o$a;->f:Le/g/a/o;

    invoke-direct {p0}, Le/g/a/a;-><init>()V

    .line 2
    iget p1, p1, Le/g/a/o;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/g/a/o$a;->d:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/g/a/o$a;->e:I

    .line 4
    new-instance p1, Le/g/a/r/d;

    invoke-direct {p1}, Le/g/a/r/d;-><init>()V

    iput-object p1, p0, Le/g/a/o$a;->c:Le/g/a/r/d;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Le/g/a/o$a;->e:I

    iget v1, p0, Le/g/a/o$a;->d:I

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Le/g/a/o$a;->e:I

    iget v1, p0, Le/g/a/o$a;->d:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Le/g/a/o$a;->f:Le/g/a/o;

    iget-object v4, v1, Le/g/a/o;->a:[J

    aget-wide v5, v4, v0

    cmp-long v4, v5, v2

    if-eqz v4, :cond_0

    .line 4
    iget-object v2, p0, Le/g/a/o$a;->c:Le/g/a/r/d;

    iput v0, v2, Le/g/a/r/d;->a:I

    .line 5
    iput-wide v5, v2, Le/g/a/r/d;->b:J

    .line 6
    iget-object v1, v1, Le/g/a/o;->b:[I

    aget v0, v1, v0

    iput v0, v2, Le/g/a/r/d;->c:I

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Le/g/a/o$a;->e:I

    iget v1, p0, Le/g/a/o$a;->d:I

    if-ne v0, v1, :cond_2

    iget-object v4, p0, Le/g/a/o$a;->f:Le/g/a/o;

    iget-boolean v5, v4, Le/g/a/o;->g:Z

    if-eqz v5, :cond_2

    .line 8
    iget-object v5, p0, Le/g/a/o$a;->c:Le/g/a/r/d;

    iput v0, v5, Le/g/a/r/d;->a:I

    .line 9
    iput-wide v2, v5, Le/g/a/r/d;->b:J

    .line 10
    iget-object v2, v4, Le/g/a/o;->b:[I

    aget v1, v2, v1

    iput v1, v5, Le/g/a/r/d;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Le/g/a/o$a;->e:I

    move-object v2, v5

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/g/a/a;->a()Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method
