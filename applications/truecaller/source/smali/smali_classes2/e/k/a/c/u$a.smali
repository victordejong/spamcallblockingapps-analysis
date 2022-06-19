.class public final Le/k/a/c/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/k/a/c/g0/i;

.field public final b:Z


# direct methods
.method public constructor <init>(Le/k/a/c/g0/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/u$a;->a:Le/k/a/c/g0/i;

    .line 3
    iput-boolean p2, p0, Le/k/a/c/u$a;->b:Z

    return-void
.end method
