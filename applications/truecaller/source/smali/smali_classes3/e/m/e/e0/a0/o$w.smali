.class public Le/m/e/e0/a0/o$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class p1, Ljava/lang/Enum;

    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 5
    :cond_1
    new-instance p1, Le/m/e/e0/a0/o$e0;

    invoke-direct {p1, p2}, Le/m/e/e0/a0/o$e0;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
