.class public abstract Lp3/a/q1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lp3/a/q1/c<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/d;

.field public final b:Lp3/a/c;


# direct methods
.method public constructor <init>(Lp3/a/d;Lp3/a/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/d;

    iput-object p1, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    const-string p1, "callOptions"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lp3/a/c;

    iput-object p2, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    return-void
.end method


# virtual methods
.method public abstract a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/d;",
            "Lp3/a/c;",
            ")TS;"
        }
    .end annotation
.end method

.method public final varargs b([Lp3/a/g;)Lp3/a/q1/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lp3/a/g;",
            ")TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/q1/c;->a:Lp3/a/d;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lp3/a/i;->a(Lp3/a/d;Ljava/util/List;)Lp3/a/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lp3/a/q1/c;->b:Lp3/a/c;

    invoke-virtual {p0, p1, v0}, Lp3/a/q1/c;->a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;

    move-result-object p1

    return-object p1
.end method
