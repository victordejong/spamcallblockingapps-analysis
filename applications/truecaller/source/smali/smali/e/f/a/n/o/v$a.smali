.class public Le/f/a/n/o/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/t/k/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/t/k/a$b<",
        "Le/f/a/n/o/v<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/o/v;

    invoke-direct {v0}, Le/f/a/n/o/v;-><init>()V

    return-object v0
.end method
