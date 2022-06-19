.class public Le/q/f/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/q/f/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Le/q/f/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/q/f/a/a;

    sget-object v1, Le/q/f/b/a;->a:Le/q/f/a/f/e;

    invoke-direct {v0, v1}, Le/q/f/a/a;-><init>(Le/q/f/a/f/e;)V

    sput-object v0, Le/q/f/b/a$a;->a:Le/q/f/a/a;

    return-void
.end method
