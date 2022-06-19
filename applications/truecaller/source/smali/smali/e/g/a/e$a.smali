.class public final Le/g/a/e$a;
.super Le/g/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/g/a/a<",
        "Le/g/a/r/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/g/a/r/b;

.field public final d:I

.field public e:I

.field public final synthetic f:Le/g/a/e;


# direct methods
.method public constructor <init>(Le/g/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/g/a/e$a;->f:Le/g/a/e;

    invoke-direct {p0}, Le/g/a/a;-><init>()V

    .line 2
    iget p1, p1, Le/g/a/e;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/g/a/e$a;->d:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/g/a/e$a;->e:I

    .line 4
    new-instance p1, Le/g/a/r/b;

    invoke-direct {p1}, Le/g/a/r/b;-><init>()V

    iput-object p1, p0, Le/g/a/e$a;->c:Le/g/a/r/b;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Le/g/a/e$a;->e:I

    iget v1, p0, Le/g/a/e$a;->d:I

    if-ge v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Le/g/a/e$a;->e:I

    iget v1, p0, Le/g/a/e$a;->d:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Le/g/a/e$a;->f:Le/g/a/e;

    iget-object v2, v1, Le/g/a/e;->a:[C

    aget-char v2, v2, v0

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Le/g/a/e$a;->c:Le/g/a/r/b;

    iput v0, v3, Le/g/a/r/b;->a:I

    .line 5
    iput-char v2, v3, Le/g/a/r/b;->b:C

    .line 6
    iget-object v1, v1, Le/g/a/e;->b:[I

    aget v0, v1, v0

    iput v0, v3, Le/g/a/r/b;->c:I

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Le/g/a/e$a;->e:I

    iget v1, p0, Le/g/a/e$a;->d:I

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Le/g/a/e$a;->f:Le/g/a/e;

    iget-boolean v3, v2, Le/g/a/e;->g:Z

    if-eqz v3, :cond_2

    .line 8
    iget-object v3, p0, Le/g/a/e$a;->c:Le/g/a/r/b;

    iput v0, v3, Le/g/a/r/b;->a:I

    const/4 v4, 0x0

    .line 9
    iput-char v4, v3, Le/g/a/r/b;->b:C

    .line 10
    iget-object v2, v2, Le/g/a/e;->b:[I

    aget v1, v2, v1

    iput v1, v3, Le/g/a/r/b;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Le/g/a/e$a;->e:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/g/a/a;->a()Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method
