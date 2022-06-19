.class final Lg/f/a/b/i/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/b/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/f/a/b/i/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f/a/b/i/j;

    invoke-direct {v0}, Lg/f/a/b/i/j;-><init>()V

    sput-object v0, Lg/f/a/b/i/j$a;->a:Lg/f/a/b/i/j;

    return-void
.end method

.method static synthetic a()Lg/f/a/b/i/j;
    .locals 1

    .line 1
    sget-object v0, Lg/f/a/b/i/j$a;->a:Lg/f/a/b/i/j;

    return-object v0
.end method
