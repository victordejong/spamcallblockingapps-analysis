.class public Le/k/a/c/d0/y/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/r;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/s;->a:Le/k/a/c/j;

    return-void
.end method


# virtual methods
.method public c(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/y/s;->a:Le/k/a/c/j;

    invoke-virtual {v0, p1}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
