.class public final Le/a/g4/a/d/a$b;
.super Le/a/g4/a/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g4/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:J

.field public final c:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(JLandroid/app/PendingIntent;)V
    .locals 1

    const-string v0, "callRecordIntent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p3, v0}, Le/a/g4/a/d/a;-><init>(Landroid/app/PendingIntent;Ls1/z/c/f;)V

    iput-wide p1, p0, Le/a/g4/a/d/a$b;->b:J

    iput-object p3, p0, Le/a/g4/a/d/a$b;->c:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/a$b;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/g4/a/d/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/g4/a/d/a$b;

    iget-wide v0, p0, Le/a/g4/a/d/a$b;->b:J

    iget-wide v2, p1, Le/a/g4/a/d/a$b;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Le/a/g4/a/d/a$b;->c:Landroid/app/PendingIntent;

    iget-object p1, p1, Le/a/g4/a/d/a$b;->c:Landroid/app/PendingIntent;

    .line 2
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
    .locals 2

    iget-wide v0, p0, Le/a/g4/a/d/a$b;->b:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v1, p0, Le/a/g4/a/d/a$b;->c:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Started(startTimeBase="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/g4/a/d/a$b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callRecordIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Le/a/g4/a/d/a$b;->c:Landroid/app/PendingIntent;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
