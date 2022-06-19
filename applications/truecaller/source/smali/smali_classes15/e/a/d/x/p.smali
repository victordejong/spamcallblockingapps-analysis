.class public final Le/a/d/x/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Le/a/d/c0/x1/b;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Le/a/d/x/p;-><init>(ZZZZLe/a/d/c0/x1/b;I)V

    return-void
.end method

.method public constructor <init>(ZZZZLe/a/d/c0/x1/b;)V
    .locals 1

    const-string v0, "audioState"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/d/x/p;->a:Z

    iput-boolean p2, p0, Le/a/d/x/p;->b:Z

    iput-boolean p3, p0, Le/a/d/x/p;->c:Z

    iput-boolean p4, p0, Le/a/d/x/p;->d:Z

    iput-object p5, p0, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    return-void
.end method

.method public constructor <init>(ZZZZLe/a/d/c0/x1/b;I)V
    .locals 1

    and-int/lit8 p5, p6, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p6, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p5, p6, 0x4

    if-eqz p5, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p5, p6, 0x10

    if-eqz p5, :cond_4

    .line 2
    new-instance p5, Le/a/d/c0/x1/b;

    .line 3
    sget-object p6, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    .line 4
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 5
    invoke-direct {p5, p6, v0}, Le/a/d/c0/x1/b;-><init>(Le/a/d/c0/x1/a;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const/4 p5, 0x0

    :goto_0
    const-string p6, "audioState"

    .line 6
    invoke-static {p5, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/d/x/p;->a:Z

    iput-boolean p2, p0, Le/a/d/x/p;->b:Z

    iput-boolean p3, p0, Le/a/d/x/p;->c:Z

    iput-boolean p4, p0, Le/a/d/x/p;->d:Z

    iput-object p5, p0, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    return-void
.end method

.method public static a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;
    .locals 6

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Le/a/d/x/p;->a:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Le/a/d/x/p;->b:Z

    :cond_1
    move v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-boolean p3, p0, Le/a/d/x/p;->c:Z

    :cond_2
    move v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-boolean p4, p0, Le/a/d/x/p;->d:Z

    :cond_3
    move v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    iget-object p5, p0, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    :cond_4
    move-object v5, p5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "audioState"

    invoke-static {v5, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Le/a/d/x/p;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Le/a/d/x/p;-><init>(ZZZZLe/a/d/c0/x1/b;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d/x/p;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d/x/p;

    iget-boolean v0, p0, Le/a/d/x/p;->a:Z

    iget-boolean v1, p1, Le/a/d/x/p;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/x/p;->b:Z

    iget-boolean v1, p1, Le/a/d/x/p;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/x/p;->c:Z

    iget-boolean v1, p1, Le/a/d/x/p;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/d/x/p;->d:Z

    iget-boolean v1, p1, Le/a/d/x/p;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    iget-object p1, p1, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Le/a/d/x/p;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/d/x/p;->b:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/d/x/p;->c:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/d/x/p;->d:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Le/a/d/c0/x1/b;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "VoipServiceSetting(isIncoming="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/d/x/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/x/p;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onHold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/x/p;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d/x/p;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
