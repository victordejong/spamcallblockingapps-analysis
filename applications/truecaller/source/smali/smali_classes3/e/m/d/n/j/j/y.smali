.class public Le/m/d/n/j/j/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Le/m/d/n/j/j/w;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w;JLjava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/y;->d:Le/m/d/n/j/j/w;

    iput-wide p2, p0, Le/m/d/n/j/j/y;->a:J

    iput-object p4, p0, Le/m/d/n/j/j/y;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Le/m/d/n/j/j/y;->c:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v1, p0, Le/m/d/n/j/j/y;->d:Le/m/d/n/j/j/w;

    invoke-virtual {v1}, Le/m/d/n/j/j/w;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-wide v1, p0, Le/m/d/n/j/j/y;->a:J

    const-wide/16 v3, 0x3e8

    .line 3
    div-long v10, v1, v3

    .line 4
    iget-object v1, p0, Le/m/d/n/j/j/y;->d:Le/m/d/n/j/j/w;

    .line 5
    invoke-virtual {v1}, Le/m/d/n/j/j/w;->f()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Le/m/d/n/j/j/y;->d:Le/m/d/n/j/j/w;

    .line 8
    iget-object v5, v1, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 9
    iget-object v6, p0, Le/m/d/n/j/j/y;->b:Ljava/lang/Throwable;

    iget-object v7, p0, Le/m/d/n/j/j/y;->c:Ljava/lang/Thread;

    .line 10
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    const/4 v12, 0x0

    const-string v9, "error"

    .line 12
    invoke-virtual/range {v5 .. v12}, Le/m/d/n/j/j/q0;->d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    return-void
.end method
