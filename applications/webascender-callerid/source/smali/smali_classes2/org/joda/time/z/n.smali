.class Lorg/joda/time/z/n;
.super Lorg/joda/time/z/a;
.source "SourceFile"

# interfaces
.implements Lorg/joda/time/z/c;


# static fields
.field static final a:Lorg/joda/time/z/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/z/n;

    invoke-direct {v0}, Lorg/joda/time/z/n;-><init>()V

    sput-object v0, Lorg/joda/time/z/n;->a:Lorg/joda/time/z/n;

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
    const-class v0, Lorg/joda/time/u;

    return-object v0
.end method
