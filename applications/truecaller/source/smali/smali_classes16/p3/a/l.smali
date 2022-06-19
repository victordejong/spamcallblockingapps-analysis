.class public final Lp3/a/l;
.super Lp3/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/l$a;,
        Lp3/a/l$b;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/b;

.field public final b:Lp3/a/b;


# direct methods
.method public constructor <init>(Lp3/a/b;Lp3/a/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/b;-><init>()V

    const-string v0, "creds1"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/l;->a:Lp3/a/b;

    const-string p1, "creds2"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/l;->b:Lp3/a/b;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lp3/a/l;->a:Lp3/a/b;

    new-instance v7, Lp3/a/l$b;

    .line 2
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object v6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lp3/a/l$b;-><init>(Lp3/a/l;Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;Lp3/a/q;)V

    .line 3
    invoke-virtual {v0, p1, p2, v7}, Lp3/a/b;->a(Lp3/a/b$b;Ljava/util/concurrent/Executor;Lp3/a/b$a;)V

    return-void
.end method
