.class public Le/a/j4/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j4/b/b/d;


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/a/j4/b/b/c;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/a/j4/b/b/c;->b:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Le/a/j4/b/b/c;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Le/a/j4/b/b/c;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Le/a/j4/b/b/c;->e:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Le/a/j4/b/b/c;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Le/a/j4/b/b/c;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Le/a/j4/b/b/c;->h:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Le/a/j4/b/b/c;->i:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Le/a/j4/b/b/c;->j:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Le/a/j4/b/b/c;->k:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Le/a/j4/b/b/c;->l:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Le/a/j4/b/b/c;->m:Ljava/lang/String;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Le/a/j4/b/b/c;->n:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\u00a7"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v2, v0

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    const-string v2, "meta_deserialize_string"

    const-string v4, "tag"

    .line 3
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    aget-object v2, v0, p1

    .line 5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    const-wide/16 v4, 0x0

    .line 7
    :goto_0
    iput-wide v4, p0, Le/a/j4/b/b/c;->a:J

    const/4 v2, 0x1

    .line 8
    aget-object v2, v0, v2

    iput-object v2, p0, Le/a/j4/b/b/c;->c:Ljava/lang/String;

    const/4 v2, 0x2

    .line 9
    aget-object v2, v0, v2

    iput-object v2, p0, Le/a/j4/b/b/c;->d:Ljava/lang/String;

    const/4 v2, 0x3

    .line 10
    aget-object v2, v0, v2

    const/4 v2, 0x4

    .line 11
    aget-object v2, v0, v2

    const/4 v2, 0x5

    .line 12
    aget-object v2, v0, v2

    iput-object v2, p0, Le/a/j4/b/b/c;->i:Ljava/lang/String;

    const/4 v2, 0x6

    .line 13
    aget-object v2, v0, v2

    iput-object v2, p0, Le/a/j4/b/b/c;->j:Ljava/lang/String;

    const/4 v2, 0x7

    .line 14
    aget-object v2, v0, v2

    iput-object v2, p0, Le/a/j4/b/b/c;->k:Ljava/lang/String;

    const/16 v2, 0x8

    .line 15
    aget-object v2, v0, v2

    iput-object v2, p0, Le/a/j4/b/b/c;->m:Ljava/lang/String;

    .line 16
    array-length v2, v0

    const/16 v4, 0xa

    if-le v2, v3, :cond_1

    .line 17
    aget-object v2, v0, v3

    iput-object v2, p0, Le/a/j4/b/b/c;->e:Ljava/lang/String;

    .line 18
    aget-object v2, v0, v4

    .line 19
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 20
    invoke-static {v2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 21
    :goto_1
    iput p1, p0, Le/a/j4/b/b/c;->b:I

    .line 22
    :cond_1
    array-length p1, v0

    if-le p1, v4, :cond_2

    const/16 p1, 0xb

    .line 23
    aget-object p1, v0, p1

    iput-object p1, p0, Le/a/j4/b/b/c;->l:Ljava/lang/String;

    .line 24
    :cond_2
    array-length p1, v0

    const/16 v2, 0xd

    if-le p1, v2, :cond_3

    const/16 p1, 0xc

    .line 25
    aget-object p1, v0, p1

    iput-object p1, p0, Le/a/j4/b/b/c;->f:Ljava/lang/String;

    .line 26
    aget-object p1, v0, v2

    iput-object p1, p0, Le/a/j4/b/b/c;->g:Ljava/lang/String;

    const/16 p1, 0xe

    .line 27
    aget-object p1, v0, p1

    iput-object p1, p0, Le/a/j4/b/b/c;->h:Ljava/lang/String;

    .line 28
    :cond_3
    iput v1, p0, Le/a/j4/b/b/c;->n:I

    .line 29
    array-length p1, v0

    const/16 v1, 0x12

    if-le p1, v1, :cond_4

    .line 30
    aget-object p1, v0, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 31
    :try_start_2
    aget-object p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/j4/b/b/c;->n:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 32
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Le/a/j4/b/b/c;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\u00a7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2, v1, v1, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/j4/b/b/c;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->j:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->m:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/j4/b/b/c;->b:I

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->l:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->g:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/j4/b/b/c;->h:Ljava/lang/String;

    .line 15
    invoke-static {v0, v2, v1, v1, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/j4/b/b/c;->n:I

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
