.class public Lorg/joda/time/b0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lorg/joda/time/b0/o;


# direct methods
.method public static a()Lorg/joda/time/b0/o;
    .locals 3

    .line 1
    sget-object v0, Lorg/joda/time/b0/k;->a:Lorg/joda/time/b0/o;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/b0/p;

    invoke-direct {v0}, Lorg/joda/time/b0/p;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lorg/joda/time/b0/p;->f(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->o()Lorg/joda/time/b0/p;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->h()Lorg/joda/time/b0/p;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->n()Lorg/joda/time/b0/p;

    const-string v2, "W"

    invoke-virtual {v0, v2}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->b()Lorg/joda/time/b0/p;

    const-string v2, "D"

    invoke-virtual {v0, v2}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    const-string v2, "T"

    invoke-virtual {v0, v2}, Lorg/joda/time/b0/p;->k(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->e()Lorg/joda/time/b0/p;

    const-string v2, "H"

    invoke-virtual {v0, v2}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->g()Lorg/joda/time/b0/p;

    invoke-virtual {v0, v1}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->i()Lorg/joda/time/b0/p;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lorg/joda/time/b0/p;->l(Ljava/lang/String;)Lorg/joda/time/b0/p;

    invoke-virtual {v0}, Lorg/joda/time/b0/p;->s()Lorg/joda/time/b0/o;

    move-result-object v0

    sput-object v0, Lorg/joda/time/b0/k;->a:Lorg/joda/time/b0/o;

    .line 3
    :cond_0
    sget-object v0, Lorg/joda/time/b0/k;->a:Lorg/joda/time/b0/o;

    return-object v0
.end method
