.class public abstract Lp3/b/c/m;
.super Lp3/b/c/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/b/c/m$a;,
        Lp3/b/c/m$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/b/c/g;-><init>()V

    return-void
.end method

.method public static a(Lp3/b/c/m$b;J)Lp3/b/c/m$a;
    .locals 2

    .line 1
    new-instance v0, Lp3/b/c/d$b;

    invoke-direct {v0}, Lp3/b/c/d$b;-><init>()V

    const-string v1, "type"

    .line 2
    invoke-static {p0, v1}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p0, v0, Lp3/b/c/d$b;->a:Lp3/b/c/m$b;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lp3/b/c/d$b;->b:Ljava/lang/Long;

    const-wide/16 p0, 0x0

    .line 5
    invoke-virtual {v0, p0, p1}, Lp3/b/c/d$b;->b(J)Lp3/b/c/m$a;

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lp3/b/c/d$b;->d:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()J
.end method

.method public abstract d()Lp3/b/c/m$b;
.end method

.method public abstract e()J
.end method
