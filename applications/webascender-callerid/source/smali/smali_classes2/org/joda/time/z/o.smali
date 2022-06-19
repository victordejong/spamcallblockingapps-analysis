.class Lorg/joda/time/z/o;
.super Lorg/joda/time/z/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/z/c;
.implements Lorg/joda/time/z/i;


# static fields
.field static final a:Lorg/joda/time/z/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/z/o;

    invoke-direct {v0}, Lorg/joda/time/z/o;-><init>()V

    sput-object v0, Lorg/joda/time/z/o;->a:Lorg/joda/time/z/o;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/z/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(Lorg/joda/time/t;Ljava/lang/Object;Lorg/joda/time/a;Lorg/joda/time/b0/b;)[I
    .locals 2

    .line 1
    invoke-virtual {p4}, Lorg/joda/time/b0/b;->d()Lorg/joda/time/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Lorg/joda/time/b0/b;->d()Lorg/joda/time/f;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/joda/time/a;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object p3

    .line 3
    :cond_0
    invoke-virtual {p4, p3}, Lorg/joda/time/b0/b;->q(Lorg/joda/time/a;)Lorg/joda/time/b0/b;

    move-result-object p4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, p2}, Lorg/joda/time/b0/b;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p3, p1, v0, v1}, Lorg/joda/time/a;->k(Lorg/joda/time/t;J)[I

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Lorg/joda/time/a;)J
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lorg/joda/time/b0/j;->c()Lorg/joda/time/b0/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lorg/joda/time/b0/b;->q(Lorg/joda/time/a;)Lorg/joda/time/b0/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/b0/b;->f(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
