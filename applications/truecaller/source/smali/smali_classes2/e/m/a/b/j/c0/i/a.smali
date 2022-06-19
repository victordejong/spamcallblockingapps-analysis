.class public final synthetic Le/m/a/b/j/c0/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# static fields
.field public static final synthetic a:Le/m/a/b/j/c0/i/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/b/j/c0/i/a;

    invoke-direct {v0}, Le/m/a/b/j/c0/i/a;-><init>()V

    sput-object v0, Le/m/a/b/j/c0/i/a;->a:Le/m/a/b/j/c0/i/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    sget-object v0, Le/m/a/b/j/c0/i/h0;->f:Le/m/a/b/b;

    .line 2
    new-instance v0, Le/m/a/b/j/d0/a;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p1}, Le/m/a/b/j/d0/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
