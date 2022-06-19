.class public abstract Lw3/b/a/e0/f;
.super Lw3/b/a/e0/b;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/y;
.implements Ljava/io/Serializable;


# instance fields
.field public volatile a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/e0/b;-><init>()V

    .line 2
    iput-wide p1, p0, Lw3/b/a/e0/f;->a:J

    return-void
.end method


# virtual methods
.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/e0/f;->a:J

    return-wide v0
.end method
