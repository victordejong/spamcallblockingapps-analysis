.class public Le/m/a/c/n1/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/n1/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/n1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Le/m/a/c/q1/f;->a:Le/m/a/c/q1/f;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/m/a/c/n1/a$d;->a:Le/m/a/c/q1/f;

    return-void
.end method
