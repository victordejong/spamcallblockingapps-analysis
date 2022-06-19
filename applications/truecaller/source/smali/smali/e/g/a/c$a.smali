.class public final Le/g/a/c$a;
.super Le/g/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/g/a/a<",
        "Le/g/a/r/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/g/a/r/a;

.field public final d:I

.field public e:I

.field public final synthetic f:Le/g/a/c;


# direct methods
.method public constructor <init>(Le/g/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/g/a/c$a;->f:Le/g/a/c;

    invoke-direct {p0}, Le/g/a/a;-><init>()V

    .line 2
    iget p1, p1, Le/g/a/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/g/a/c$a;->d:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/g/a/c$a;->e:I

    .line 4
    new-instance p1, Le/g/a/r/a;

    invoke-direct {p1}, Le/g/a/r/a;-><init>()V

    iput-object p1, p0, Le/g/a/c$a;->c:Le/g/a/r/a;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Le/g/a/c$a;->e:I

    iget v1, p0, Le/g/a/c$a;->d:I

    if-ge v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Le/g/a/c$a;->e:I

    iget v1, p0, Le/g/a/c$a;->d:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Le/g/a/c$a;->f:Le/g/a/c;

    iget-object v2, v1, Le/g/a/c;->a:[C

    aget-char v2, v2, v0

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Le/g/a/c$a;->c:Le/g/a/r/a;

    iput v0, v3, Le/g/a/r/a;->a:I

    .line 5
    iput-char v2, v3, Le/g/a/r/a;->b:C

    .line 6
    iget-object v1, v1, Le/g/a/c;->b:[C

    aget-char v0, v1, v0

    iput-char v0, v3, Le/g/a/r/a;->c:C

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Le/g/a/c$a;->e:I

    iget v1, p0, Le/g/a/c$a;->d:I

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Le/g/a/c$a;->f:Le/g/a/c;

    iget-boolean v3, v2, Le/g/a/c;->g:Z

    if-eqz v3, :cond_2

    .line 8
    iget-object v3, p0, Le/g/a/c$a;->c:Le/g/a/r/a;

    iput v0, v3, Le/g/a/r/a;->a:I

    const/4 v4, 0x0

    .line 9
    iput-char v4, v3, Le/g/a/r/a;->b:C

    .line 10
    iget-object v2, v2, Le/g/a/c;->b:[C

    aget-char v1, v2, v1

    iput-char v1, v3, Le/g/a/r/a;->c:C

    add-int/lit8 v0, v0, 0x1

    .line 11
    iput v0, p0, Le/g/a/c$a;->e:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Le/g/a/a;->a()Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method
