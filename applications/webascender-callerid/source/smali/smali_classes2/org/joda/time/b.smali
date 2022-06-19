.class public final Lorg/joda/time/b;
.super Lorg/joda/time/x/d;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/p;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/x/d;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIILorg/joda/time/a;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/x/d;-><init>(IIIIIIILorg/joda/time/a;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/joda/time/x/d;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/x/d;-><init>(JLorg/joda/time/a;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/x/d;-><init>(JLorg/joda/time/f;)V

    return-void
.end method

.method public static y()Lorg/joda/time/b;
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/b;

    invoke-direct {v0}, Lorg/joda/time/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public B(Lorg/joda/time/a;)Lorg/joda/time/b;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/joda/time/b;

    invoke-virtual {p0}, Lorg/joda/time/x/d;->e()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/b;-><init>(JLorg/joda/time/a;)V

    :goto_0
    return-object v0
.end method

.method public D(Lorg/joda/time/f;)Lorg/joda/time/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/b;->B(Lorg/joda/time/a;)Lorg/joda/time/b;

    move-result-object p1

    return-object p1
.end method

.method public l()Lorg/joda/time/b;
    .locals 0

    return-object p0
.end method

.method public w()Lorg/joda/time/b$a;
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/b$a;

    invoke-virtual {p0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->e()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/b$a;-><init>(Lorg/joda/time/b;Lorg/joda/time/c;)V

    return-object v0
.end method

.method public x()Lorg/joda/time/b$a;
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/b$a;

    invoke-virtual {p0}, Lorg/joda/time/x/d;->f()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->A()Lorg/joda/time/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/b$a;-><init>(Lorg/joda/time/b;Lorg/joda/time/c;)V

    return-object v0
.end method
