.class public final Lcom/hiya/stingray/t/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/d1$b;,
        Lcom/hiya/stingray/t/d1$c;,
        Lcom/hiya/stingray/t/d1$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/hiya/stingray/t/d1$a;


# instance fields
.field private final a:Lcom/hiya/stingray/t/d1$b;

.field private final b:J

.field private final c:J

.field private final d:Z

.field private final e:Lcom/hiya/stingray/t/d1$c;

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/t/d1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/t/d1$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/t/d1;->g:Lcom/hiya/stingray/t/d1$a;

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/t/d1$b;JJZLcom/hiya/stingray/t/d1$c;J)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/t/d1;->a:Lcom/hiya/stingray/t/d1$b;

    iput-wide p2, p0, Lcom/hiya/stingray/t/d1;->b:J

    iput-wide p4, p0, Lcom/hiya/stingray/t/d1;->c:J

    iput-boolean p6, p0, Lcom/hiya/stingray/t/d1;->d:Z

    iput-object p7, p0, Lcom/hiya/stingray/t/d1;->e:Lcom/hiya/stingray/t/d1$c;

    iput-wide p8, p0, Lcom/hiya/stingray/t/d1;->f:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hiya/stingray/t/d1$b;JJZLcom/hiya/stingray/t/d1$c;JILkotlin/w/c/g;)V
    .locals 8

    and-int/lit8 v0, p10, 0x2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, p2

    :goto_0
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, p4

    :goto_1
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, p6

    :goto_2
    and-int/lit8 v5, p10, 0x10

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object v5, p7

    :goto_3
    and-int/lit8 v6, p10, 0x20

    if-eqz v6, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p8

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v1

    move/from16 p8, v0

    move-object/from16 p9, v5

    move-wide/from16 p10, v6

    invoke-direct/range {p2 .. p11}, Lcom/hiya/stingray/t/d1;-><init>(Lcom/hiya/stingray/t/d1$b;JJZLcom/hiya/stingray/t/d1$c;J)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/t/d1;->d:Z

    return v0
.end method

.method public final b()Lcom/hiya/stingray/t/d1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/d1;->a:Lcom/hiya/stingray/t/d1$b;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/d1;->b:J

    return-wide v0
.end method

.method public final d()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/d1;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Lcom/hiya/stingray/t/d1$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/d1;->e:Lcom/hiya/stingray/t/d1$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/t/d1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/hiya/stingray/t/d1;

    iget-object v0, p0, Lcom/hiya/stingray/t/d1;->a:Lcom/hiya/stingray/t/d1$b;

    iget-object v1, p1, Lcom/hiya/stingray/t/d1;->a:Lcom/hiya/stingray/t/d1$b;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hiya/stingray/t/d1;->b:J

    iget-wide v2, p1, Lcom/hiya/stingray/t/d1;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/hiya/stingray/t/d1;->c:J

    iget-wide v2, p1, Lcom/hiya/stingray/t/d1;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/hiya/stingray/t/d1;->d:Z

    iget-boolean v1, p1, Lcom/hiya/stingray/t/d1;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/t/d1;->e:Lcom/hiya/stingray/t/d1$c;

    iget-object v1, p1, Lcom/hiya/stingray/t/d1;->e:Lcom/hiya/stingray/t/d1$c;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hiya/stingray/t/d1;->f:J

    iget-wide v2, p1, Lcom/hiya/stingray/t/d1;->f:J

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
    .locals 4

    iget-object v0, p0, Lcom/hiya/stingray/t/d1;->a:Lcom/hiya/stingray/t/d1$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/hiya/stingray/t/d1;->b:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/hiya/stingray/t/d1;->c:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hiya/stingray/t/d1;->d:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hiya/stingray/t/d1;->e:Lcom/hiya/stingray/t/d1$c;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/hiya/stingray/t/d1;->f:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionInfo(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/d1;->a:Lcom/hiya/stingray/t/d1$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subscribed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/d1;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/d1;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hasBeenExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/stingray/t/d1;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/d1;->e:Lcom/hiya/stingray/t/d1$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/d1;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
