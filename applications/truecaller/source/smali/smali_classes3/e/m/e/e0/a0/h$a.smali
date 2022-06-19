.class public Le/m/e/e0/a0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/h;
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
    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Le/m/e/e0/a0/h;

    invoke-direct {p2, p1}, Le/m/e/e0/a0/h;-><init>(Le/m/e/k;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
