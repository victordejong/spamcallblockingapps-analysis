.class public Le/f/a/n/p/y/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/o<",
        "Le/f/a/n/p/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/m<",
            "Le/f/a/n/p/g;",
            "Le/f/a/n/p/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/p/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Le/f/a/n/p/m;-><init>(J)V

    iput-object v0, p0, Le/f/a/n/p/y/a$a;->a:Le/f/a/n/p/m;

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
            "Le/f/a/n/p/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Le/f/a/n/p/y/a;

    iget-object v0, p0, Le/f/a/n/p/y/a$a;->a:Le/f/a/n/p/m;

    invoke-direct {p1, v0}, Le/f/a/n/p/y/a;-><init>(Le/f/a/n/p/m;)V

    return-object p1
.end method
