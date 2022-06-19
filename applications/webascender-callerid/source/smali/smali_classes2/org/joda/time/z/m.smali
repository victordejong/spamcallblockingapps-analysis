.class Lorg/joda/time/z/m;
.super Lorg/joda/time/z/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/z/i;


# static fields
.field static final a:Lorg/joda/time/z/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/z/m;

    invoke-direct {v0}, Lorg/joda/time/z/m;-><init>()V

    sput-object v0, Lorg/joda/time/z/m;->a:Lorg/joda/time/z/m;

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
    check-cast p1, Lorg/joda/time/t;

    invoke-interface {p1}, Lorg/joda/time/t;->f()Lorg/joda/time/a;

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
    const-class v0, Lorg/joda/time/t;

    return-object v0
.end method

.method public e(Lorg/joda/time/t;Ljava/lang/Object;Lorg/joda/time/a;)[I
    .locals 4

    .line 1
    check-cast p2, Lorg/joda/time/t;

    .line 2
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v0

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-interface {p1, v2}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3, p1, v1}, Lorg/joda/time/a;->G(Lorg/joda/time/t;[I)V

    return-object v1
.end method
