.class public Le/f/a/n/p/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/r;",
            ")",
            "Le/f/a/n/p/n<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/a/n/p/u;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Le/f/a/n/p/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Le/f/a/n/p/n;

    move-result-object p1

    invoke-direct {v0, p1}, Le/f/a/n/p/u;-><init>(Le/f/a/n/p/n;)V

    return-object v0
.end method
