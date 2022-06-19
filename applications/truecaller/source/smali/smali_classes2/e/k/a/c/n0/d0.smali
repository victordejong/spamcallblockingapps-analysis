.class public Le/k/a/c/n0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/n0/d0$a;,
        Le/k/a/c/n0/d0$b;
    }
.end annotation


# static fields
.field public static final a:Le/k/a/c/n0/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/n0/d0;

    invoke-direct {v0}, Le/k/a/c/n0/d0;-><init>()V

    sput-object v0, Le/k/a/c/n0/d0;->a:Le/k/a/c/n0/d0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
