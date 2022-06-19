.class public final Le/a/i/c/a/s;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/TimerTask;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/c/a/q;


# direct methods
.method public constructor <init>(Le/a/i/c/a/q;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/s;->b:Le/a/i/c/a/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/i/c/a/s;->b:Le/a/i/c/a/q;

    invoke-static {v0}, Le/a/i/c/a/q;->e(Le/a/i/c/a/q;)Ljava/util/Timer;

    move-result-object v1

    new-instance v0, Le/a/i/c/a/r;

    invoke-direct {v0, p0}, Le/a/i/c/a/r;-><init>(Le/a/i/c/a/s;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-object v0
.end method
