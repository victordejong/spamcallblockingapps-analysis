.class public Le/a/r2/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/f0$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/r2/f0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r2/f0;->a:Le/a/r2/w;

    new-instance v1, Le/a/r2/f0$a;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    invoke-direct {v1, v2, p1}, Le/a/r2/f0$a;-><init>(Le/a/r2/e;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
