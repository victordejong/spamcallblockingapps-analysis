.class final Lg/g/b/a/g/a/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/g/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/g/b/a/g/a/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/i/b;

    invoke-direct {v0}, Lg/g/b/a/g/a/i/b;-><init>()V

    sput-object v0, Lg/g/b/a/g/a/i/b$a;->a:Lg/g/b/a/g/a/i/b;

    return-void
.end method

.method static synthetic a()Lg/g/b/a/g/a/i/b;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/a/g/a/i/b$a;->a:Lg/g/b/a/g/a/i/b;

    return-object v0
.end method
