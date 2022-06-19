.class Lorg/joda/time/z/g;
.super Lorg/joda/time/z/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/z/c;
.implements Lorg/joda/time/z/i;


# static fields
.field static final a:Lorg/joda/time/z/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/z/g;

    invoke-direct {v0}, Lorg/joda/time/z/g;-><init>()V

    sput-object v0, Lorg/joda/time/z/g;->a:Lorg/joda/time/z/g;

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
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public d(Ljava/lang/Object;Lorg/joda/time/a;)J
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
