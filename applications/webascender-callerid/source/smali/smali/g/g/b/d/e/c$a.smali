.class final Lg/g/b/d/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/d/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/g/b/d/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/e/c;

    invoke-direct {v0}, Lg/g/b/d/e/c;-><init>()V

    sput-object v0, Lg/g/b/d/e/c$a;->a:Lg/g/b/d/e/c;

    return-void
.end method

.method static synthetic a()Lg/g/b/d/e/c;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/d/e/c$a;->a:Lg/g/b/d/e/c;

    return-object v0
.end method
