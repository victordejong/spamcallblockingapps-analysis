.class public Le/a/b0/i/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/b0/i/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/i/d$a;

    invoke-direct {v0}, Le/a/b0/i/d$a;-><init>()V

    sput-object v0, Le/a/b0/i/d$a;->a:Le/a/b0/i/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
