.class final Lg/f/a/b/i/x/j/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/b/i/x/j/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/f/a/b/i/x/j/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f/a/b/i/x/j/f;

    invoke-direct {v0}, Lg/f/a/b/i/x/j/f;-><init>()V

    sput-object v0, Lg/f/a/b/i/x/j/f$a;->a:Lg/f/a/b/i/x/j/f;

    return-void
.end method

.method static synthetic a()Lg/f/a/b/i/x/j/f;
    .locals 1

    .line 1
    sget-object v0, Lg/f/a/b/i/x/j/f$a;->a:Lg/f/a/b/i/x/j/f;

    return-object v0
.end method
