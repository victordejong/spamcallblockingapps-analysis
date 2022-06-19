.class final Lorg/joda/time/a0/i$a;
.super Lorg/joda/time/a0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/a0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic g:Lorg/joda/time/a0/i;


# direct methods
.method constructor <init>(Lorg/joda/time/a0/i;Lorg/joda/time/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/a0/i$a;->g:Lorg/joda/time/a0/i;

    .line 2
    invoke-direct {p0, p2}, Lorg/joda/time/a0/c;-><init>(Lorg/joda/time/i;)V

    return-void
.end method


# virtual methods
.method public c(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/i$a;->g:Lorg/joda/time/a0/i;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/a0/b;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/i$a;->g:Lorg/joda/time/a0/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a0/b;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public h(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/i$a;->g:Lorg/joda/time/a0/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a0/i;->j(JJ)I

    move-result p1

    return p1
.end method

.method public j(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/i$a;->g:Lorg/joda/time/a0/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a0/b;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/i$a;->g:Lorg/joda/time/a0/i;

    iget-wide v0, v0, Lorg/joda/time/a0/i;->b:J

    return-wide v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
