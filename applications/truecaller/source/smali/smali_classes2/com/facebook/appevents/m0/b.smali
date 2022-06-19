.class public final synthetic Lcom/facebook/appevents/m0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/appevents/m0/b;->a:J

    iput-object p3, p0, Lcom/facebook/appevents/m0/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/m0/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-wide v0, p0, Lcom/facebook/appevents/m0/b;->a:J

    iget-object v2, p0, Lcom/facebook/appevents/m0/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/appevents/m0/b;->c:Landroid/content/Context;

    const-string v4, "$activityName"

    .line 1
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, v4, Lcom/facebook/appevents/m0/l;->b:Ljava/lang/Long;

    .line 4
    :goto_0
    sget-object v6, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    const-string v7, "appContext"

    const/4 v8, 0x4

    if-nez v6, :cond_1

    .line 5
    new-instance v4, Lcom/facebook/appevents/m0/l;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v6, v5, v5, v8}, Lcom/facebook/appevents/m0/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;I)V

    sput-object v4, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    .line 6
    sget-object v4, Lcom/facebook/appevents/m0/m;->a:Lcom/facebook/appevents/m0/m;

    sget-object v4, Lcom/facebook/appevents/m0/f;->i:Ljava/lang/String;

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5, v4, v3}, Lcom/facebook/appevents/m0/m;->b(Ljava/lang/String;Lcom/facebook/appevents/m0/n;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_5

    .line 7
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v0, v9

    .line 8
    sget-object v4, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    sget-object v4, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/d0;->b(Ljava/lang/String;)Lcom/facebook/internal/c0;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v4, 0x3c

    goto :goto_1

    .line 9
    :cond_2
    iget v4, v4, Lcom/facebook/internal/c0;->b:I

    :goto_1
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v11, v4

    cmp-long v4, v9, v11

    if-lez v4, :cond_3

    .line 10
    sget-object v4, Lcom/facebook/appevents/m0/m;->a:Lcom/facebook/appevents/m0/m;

    sget-object v4, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    sget-object v6, Lcom/facebook/appevents/m0/f;->i:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lcom/facebook/appevents/m0/m;->d(Ljava/lang/String;Lcom/facebook/appevents/m0/l;Ljava/lang/String;)V

    .line 11
    sget-object v4, Lcom/facebook/appevents/m0/f;->i:Ljava/lang/String;

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5, v4, v3}, Lcom/facebook/appevents/m0/m;->b(Ljava/lang/String;Lcom/facebook/appevents/m0/n;Ljava/lang/String;Landroid/content/Context;)V

    .line 12
    new-instance v2, Lcom/facebook/appevents/m0/l;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v5, v5, v8}, Lcom/facebook/appevents/m0/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;I)V

    sput-object v2, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x3e8

    cmp-long v2, v9, v2

    if-lez v2, :cond_5

    .line 13
    sget-object v2, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    if-nez v2, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    iget v3, v2, Lcom/facebook/appevents/m0/l;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/facebook/appevents/m0/l;->d:I

    .line 15
    :cond_5
    :goto_2
    sget-object v2, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 16
    iput-object v0, v2, Lcom/facebook/appevents/m0/l;->b:Ljava/lang/Long;

    .line 17
    :goto_3
    sget-object v0, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/appevents/m0/l;->a()V

    :goto_4
    return-void
.end method
