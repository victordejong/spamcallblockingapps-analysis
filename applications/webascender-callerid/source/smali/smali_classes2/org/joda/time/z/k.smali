.class Lorg/joda/time/z/k;
.super Lorg/joda/time/z/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/z/c;
.implements Lorg/joda/time/z/i;


# static fields
.field static final a:Lorg/joda/time/z/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/z/k;

    invoke-direct {v0}, Lorg/joda/time/z/k;-><init>()V

    sput-object v0, Lorg/joda/time/z/k;->a:Lorg/joda/time/z/k;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/z/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    check-cast p1, Lorg/joda/time/r;

    invoke-interface {p1}, Lorg/joda/time/r;->f()Lorg/joda/time/a;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/joda/time/e;->c(Lorg/joda/time/a;)Lorg/joda/time/a;

    move-result-object p2

    :cond_0
    return-object p2
.end method

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
    const-class v0, Lorg/joda/time/r;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Lorg/joda/time/a;)J
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/r;

    invoke-interface {p1}, Lorg/joda/time/r;->e()J

    move-result-wide p1

    return-wide p1
.end method
