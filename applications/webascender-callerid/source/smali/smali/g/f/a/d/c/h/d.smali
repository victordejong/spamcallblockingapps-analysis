.class public final Lg/f/a/d/c/h/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lg/f/a/d/c/h/a;

.field private static volatile b:Lg/f/a/d/c/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/f/a/d/c/h/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/f/a/d/c/h/c;-><init>(Lg/f/a/d/c/h/b;)V

    sput-object v0, Lg/f/a/d/c/h/d;->a:Lg/f/a/d/c/h/a;

    sput-object v0, Lg/f/a/d/c/h/d;->b:Lg/f/a/d/c/h/a;

    return-void
.end method

.method public static a()Lg/f/a/d/c/h/a;
    .locals 1

    sget-object v0, Lg/f/a/d/c/h/d;->b:Lg/f/a/d/c/h/a;

    return-object v0
.end method
