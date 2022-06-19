.class public Le/q/e/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/q/e/b/g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public b:Le/q/e/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/q/e/b/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/q/e/b/c;

    invoke-direct {v0}, Le/q/e/b/c;-><init>()V

    iput-object v0, p0, Le/q/e/b/g;->b:Le/q/e/b/c;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/e/b/g<",
            "TT;>;J)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Le/q/e/b/c;

    invoke-direct {v0}, Le/q/e/b/c;-><init>()V

    iput-object v0, p0, Le/q/e/b/g;->b:Le/q/e/b/c;

    .line 5
    iput-wide p1, p0, Le/q/e/b/g;->c:J

    return-void
.end method
