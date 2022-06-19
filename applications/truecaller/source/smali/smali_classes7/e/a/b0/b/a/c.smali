.class public final Le/a/b0/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu3/c0;

.field public static final b:Lu3/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lu3/c0;->f:Lu3/c0$a;

    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    sput-object v0, Le/a/b0/b/a/c;->a:Lu3/c0;

    const-string v0, "image/jpeg"

    .line 2
    invoke-static {v0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object v0

    sput-object v0, Le/a/b0/b/a/c;->b:Lu3/c0;

    return-void
.end method
