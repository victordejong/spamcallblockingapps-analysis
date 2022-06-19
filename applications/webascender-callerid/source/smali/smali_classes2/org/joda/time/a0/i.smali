.class public abstract Lorg/joda/time/a0/i;
.super Lorg/joda/time/a0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/a0/i$a;
    }
.end annotation


# instance fields
.field final b:J

.field private final c:Lorg/joda/time/h;


# direct methods
.method public constructor <init>(Lorg/joda/time/d;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/a0/b;-><init>(Lorg/joda/time/d;)V

    .line 2
    iput-wide p2, p0, Lorg/joda/time/a0/i;->b:J

    .line 3
    new-instance p2, Lorg/joda/time/a0/i$a;

    invoke-virtual {p1}, Lorg/joda/time/d;->E()Lorg/joda/time/i;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lorg/joda/time/a0/i$a;-><init>(Lorg/joda/time/a0/i;Lorg/joda/time/i;)V

    iput-object p2, p0, Lorg/joda/time/a0/i;->c:Lorg/joda/time/h;

    return-void
.end method


# virtual methods
.method public j(JJ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/a0/b;->k(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/joda/time/a0/h;->h(J)I

    move-result p1

    return p1
.end method

.method public final l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/i;->c:Lorg/joda/time/h;

    return-object v0
.end method
