.class public final Lg/f/a/d/c/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lg/f/a/d/c/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/a/d/c/e/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/f/a/d/c/e/f;-><init>(Lg/f/a/d/c/e/g;)V

    .line 2
    sput-object v0, Lg/f/a/d/c/e/d;->a:Lg/f/a/d/c/e/e;

    return-void
.end method

.method public static a()Lg/f/a/d/c/e/e;
    .locals 1

    .line 1
    sget-object v0, Lg/f/a/d/c/e/d;->a:Lg/f/a/d/c/e/e;

    return-object v0
.end method
