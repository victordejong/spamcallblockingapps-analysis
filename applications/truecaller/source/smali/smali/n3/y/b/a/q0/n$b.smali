.class public final Ln3/y/b/a/q0/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ln3/y/b/a/q0/n$a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ln3/y/b/a/q0/n$b;->a:J

    .line 3
    new-instance p1, Ln3/y/b/a/q0/n$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Ln3/y/b/a/q0/o;->c:Ln3/y/b/a/q0/o;

    goto :goto_0

    :cond_0
    new-instance p2, Ln3/y/b/a/q0/o;

    invoke-direct {p2, v0, v1, p3, p4}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;)V

    iput-object p1, p0, Ln3/y/b/a/q0/n$b;->b:Ln3/y/b/a/q0/n$a;

    return-void
.end method


# virtual methods
.method public b(J)Ln3/y/b/a/q0/n$a;
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/q0/n$b;->b:Ln3/y/b/a/q0/n$a;

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/n$b;->a:J

    return-wide v0
.end method
