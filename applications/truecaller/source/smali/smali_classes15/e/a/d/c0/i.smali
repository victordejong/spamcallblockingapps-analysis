.class public final Le/a/d/c0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/d/c0/i;->a:J

    return-void
.end method

.method public static final a(Le/a/d/c0/k1;Ljava/lang/String;Le/a/d/c0/l1;)Le/a/d/b0/a;
    .locals 13

    .line 1
    iget v0, p2, Le/a/d/c0/l1;->a:I

    .line 2
    iget v1, p0, Le/a/d/c0/k1;->i:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    new-instance v12, Le/a/d/b0/a;

    .line 4
    iget-object v2, p0, Le/a/d/c0/k1;->c:Ljava/lang/Long;

    .line 5
    iget-object v3, p0, Le/a/d/c0/k1;->a:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Le/a/d/c0/k1;->d:Ljava/lang/String;

    .line 7
    iget-object v6, p0, Le/a/d/c0/k1;->e:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Le/a/d/c0/k1;->h:Lcom/truecaller/voip/VoipUserBadge;

    .line 9
    iget-boolean v8, p2, Le/a/d/c0/l1;->b:Z

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 11
    iget-boolean v10, p0, Le/a/d/c0/k1;->f:Z

    .line 12
    iget-boolean v11, p0, Le/a/d/c0/k1;->g:Z

    move-object v1, v12

    move-object v5, p1

    .line 13
    invoke-direct/range {v1 .. v11}, Le/a/d/b0/a;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUserBadge;ZLjava/lang/Integer;ZZ)V

    return-object v12
.end method
