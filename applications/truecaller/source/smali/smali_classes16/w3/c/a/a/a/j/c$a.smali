.class public final Lw3/c/a/a/a/j/c$a;
.super Lw3/c/a/a/a/j/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/c/a/a/a/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/c/a/a/a/j/c;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lw3/c/a/a/a/j/c;->q:Lw3/c/a/a/a/j/c;

    return-object v0
.end method
