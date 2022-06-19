.class public Le/a/k0/n/b/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k0/n/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/k0/n/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/k0/n/b/i;->h:Le/a/k0/n/b/i;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/a/k0/n/b/i;

    invoke-direct {v0, p1}, Le/a/k0/n/b/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Le/a/k0/n/b/i;->h:Le/a/k0/n/b/i;

    .line 4
    :cond_0
    sget-object p1, Le/a/k0/n/b/i;->h:Le/a/k0/n/b/i;

    .line 5
    iput-object p1, p0, Le/a/k0/n/b/i$b;->a:Le/a/k0/n/b/i;

    return-void
.end method
