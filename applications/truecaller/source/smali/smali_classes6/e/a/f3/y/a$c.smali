.class public final Le/a/f3/y/a$c;
.super Le/a/f3/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f3/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final d:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/callbubbles/R$color;->call_bubbles_state_text_default:I

    .line 2
    sget v1, Lcom/truecaller/callbubbles/R$color;->call_bubbles_state_background_default:I

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v2, v0, v1, v2}, Le/a/f3/y/a;-><init>(Ljava/lang/Integer;IILs1/z/c/f;)V

    iput-wide p1, p0, Le/a/f3/y/a$c;->d:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/f3/y/a$c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/f3/y/a$c;

    iget-wide v0, p0, Le/a/f3/y/a$c;->d:J

    iget-wide v2, p1, Le/a/f3/y/a$c;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

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

    iget-wide v0, p0, Le/a/f3/y/a$c;->d:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Ongoing(chronometerBase="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/f3/y/a$c;->d:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
