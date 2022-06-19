.class public final Le/m/a/c/m1/r/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:Ljava/lang/String;

.field public m:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/m/a/c/m1/r/d;->f:I

    .line 3
    iput v0, p0, Le/m/a/c/m1/r/d;->g:I

    .line 4
    iput v0, p0, Le/m/a/c/m1/r/d;->h:I

    .line 5
    iput v0, p0, Le/m/a/c/m1/r/d;->i:I

    .line 6
    iput v0, p0, Le/m/a/c/m1/r/d;->j:I

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/m1/r/d;)Le/m/a/c/m1/r/d;
    .locals 3

    if-eqz p1, :cond_8

    .line 1
    iget-boolean v0, p0, Le/m/a/c/m1/r/d;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Le/m/a/c/m1/r/d;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Le/m/a/c/m1/r/d;->b:I

    .line 3
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 4
    iput v0, p0, Le/m/a/c/m1/r/d;->b:I

    .line 5
    iput-boolean v1, p0, Le/m/a/c/m1/r/d;->c:Z

    .line 6
    :cond_0
    iget v0, p0, Le/m/a/c/m1/r/d;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 7
    iget v0, p1, Le/m/a/c/m1/r/d;->h:I

    iput v0, p0, Le/m/a/c/m1/r/d;->h:I

    .line 8
    :cond_1
    iget v0, p0, Le/m/a/c/m1/r/d;->i:I

    if-ne v0, v2, :cond_2

    .line 9
    iget v0, p1, Le/m/a/c/m1/r/d;->i:I

    iput v0, p0, Le/m/a/c/m1/r/d;->i:I

    .line 10
    :cond_2
    iget-object v0, p0, Le/m/a/c/m1/r/d;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p1, Le/m/a/c/m1/r/d;->a:Ljava/lang/String;

    iput-object v0, p0, Le/m/a/c/m1/r/d;->a:Ljava/lang/String;

    .line 12
    :cond_3
    iget v0, p0, Le/m/a/c/m1/r/d;->f:I

    if-ne v0, v2, :cond_4

    .line 13
    iget v0, p1, Le/m/a/c/m1/r/d;->f:I

    iput v0, p0, Le/m/a/c/m1/r/d;->f:I

    .line 14
    :cond_4
    iget v0, p0, Le/m/a/c/m1/r/d;->g:I

    if-ne v0, v2, :cond_5

    .line 15
    iget v0, p1, Le/m/a/c/m1/r/d;->g:I

    iput v0, p0, Le/m/a/c/m1/r/d;->g:I

    .line 16
    :cond_5
    iget-object v0, p0, Le/m/a/c/m1/r/d;->m:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 17
    iget-object v0, p1, Le/m/a/c/m1/r/d;->m:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Le/m/a/c/m1/r/d;->m:Landroid/text/Layout$Alignment;

    .line 18
    :cond_6
    iget v0, p0, Le/m/a/c/m1/r/d;->j:I

    if-ne v0, v2, :cond_7

    .line 19
    iget v0, p1, Le/m/a/c/m1/r/d;->j:I

    iput v0, p0, Le/m/a/c/m1/r/d;->j:I

    .line 20
    iget v0, p1, Le/m/a/c/m1/r/d;->k:F

    iput v0, p0, Le/m/a/c/m1/r/d;->k:F

    .line 21
    :cond_7
    iget-boolean v0, p0, Le/m/a/c/m1/r/d;->e:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Le/m/a/c/m1/r/d;->e:Z

    if-eqz v0, :cond_8

    .line 22
    iget p1, p1, Le/m/a/c/m1/r/d;->d:I

    .line 23
    iput p1, p0, Le/m/a/c/m1/r/d;->d:I

    .line 24
    iput-boolean v1, p0, Le/m/a/c/m1/r/d;->e:Z

    :cond_8
    return-object p0
.end method

.method public b()I
    .locals 4

    .line 1
    iget v0, p0, Le/m/a/c/m1/r/d;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Le/m/a/c/m1/r/d;->i:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2
    :goto_0
    iget v3, p0, Le/m/a/c/m1/r/d;->i:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method
