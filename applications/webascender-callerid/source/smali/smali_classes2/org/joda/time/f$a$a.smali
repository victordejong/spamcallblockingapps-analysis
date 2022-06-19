.class Lorg/joda/time/f$a$a;
.super Lorg/joda/time/y/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/joda/time/f$a;->a()Lorg/joda/time/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/y/b;-><init>()V

    return-void
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 0

    return-object p0
.end method

.method public N(Lorg/joda/time/f;)Lorg/joda/time/a;
    .locals 0

    return-object p0
.end method

.method public o()Lorg/joda/time/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lorg/joda/time/f$a$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
