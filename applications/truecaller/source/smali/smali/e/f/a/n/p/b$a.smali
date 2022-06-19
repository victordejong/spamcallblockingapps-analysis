.class public Le/f/a/n/p/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "[B",
        "Ljava/nio/ByteBuffer;",
        ">;"
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
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Le/f/a/n/p/r;)Le/f/a/n/p/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Le/f/a/n/p/b;

    new-instance v0, Le/f/a/n/p/b$a$a;

    invoke-direct {v0, p0}, Le/f/a/n/p/b$a$a;-><init>(Le/f/a/n/p/b$a;)V

    invoke-direct {p1, v0}, Le/f/a/n/p/b;-><init>(Le/f/a/n/p/b$b;)V

    return-object p1
.end method
