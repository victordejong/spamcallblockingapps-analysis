.class Lorg/joda/time/y/n$c;
.super Lorg/joda/time/a0/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/y/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final h:Lorg/joda/time/y/n$b;


# direct methods
.method constructor <init>(Lorg/joda/time/h;Lorg/joda/time/y/n$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/h;->k()Lorg/joda/time/i;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/a0/e;-><init>(Lorg/joda/time/h;Lorg/joda/time/i;)V

    .line 2
    iput-object p2, p0, Lorg/joda/time/y/n$c;->h:Lorg/joda/time/y/n$b;

    return-void
.end method


# virtual methods
.method public c(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$c;->h:Lorg/joda/time/y/n$b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/y/n$b;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$c;->h:Lorg/joda/time/y/n$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/y/n$b;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public h(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$c;->h:Lorg/joda/time/y/n$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/y/n$b;->j(JJ)I

    move-result p1

    return p1
.end method

.method public j(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$c;->h:Lorg/joda/time/y/n$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/y/n$b;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method
