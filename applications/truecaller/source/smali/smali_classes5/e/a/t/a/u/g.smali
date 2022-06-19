.class public final Le/a/t/a/u/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/a/t/a/u/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/u/j;


# direct methods
.method public constructor <init>(Le/a/t/a/u/j;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/u/g;->a:Le/a/t/a/u/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/u/g;->a:Le/a/t/a/u/j;

    invoke-interface {v0}, Le/a/t/a/u/j;->a()Le/a/t/a/u/f;

    move-result-object v0

    return-object v0
.end method
