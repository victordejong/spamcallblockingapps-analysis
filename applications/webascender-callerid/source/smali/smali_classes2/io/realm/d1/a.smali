.class public Lio/realm/d1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/d1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/d1/a$d;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Li/c/a;->LATEST:Li/c/a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lio/realm/d1/a$a;

    invoke-direct {p1, p0}, Lio/realm/d1/a$a;-><init>(Lio/realm/d1/a;)V

    .line 3
    new-instance p1, Lio/realm/d1/a$b;

    invoke-direct {p1, p0}, Lio/realm/d1/a$b;-><init>(Lio/realm/d1/a;)V

    .line 4
    new-instance p1, Lio/realm/d1/a$c;

    invoke-direct {p1, p0}, Lio/realm/d1/a$c;-><init>(Lio/realm/d1/a;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lio/realm/d1/a;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method
